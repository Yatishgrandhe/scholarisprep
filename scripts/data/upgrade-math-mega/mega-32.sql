BEGIN;
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

UPDATE public.questions SET
  question_text = 'Which choice best evaluates the claim?',
  stimulus_text = 'A influencer claims "nobody likes the new app" after asking 195 followers who commented on one critical post.',
  options = '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"**Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because 40 responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '433bbb99-67a4-4127-b2db-40c6883d8332';
UPDATE public.questions SET
  question_text = 'The function $f(x)$ is defined by $f(x) = x^2 + 3x - 4$.  What is the value of $f(-2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-6","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"-2","is_correct":false,"explanation":"Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2","is_correct":false,"explanation":"Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The function $f(x)$ is defined by $f(x) = x^2 + 3x - 4$.  What is the value of $f(-2)$?

**Step 2 — Solve.** Substitute -2 for x in the function: $f(-2) = (-2)^2 + 3(-2) - 4 = 4 - 6 - 4 = -6$.

**Step 3 — Select A.** -6

**Distractor analysis:**
- **B** (-2): Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (2): Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":262,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a3","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '43460d73-501d-4659-bbbd-8ce568386fa8';
UPDATE public.questions SET
  question_text = 'Which value of $x$ satisfies $7x + 6 > 262$ and represents a feasible weight?',
  stimulus_text = 'A package must weigh more than 262 grams but at most 275 grams to ship.',
  options = '[{"id":"A","text":"$34$","is_correct":false,"explanation":"Too small: $7(34)+6=244$."},{"id":"B","text":"$35$","is_correct":false,"explanation":"Still below threshold 262."},{"id":"C","text":"$36$","is_correct":false,"explanation":"Borderline; check strict inequality."},{"id":"D","text":"$37$","is_correct":true,"explanation":"**Step 1:** $7x > 256$. **Step 2:** $x > 36.57142857142857$. Smallest integer choice: 37."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Isolate: $7x > 256$.
**Step 2:** $x > 36.57$.
**Step 3:** Among choices, $37$ is the smallest valid value.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '4346adba-c875-4586-b657-cd5a8628c40c';
UPDATE public.questions SET
  question_text = 'If $f(x) = x^2 - 3x + 2$, what is the value of $f(2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"0","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** If $f(x) = x^2 - 3x + 2$, what is the value of $f(2)$?

**Step 2 — Solve.** To find the value of $f(2)$, we substitute $2$ for $x$ in the equation. This gives us $f(2) = 2^2 - 3(2) + 2 = 4 - 6 + 2 = 0$.

**Step 3 — Select A.** 0

**Distractor analysis:**
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":438,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '4378de35-43f6-4b65-873a-07207e1416d2';
UPDATE public.questions SET
  question_text = 'A survey of 100 people found that 60 people like apples, 40 people like oranges, and 20 people like both apples and oranges. How many people like only apples?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"20","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"40","is_correct":false,"explanation":"Choice B (40…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"60","is_correct":false,"explanation":"Choice C (60…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"80","is_correct":false,"explanation":"Choice D (80…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 people found that 60 people like apples, 40 people like oranges, and 20 people like both apples and oranges. How many people like only apples?

**Step 2 — Solve.** We can use a Venn Diagram to represent the information given. \begin{align*} \text{People who like only apples} &= \text{People who like apples} - \text{People who like both apples and oranges} \\ &= 60 - 20\\ &= 40 \end{align*} Therefore, 40 people like only apples.

**Step 3 — Select A.** 20

