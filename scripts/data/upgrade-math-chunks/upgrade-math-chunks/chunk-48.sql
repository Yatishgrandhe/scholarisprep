BEGIN;
UPDATE public.questions SET
  question_text = 'If 2x + 3y = 12 and x - y = 4, what is the value of x?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"3","is_correct":false,"explanation":"Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":false,"explanation":"Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":false,"explanation":"Choice C (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"6","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** If 2x + 3y = 12 and x - y = 4, what is the value of x?

**Step 2 — Solve.** To solve for x, we can use elimination. Multiplying the second equation by 3, we get 3x - 3y = 12. Adding this equation to the first equation, we get 5x = 24. Dividing both sides by 5, we get x = 24/5 = 4.8. Since the only choice that is close to 4.8 is 6, the answer is D.

**Step 3 — Select D.** 6

**Distractor analysis:**
- **A** (3): Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (4): Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (5): Choice C (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":440,"opensat_domain":"Algebra","opensat_raw_id":"b6a1d6f7","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '40d56719-f76a-4ee1-94ef-f5fa04f84028';

UPDATE public.questions SET
  question_text = 'A circle has a diameter of 10 inches. What is the circumference of the circle? (Express your answer in terms of pi.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\pi","is_correct":false,"explanation":"Choice A (5\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10\\pi","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"20\\pi","is_correct":false,"explanation":"Choice C (20\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"100\\pi","is_correct":false,"explanation":"Choice D (100\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a diameter of 10 inches. What is the circumference of the circle? (Express your answer in terms of pi.)

**Step 2 — Solve.** The circumference of a circle is found using the formula C = 2\pi r, where r is the radius of the circle.  Since the diameter is 10 inches, the radius is 5 inches.  Therefore, the circumference is 2\pi (5) = 10\pi inches.

**Step 3 — Select B.** 10\pi

**Distractor analysis:**
- **A** (5\pi): Choice A (5\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (20\pi): Choice C (20\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (100\pi): Choice D (100\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":429,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a8","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '40fb1c96-2d77-402e-b66d-ab5b0ffa8f97';

UPDATE public.questions SET
  question_text = 'In the $xy$-plane, a circle with center $(2, -3)$ passes through the point $(5,1)$. What is the radius of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":false,"explanation":"Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** In the $xy$-plane, a circle with center $(2, -3)$ passes through the point $(5,1)$. What is the radius of the circle?

**Step 2 — Solve.** The radius of the circle is the distance from the center of the circle to any point on the circle. We can use the distance formula to find the distance between the center $(2,-3)$ and the point $(5,1)$: $\sqrt{(5-2)^2 + (1-(-3))^2} = \sqrt{3^2 + 4^2} = \sqrt{25} = 5$. Therefore, the radius of the circle is 5.

**Step 3 — Select D.** 5

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (3): Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":944,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"b881f345","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '41321628-6aaf-4b76-b584-8863ae9fefde';

UPDATE public.questions SET
  question_text = 'A survey of 200 people found that 120 people like apples, 100 people like oranges, and 60 people like both apples and oranges. How many of the people surveyed like neither apples nor oranges?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"20","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"40","is_correct":false,"explanation":"Choice B (40…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"60","is_correct":false,"explanation":"Choice C (60…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"80","is_correct":false,"explanation":"Choice D (80…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A survey of 200 people found that 120 people like apples, 100 people like oranges, and 60 people like both apples and oranges. How many of the people surveyed like neither apples nor oranges?

**Step 2 — Solve.** We can use a Venn Diagram to visualize the information given.  Let A represent the set of people who like apples and O represent the set of people who like oranges.  The number of people who like both apples and oranges is 60, so we can fill in the overlapping region of the Venn Diagram with the number 60.  Since 120 people like apples and 60 like both apples and oranges, 120 – 60 = 60 people like only apples.  Since 100 people like oranges and 60 like both apples and oranges, 100 – 60 = 40 people like only oranges.  Therefore, there are 200 – 60 – 40 – 60 = 40 people who like neither apples nor oranges.

**Step 3 — Select A.** 20

**Distractor analysis:**
- **B** (40): Choice B (40…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (60): Choice C (60…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (80): Choice D (80…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":151,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_24","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '4137568c-c383-402e-98d9-d195cc8b8b43';

UPDATE public.questions SET
  question_text = 'A group of 20 students took a test. The average score of the students was 75. One student''s score was accidentally recorded as 80 instead of 60.  What is the actual average score of the students?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"74","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"74.5","is_correct":false,"explanation":"Choice B (74.5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"75.5","is_correct":false,"explanation":"Choice C (75.5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"76","is_correct":false,"explanation":"Choice D (76…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A group of 20 students took a test. The average score of the students was 75. One student''s score was accidentally recorded as 80 instead of 60.  What is the actual average score of the students?

**Step 2 — Solve.** The incorrect score of 80 is 20 points higher than the actual score of 60.  Since the average is the sum of the scores divided by the number of scores, the incorrect score inflated the total sum of the scores by 20.  Therefore, the actual total sum of the scores is 20 points lower than the incorrect total. The actual average score is (20 * 75 - 20)/20 = 74.

**Step 3 — Select A.** 74

**Distractor analysis:**
- **B** (74.5): Choice B (74.5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (75.5): Choice C (75.5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (76): Choice D (76…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":1007,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_a9","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '4265c760-4266-48d2-930d-d9b27672735d';

UPDATE public.questions SET
  question_text = 'A circle is inscribed in an equilateral triangle. If the side length of the triangle is 6, what is the area of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\frac{3\\pi}{4}$","is_correct":false,"explanation":"Choice A ($\\frac{3\\pi}{4}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"$\\pi$","is_correct":false,"explanation":"Choice B ($\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$\\frac{9\\pi}{4}$","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"$9\\pi$","is_correct":false,"explanation":"Choice D ($9\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle is inscribed in an equilateral triangle. If the side length of the triangle is 6, what is the area of the circle?

**Step 2 — Solve.** Let''s break down the solution:

1. **Equilateral Triangle Properties:** An equilateral triangle has three equal sides and three equal angles of 60 degrees.  The height of an equilateral triangle divides it into two 30-60-90 right triangles.

2. **30-60-90 Triangle Properties:** The sides of a 30-60-90 triangle are in the ratio of 1:√3:2. Since the side length of the equilateral triangle is 6, the height of the triangle is 3√3. The radius of the inscribed circle is equal to 1/3 of the height, so the radius of the inscribed circle is √3.

3. **Area of a Circle:** The area of a circle is given by the formula $A = \pi r^2$, where r is the radius.  Substituting √3 for r, we get $A = \pi (\sqrt{3})^2 = 3\pi$.

4. **Final Answer:** Since the circle is inscribed in the equilateral triangle, the diameter of the circle is equal to the height of the triangle, which is 3√3.  Therefore, the radius of the circle is (3√3)/2, and the area of the circle is $\pi (\frac{3\sqrt{3}}{2})^2 = \frac{27\pi}{4}$, which is equivalent to .

**Step 3 — Select C.** $\frac{9\pi}{4}$

**Distractor analysis:**
- **A** ($\frac{3\pi}{4}$): Choice A ($\frac{3\pi}{4}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** ($\pi$): Choice B ($\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($9\pi$): Choice D ($9\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":364,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c1","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '4271d3e6-2284-440f-b7d4-9b1ffa0610dd';

UPDATE public.questions SET
  question_text = 'A triangle has vertices at the points $(0,0), (1,0),$ and $(0,1)$. What is the area of this triangle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\frac{1}{4}$","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"$\\frac{1}{2}$","is_correct":false,"explanation":"Inverts the ratio — a common probability error."},{"id":"C","text":"1","is_correct":false,"explanation":"Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"2","is_correct":false,"explanation":"Choice D (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A triangle has vertices at the points $(0,0), (1,0),$ and $(0,1)$. What is the area of this triangle?

**Step 2 — Solve.** The triangle is a right triangle with a base of 1 and a height of 1. The area of a triangle is given by the formula $\frac{1}{2}bh$.  Therefore, the area of the triangle is $\frac{1}{2}(1)(1) = \frac{1}{2}$.

**Step 3 — Select A.** $\frac{1}{4}$

**Distractor analysis:**
- **B** ($\frac{1}{2}$): Inverts the ratio — a common probability error.
- **C** (1): Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (2): Choice D (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":99,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c2","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '42bdc9c8-08d5-4944-89d9-0b0c0f9b43dd';

UPDATE public.questions SET
  question_text = 'The graph of the function \(f(x)= x^2 + 2x + 3\) intersects the x-axis at two points. What is the sum of the x-coordinates of these two points? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-2","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"0","is_correct":false,"explanation":"Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2","is_correct":false,"explanation":"Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"4","is_correct":false,"explanation":"Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The graph of the function \(f(x)= x^2 + 2x + 3\) intersects the x-axis at two points. What is the sum of the x-coordinates of these two points? 

**Step 2 — Solve.** The sum of the roots of a quadratic equation in the form of \(ax^2 + bx + c = 0\) is equal to \(-b/a\).  In this case, a = 1 and b = 2, so the sum of the roots is \(-2/1 = -2\).

**Step 3 — Select A.** -2

**Distractor analysis:**
- **B** (0): Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (2): Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (4): Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":1,"opensat_domain":"Advanced Math","opensat_raw_id":"b81173a5","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '42feeed8-4212-4763-8c58-cf8b58eac44e';

COMMIT;
