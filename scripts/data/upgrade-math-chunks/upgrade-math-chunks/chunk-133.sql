BEGIN;
UPDATE public.questions SET
  question_text = 'A survey of 100 randomly selected students found that 60 students prefer to eat pizza for lunch, 30 students prefer to eat a sandwich for lunch, and 10 students prefer to eat salad for lunch.  If the survey results are representative of the entire student body, what is the probability that a randomly selected student prefers to eat a sandwich for lunch?  Express your answer as a decimal.',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"0.1","is_correct":false,"explanation":"Choice A (0.1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"0.3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"0.6","is_correct":false,"explanation":"Choice C (0.6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"0.9","is_correct":false,"explanation":"Choice D (0.9…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 randomly selected students found that 60 students prefer to eat pizza for lunch, 30 students prefer to eat a sandwich for lunch, and 10 students prefer to eat salad for lunch.  If the survey results are representative of the entire student body, what is the probability that a randomly selected student prefers to eat a sandwich for lunch?  Express your answer as a decimal.

**Step 2 — Solve.** Since 30 out of the 100 students surveyed prefer sandwiches, the probability that a randomly selected student prefers to eat a sandwich for lunch is 30/100, or 0.3.

**Step 3 — Select B.** 0.3

**Distractor analysis:**
- **A** (0.1): Choice A (0.1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (0.6): Choice C (0.6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (0.9): Choice D (0.9…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"PRO","domain_id":"psda","opensat_index":925,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c5","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'b7dc5726-9c87-4fc2-86c8-e20174c41c81';

UPDATE public.questions SET
  question_text = 'A triangle has sides of length 5, 12, and 13. Is this triangle a right triangle? Explain your reasoning.',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"Yes, because the triangle satisfies the Pythagorean Theorem.","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"Yes, because the triangle has two equal sides.","is_correct":false,"explanation":"Choice B (Yes, because the triangle has two equal sides.…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"No, because the triangle does not satisfy the Pythagorean Theorem.","is_correct":false,"explanation":"Choice C (No, because the triangle does not satisfy the Pythagorean Th…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"No, because the triangle has one side that is longer than the sum of the other two sides.","is_correct":false,"explanation":"Choice D (No, because the triangle has one side that is longer than th…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A triangle has sides of length 5, 12, and 13. Is this triangle a right triangle? Explain your reasoning.

**Step 2 — Solve.** Yes, the triangle is a right triangle because it satisfies the Pythagorean Theorem. The Pythagorean Theorem states that in a right triangle, the square of the hypotenuse is equal to the sum of the squares of the other two sides.  In this case,  5² + 12² = 25 + 144 = 169, and 13² = 169. Since the square of the longest side (13) is equal to the sum of the squares of the other two sides (5 and 12), the triangle is a right triangle.

**Step 3 — Select A.** Yes, because the triangle satisfies the Pythagorean Theorem.

**Distractor analysis:**
- **B** (Yes, because the triangle has two equal sides.): Choice B (Yes, because the triangle has two equal sides.…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (No, because the triangle does not satisfy the Pythagorean Theorem.): Choice C (No, because the triangle does not satisfy the Pythagorean Th…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (No, because the triangle has one side that is longer than the sum of the other two sides.): Choice D (No, because the triangle has one side that is longer than th…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RIG","domain_id":"geometry","opensat_index":46,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"9f501aaf","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b859596e-03f3-4c9d-8074-4a9cc1c2e3e2';

UPDATE public.questions SET
  question_text = 'The function $f(x)$ is defined by $f(x) = \frac{1}{x^2 + 1}$. What is the value of $f(\sqrt{3})$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\frac{1}{4}$","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"$\\frac{1}{2}$","is_correct":false,"explanation":"Inverts the ratio — a common probability error."},{"id":"C","text":"1","is_correct":false,"explanation":"Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"4","is_correct":false,"explanation":"Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The function $f(x)$ is defined by $f(x) = \frac{1}{x^2 + 1}$. What is the value of $f(\sqrt{3})$?

**Step 2 — Solve.** Substituting $\sqrt{3}$ for x in the given function, we get $f(\sqrt{3}) = \frac{1}{(\sqrt{3})^2 + 1}$. Simplifying, we get $f(\sqrt{3}) = \frac{1}{3 + 1} = \frac{1}{4}$.

**Step 3 — Select A.** $\frac{1}{4}$

**Distractor analysis:**
- **B** ($\frac{1}{2}$): Inverts the ratio — a common probability error.
- **C** (1): Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (4): Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":5,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c4","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'b8632975-f044-4d55-91fb-1d5cac712144';

UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 63% favor a policy, margin of error ±4 percentage points (95% confidence), $n=1200$.',
  options = '[{"id":"A","text":"Exactly 63% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 59% and 67%","is_correct":true,"explanation":"**Step 1:** Interval 59% to 67%. **Step 2:** This range is supported."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1200 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 59% to 67%.
**Step 2:** At 95% confidence, true support likely falls in this range.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b87fcaa0-1c6b-4053-a4c9-f9c637c3c92b';

UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 55% favor a policy, margin of error ±4 percentage points (95% confidence), $n=1200$.',
  options = '[{"id":"A","text":"Exactly 55% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 51% and 59%","is_correct":true,"explanation":"**Step 1:** Interval 51% to 59%. **Step 2:** This range is supported."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1200 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 51% to 59%.
**Step 2:** At 95% confidence, true support likely falls in this range.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b899e5ef-6058-44f1-84a3-83df3b41cd80';

UPDATE public.questions SET
  question_text = 'A square with side length $s$ is inscribed in a circle. What is the area of the circle in terms of $s$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\pi s^2$","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"$\\frac{1}{2}\\pi s^2$","is_correct":false,"explanation":"Inverts the ratio — a common probability error."},{"id":"C","text":"$\\frac{1}{4}\\pi s^2$","is_correct":false,"explanation":"Inverts the ratio — a common probability error."},{"id":"D","text":"$\\pi s$","is_correct":false,"explanation":"Choice D ($\\pi s$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A square with side length $s$ is inscribed in a circle. What is the area of the circle in terms of $s$?

**Step 2 — Solve.** The diagonal of the square is also the diameter of the circle.  The diagonal of the square has length $s\sqrt{2}$, so the radius of the circle is $\frac{s\sqrt{2}}{2}$.  The area of the circle is $\pi r^2 = \pi(\frac{s\sqrt{2}}{2})^2 = \pi s^2$.

**Step 3 — Select A.** $\pi s^2$

**Distractor analysis:**
- **B** ($\frac{1}{2}\pi s^2$): Inverts the ratio — a common probability error.
- **C** ($\frac{1}{4}\pi s^2$): Inverts the ratio — a common probability error.
- **D** ($\pi s$): Choice D ($\pi s$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":316,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_6","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'b8a9cd8a-7739-4093-9b18-ad40dafccb9e';

UPDATE public.questions SET
  question_text = 'What is the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 10 meters.',
  options = '[{"id":"A","text":"$62.80$","is_correct":true,"explanation":"**Step 1:** $C=2\\pi r$. **Step 2:** $2(3.14)(10)=62.80$."},{"id":"B","text":"$314.00$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not circumference."},{"id":"C","text":"$20.00$","is_correct":false,"explanation":"Diameter only."},{"id":"D","text":"$31.40$","is_correct":false,"explanation":"Half of circumference."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Formula $C=2\pi r$.
**Step 2:** $C≈2(3.14)(10)=62.80$ m.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'b8b9552e-a578-4b97-a7bf-be8cf80a0c66';

UPDATE public.questions SET
  question_text = 'A survey of 100 people found that 60 people like apples, 45 people like bananas, and 20 people like both apples and bananas. How many people like neither apples nor bananas? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"15","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"25","is_correct":false,"explanation":"Choice B (25…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"35","is_correct":false,"explanation":"Choice C (35…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"45","is_correct":false,"explanation":"Choice D (45…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 people found that 60 people like apples, 45 people like bananas, and 20 people like both apples and bananas. How many people like neither apples nor bananas? 

**Step 2 — Solve.** We can use a Venn diagram to solve this problem.  Let $A$ represent the set of people who like apples, and let $B$ represent the set of people who like bananas.  We are given that $n(A) = 60$, $n(B) = 45$, and $n(A \cap B) = 20$.  Since $n(A \cup B) = n(A) + n(B) - n(A \cap B)$, it follows that $n(A \cup B) = 60 + 45 - 20 = 85$.  Therefore, 100 – 85 = 15 people like neither apples nor bananas.

**Step 3 — Select A.** 15

**Distractor analysis:**
- **B** (25): Choice B (25…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (35): Choice C (35…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (45): Choice D (45…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":277,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c1","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'b8d35e0a-edbd-41d6-a034-d2be75afc3ff';

COMMIT;