**Distractor analysis:**
- **B** (40): Choice B (40…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (60): Choice C (60…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (80): Choice D (80…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":1004,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_a1","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '438fe231-69f1-4233-93c8-ba7a20490d7f';
UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 cm. What is the circumference of the circle, in terms of $\pi$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$5 \\pi$","is_correct":false,"explanation":"Choice A ($5 \\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"$10 \\pi$","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"$25 \\pi$","is_correct":false,"explanation":"Choice C ($25 \\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$100 \\pi$","is_correct":false,"explanation":"Choice D ($100 \\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 cm. What is the circumference of the circle, in terms of $\pi$?

**Step 2 — Solve.** The circumference of a circle is given by the formula $C = 2 \pi r$, where $r$ is the radius.  Substituting 5 for $r$, we get $C = 2 \pi (5) = 10 \pi$.

**Step 3 — Select B.** $10 \pi$

**Distractor analysis:**
- **A** ($5 \pi$): Choice A ($5 \pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ($25 \pi$): Choice C ($25 \pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($100 \pi$): Choice D ($100 \pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":739,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '43cbaacf-073d-4b95-907b-b6cf352d786c';
UPDATE public.questions SET
  question_text = 'A survey of 100 people found that 60 people liked apples, 40 people liked oranges, and 20 people liked both apples and oranges. How many people liked only apples?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"20","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"40","is_correct":false,"explanation":"Choice B (40…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"60","is_correct":false,"explanation":"Choice C (60…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"80","is_correct":false,"explanation":"Choice D (80…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 people found that 60 people liked apples, 40 people liked oranges, and 20 people liked both apples and oranges. How many people liked only apples?

**Step 2 — Solve.** We can use a Venn diagram to solve this problem.  Let A represent the set of people who like apples and O represent the set of people who like oranges.  The number of people who like both apples and oranges is the intersection of sets A and O.  Thus, 20 people like both apples and oranges, and 40 – 20 = 20 people like only oranges.  The total number of people who like apples is 60, so 60 – 20 = 40 people like only apples.

**Step 3 — Select A.** 20

**Distractor analysis:**
- **B** (40): Choice B (40…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (60): Choice C (60…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (80): Choice D (80…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":76,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '43f0b866-4f56-490e-a1cc-e898ff3a2a96';
UPDATE public.questions SET
  question_text = 'The function \(f(x)\) is defined by \(f(x) = x^3 + 2x^2 - 5x - 6\). What is the value of \(f(-2)\)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-10","is_correct":false,"explanation":"Choice A (-10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"0","is_correct":false,"explanation":"Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"6","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"10","is_correct":false,"explanation":"Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function \(f(x)\) is defined by \(f(x) = x^3 + 2x^2 - 5x - 6\). What is the value of \(f(-2)\)?

**Step 2 — Solve.** We can find the value of \(f(-2)\) by substituting -2 for x in the function: \(f(-2) = (-2)^3 + 2(-2)^2 - 5(-2) - 6 = -8 + 8 + 10 - 6 = 6\).

**Step 3 — Select C.** 6

**Distractor analysis:**
- **A** (-10): Choice A (-10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (0): Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (10): Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":936,"opensat_domain":"Advanced Math","opensat_raw_id":"301a429b","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '4424f8e0-5dcd-4c8f-bddf-e7d2b85953df';

UPDATE public.questions SET
  question_text = 'If $x - 2 = 5$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"3","is_correct":false,"explanation":"Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"7","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"10","is_correct":false,"explanation":"Choice C (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"12","is_correct":false,"explanation":"Choice D (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $x - 2 = 5$, what is the value of $x$?

**Step 2 — Solve.** Adding 2 to both sides of the equation $x - 2 = 5$ gives us $x = 5 + 2$, or $x = 7$.

**Step 3 — Select B.** 7

**Distractor analysis:**
- **A** (3): Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (10): Choice C (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (12): Choice D (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":693,"opensat_domain":"Algebra","opensat_raw_id":"random_id_d7","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '4444efb8-1f0c-4403-a32a-21810c9f8597';
UPDATE public.questions SET
  question_text = 'Which value of $x$ satisfies $5x + 6 > 238$ and represents a feasible weight?',
  stimulus_text = 'A package must weigh more than 238 grams but at most 251 grams to ship.',
  options = '[{"id":"A","text":"$44$","is_correct":false,"explanation":"Too small: $5(44)+6=226$."},{"id":"B","text":"$45$","is_correct":false,"explanation":"Still below threshold 238."},{"id":"C","text":"$46$","is_correct":false,"explanation":"Borderline; check strict inequality."},{"id":"D","text":"$47$","is_correct":true,"explanation":"**Step 1:** $5x > 232$. **Step 2:** $x > 46.4$. Smallest integer choice: 47."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Isolate: $5x > 232$.
**Step 2:** $x > 46.40$.
**Step 3:** Among choices, $47$ is the smallest valid value.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '448fb47c-848f-4284-af39-b5fe79f40446';
UPDATE public.questions SET
  question_text = 'A linear function $f$ models temperature change. Given $f(5)=1$ and $f(10)=21$, what is $f(-7)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-43$","is_correct":false,"explanation":"Adds slope once too many."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(-7$)."},{"id":"C","text":"$-50$","is_correct":false,"explanation":"Arithmetic error in point-slope form."},{"id":"D","text":"$-47$","is_correct":true,"explanation":"**Step 1:** Slope $m=4$. **Step 2:** $f(-7)=4(-7-5)+(1)=-47$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $m=\frac{21-1}{10-5}=4$.
**Step 2:** Point-slope: $f(-7)=4(-7-5)+(1)$.
**Step 3:** $f(-7)=-47$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '449c7197-85d1-46ff-924b-f1e4069f3649';
UPDATE public.questions SET
  question_text = 'The height of a projectile is $h(t)=2(t-17)^2+19$, where $t$ is seconds. What is $h(20)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$19$","is_correct":false,"explanation":"That is the minimum height at the vertex."},{"id":"B","text":"$37$","is_correct":true,"explanation":"**Step 1:** $h(20)=2(20-17)^2+19=2(9)+19=37$."},{"id":"C","text":"$35$","is_correct":false,"explanation":"Subtracts $a$ incorrectly."},{"id":"D","text":"$21$","is_correct":false,"explanation":"Adds coefficient and constant."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $t=20$: $h(20)=2(20-17)^2+19$.
**Step 2:** $(20-17)^2=9$ → $h(20)=37$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '44d559c5-3e62-46f8-84f2-086faf473e23';
UPDATE public.questions SET
  question_text = 'If $x^2 + 4x = 21$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-7","is_correct":false,"explanation":"Choice A (-7…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-3","is_correct":false,"explanation":"Choice B (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"3","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"7","is_correct":false,"explanation":"Choice D (7…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $x^2 + 4x = 21$, what is the value of $x$?

**Step 2 — Solve.** To solve for $x$, we can use the quadratic formula.  The equation is in the form $ax^2 + bx + c = 0$, where a = 1, b = 4, and c = -21. Substituting these values into the quadratic formula gives: $x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a} = \frac{-4 \pm \sqrt{4^2 - 4(1)(-21)}}{2(1)} = \frac{-4 \pm \sqrt{16 + 84}}{2} = \frac{-4 \pm \sqrt{100}}{2} = \frac{-4 \pm 10}{2}$. Therefore, $x = 3$ or $x = -7$.  Of the choices given, $x = 3$ is the correct answer.

**Step 3 — Select C.** 3

**Distractor analysis:**
- **A** (-7): Choice A (-7…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-3): Choice B (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (7): Choice D (7…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":317,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a3","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '44de7eb5-ba55-4962-8d6b-46fea5f1641a';
UPDATE public.questions SET
  question_text = 'What is the slope, and what does it represent?',
  stimulus_text = 'A line models cost vs. units produced, passing through $(18,53)$ and $(24,71)$.',
  options = '[{"id":"A","text":"$3$; cost increases $3$ per unit","is_correct":true,"explanation":"**Step 1:** Slope $=\\frac{71-53}{24-18}=3$. Interpretation: $3$ dollars per unit."},{"id":"B","text":"$2$; cost decreases per unit","is_correct":false,"explanation":"Wrong sign and magnitude."},{"id":"C","text":"$71$; total cost","is_correct":false,"explanation":"That is a coordinate, not slope."},{"id":"D","text":"$6$; time elapsed","is_correct":false,"explanation":"Horizontal change only."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Slope $=\frac{18}{6}=3$.
**Step 2:** In context, each additional unit adds $3$ to cost.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '44e24b65-f4ba-4424-a876-349c55b8feec';
UPDATE public.questions SET
  question_text = 'The function $f(x)$ is defined by $f(x) = 2x^2 - 3x + 1$. What is the value of $f(-2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-17","is_correct":false,"explanation":"Choice A (-17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-11","is_correct":false,"explanation":"Choice B (-11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"11","is_correct":false,"explanation":"Choice C (11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"17","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The function $f(x)$ is defined by $f(x) = 2x^2 - 3x + 1$. What is the value of $f(-2)$?

**Step 2 — Solve.** To find $f(-2)$, we substitute -2 for $x$ in the function:  $f(-2) = 2(-2)^2 - 3(-2) + 1 = 8 + 6 + 1 = 15$.

**Step 3 — Select D.** 17

**Distractor analysis:**
- **A** (-17): Choice A (-17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-11): Choice B (-11…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (11): Choice C (11…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":266,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a9","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '451511d2-cb91-4443-acd3-acaf5c9e7ab7';
UPDATE public.questions SET
  question_text = 'If the first chip is red, what is the probability the second is also red?',
  stimulus_text = 'A bag has 4 red and 33 blue chips. Two chips are drawn without replacement.',
  options = '[{"id":"A","text":"$\\frac{4}{37}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{4}{36}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{4}{37}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{3}{36}$","is_correct":true,"explanation":"**Step 1:** After red first: 3 red left, 36 total. **Step 2:** P $=\\frac{3}{36}$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** First chip red → 3 red remain out of 36.
**Step 2:** Conditional probability $=\frac{3}{36}$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '4533a503-8603-4cf6-b808-728ad0d1df3b';

UPDATE public.questions SET
  question_text = 'The graph of the equation $y = -x^2 + 4x - 3$ in the xy-plane is a parabola. What is the x-coordinate of the vertex of this parabola?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-2","is_correct":false,"explanation":"Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-1","is_correct":false,"explanation":"Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"3","is_correct":false,"explanation":"Choice D (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The graph of the equation $y = -x^2 + 4x - 3$ in the xy-plane is a parabola. What is the x-coordinate of the vertex of this parabola?

**Step 2 — Solve.** The x-coordinate of the vertex of a parabola in the form $y = ax^2 + bx + c$ is given by the formula $x = \frac{-b}{2a}$. In this case, $a = -1$ and $b = 4$, so the x-coordinate of the vertex is $x = \frac{-4}{2(-1)} = 2$.

**Step 3 — Select C.** 2

**Distractor analysis:**
- **A** (-2): Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-1): Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (3): Choice D (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":545,"opensat_domain":"Advanced Math","opensat_raw_id":"9201b00f","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '4545f98a-bf2b-454a-ae11-4b76044cabd8';
UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 units. What is the area, in square units, of a sector of this circle that has a central angle of $72^{\circ}$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\pi","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"10\\pi","is_correct":false,"explanation":"Choice B (10\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"25\\pi","is_correct":false,"explanation":"Choice C (25\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"50\\pi","is_correct":false,"explanation":"Choice D (50\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 units. What is the area, in square units, of a sector of this circle that has a central angle of $72^{\circ}$?

**Step 2 — Solve.** The area of a sector of a circle is given by the formula \frac{\theta}{360^{\circ}}\cdot \pi r^2, where $\theta$ is the central angle of the sector in degrees and r is the radius of the circle.  Substituting $72^{\circ}$ for $\theta$ and 5 for r, we get \frac{72^{\circ}}{360^{\circ}}\cdot \pi (5)^2 = \frac{1}{5}\cdot 25\pi = 5\pi$.

**Step 3 — Select A.** 5\pi

**Distractor analysis:**
- **B** (10\pi): Choice B (10\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (25\pi): Choice C (25\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (50\pi): Choice D (50\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":540,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_e8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '45692433-0caa-47ca-a431-87a82bcd4b82';
UPDATE public.questions SET
  question_text = 'If $\log_2 (x-3) + \log_2 (x+1) = 3$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":false,"explanation":"Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"6","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $\log_2 (x-3) + \log_2 (x+1) = 3$, what is the value of $x$?

**Step 2 — Solve.** Using the property of logarithms that states $\log_a b + \log_a c = \log_a (b \cdot c)$, we can rewrite the given equation as $\log_2 [(x-3)(x+1)] = 3$.  This simplifies to $\log_2 (x^2 - 2x - 3) = 3$.  Converting this equation from logarithmic form to exponential form, we get $2^3 = x^2 - 2x - 3$. This simplifies to $8 = x^2 - 2x - 3$. Subtracting 8 from both sides, we have $0 = x^2 - 2x - 11$. Factoring the quadratic gives us $0 = (x-6)(x+2)$. Therefore, the possible values of $x$ are 6 and -2. Since $x-3$ must be positive for the logarithm to be defined, the correct value of $x$ is 6.

**Step 3 — Select C.** 6

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (4): Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":812,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a2","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '4592e2b0-ccbd-4189-8d14-68180880e33b';
UPDATE public.questions SET
  question_text = 'A circle with center (2, 4) and radius 3 is graphed in the xy-plane. What is the equation of this circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"(x - 2)^2 + (y - 4)^2 = 3","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"B","text":"(x + 2)^2 + (y + 4)^2 = 9","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"C","text":"(x - 2)^2 + (y - 4)^2 = 9","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"(x + 2)^2 + (y + 4)^2 = 3","is_correct":false,"explanation":"May result from squaring when you should multiply or add."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle with center (2, 4) and radius 3 is graphed in the xy-plane. What is the equation of this circle?

**Step 2 — Solve.** The standard form of the equation of a circle is (x - h)^2 + (y - k)^2 = r^2, where (h, k) is the center of the circle and r is the radius. Since the center of the circle is (2, 4) and the radius is 3, the equation of the circle is (x - 2)^2 + (y - 4)^2 = 3^2, or (x - 2)^2 + (y - 4)^2 = 9.

**Step 3 — Select C.** (x - 2)^2 + (y - 4)^2 = 9

**Distractor analysis:**
- **A** ((x - 2)^2 + (y - 4)^2 = 3): May result from squaring when you should multiply or add.
- **B** ((x + 2)^2 + (y + 4)^2 = 9): May result from squaring when you should multiply or add.
- **D** ((x + 2)^2 + (y + 4)^2 = 3): May result from squaring when you should multiply or add.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":24,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a3","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '45c56393-d0eb-43f8-8181-a60ff136e295';
UPDATE public.questions SET
  question_text = 'If \(\frac{x^2 - 4}{x - 2}\) is simplified to a single term, what is the value of this term when \(x = 5\)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"6","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"7","is_correct":false,"explanation":"Choice C (7…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"11","is_correct":false,"explanation":"Choice D (11…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If \(\frac{x^2 - 4}{x - 2}\) is simplified to a single term, what is the value of this term when \(x = 5\)?

**Step 2 — Solve.** We can simplify the expression by factoring the numerator and canceling common factors: \(\frac{x^2 - 4}{x - 2} = \frac{(x + 2)(x - 2)}{x - 2} = x + 2\).  When \(x = 5\), this expression evaluates to \(5 + 2 = 7\).

**Step 3 — Select B.** 6

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (7): Choice C (7…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (11): Choice D (11…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"EQS","domain_id":"advanced","opensat_index":658,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_b6","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '45dcc60c-0c26-46e0-adec-887af76804fa';
UPDATE public.questions SET
  question_text = 'Which value of $x$ satisfies $4x + 8 > 221$ and represents a feasible weight?',
  stimulus_text = 'A package must weigh more than 221 grams but at most 234 grams to ship.',
  options = '[{"id":"A","text":"$51$","is_correct":false,"explanation":"Too small: $4(51)+8=212$."},{"id":"B","text":"$52$","is_correct":false,"explanation":"Still below threshold 221."},{"id":"C","text":"$53$","is_correct":false,"explanation":"Borderline; check strict inequality."},{"id":"D","text":"$54$","is_correct":true,"explanation":"**Step 1:** $4x > 213$. **Step 2:** $x > 53.25$. Smallest integer choice: 54."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Isolate: $4x > 213$.
**Step 2:** $x > 53.25$.
**Step 3:** Among choices, $54$ is the smallest valid value.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '460a17b0-9669-4339-8d1d-94c0ff501447';
UPDATE public.questions SET
  question_text = 'If the first chip is red, what is the probability the second is also red?',
  stimulus_text = 'A bag has 6 red and 8 blue chips. Two chips are drawn without replacement.',
  options = '[{"id":"A","text":"$\\frac{6}{14}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{13}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{14}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{13}$","is_correct":true,"explanation":"**Step 1:** After red first: 5 red left, 13 total. **Step 2:** P $=\\frac{5}{13}$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** First chip red → 5 red remain out of 13.
**Step 2:** Conditional probability $=\frac{5}{13}$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '463f99c9-9170-465c-8845-a4b7847583c0';
UPDATE public.questions SET
  question_text = 'The average of 5 numbers is 12.  If 4 of the numbers are 10, 11, 13, and 14, what is the fifth number?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"4","is_correct":false,"explanation":"Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"8","is_correct":false,"explanation":"Choice B (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"12","is_correct":false,"explanation":"Choice C (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"16","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The average of 5 numbers is 12.  If 4 of the numbers are 10, 11, 13, and 14, what is the fifth number?

**Step 2 — Solve.** The sum of the 5 numbers is 5 * 12 = 60.  The sum of the first 4 numbers is 10 + 11 + 13 + 14 = 48. Therefore, the fifth number is 60 - 48 = 12.

**Step 3 — Select D.** 16

**Distractor analysis:**
- **A** (4): Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (8): Choice B (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (12): Choice C (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":460,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_a3","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '4682c231-041e-4b7f-8720-affac2c6c01a';

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
