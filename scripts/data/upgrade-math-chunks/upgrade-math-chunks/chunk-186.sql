BEGIN;
UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 centimeters. What is the circumference of the circle, in centimeters? (Use 3.14 for $\pi$)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"15.7","is_correct":false,"explanation":"Choice A (15.7…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"31.4","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"78.5","is_correct":false,"explanation":"Choice C (78.5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"157","is_correct":false,"explanation":"Choice D (157…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 centimeters. What is the circumference of the circle, in centimeters? (Use 3.14 for $\pi$)

**Step 2 — Solve.** The circumference of a circle is given by the formula $C = 2 \pi r$, where $r$ is the radius.  Substituting 5 for $r$ and 3.14 for $\pi$, we get $C = 2(3.14)(5) = 31.4$ centimeters.

**Step 3 — Select B.** 31.4

**Distractor analysis:**
- **A** (15.7): Choice A (15.7…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (78.5): Choice C (78.5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (157): Choice D (157…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":777,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c5","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'f8f99cfb-088f-4224-aadc-56ab77381068';

UPDATE public.questions SET
  question_text = 'A regular hexagon is inscribed in a circle with a radius of 6. What is the perimeter of the hexagon?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"12","is_correct":false,"explanation":"Choice A (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"18","is_correct":false,"explanation":"Choice B (18…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"24","is_correct":false,"explanation":"Choice C (24…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"36","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A regular hexagon is inscribed in a circle with a radius of 6. What is the perimeter of the hexagon?

**Step 2 — Solve.** A regular hexagon can be divided into 6 equilateral triangles. The side of each equilateral triangle is equal to the radius of the circle, which is 6. So the perimeter of the hexagon is 6 * 6 = 36.

**Step 3 — Select D.** 36

**Distractor analysis:**
- **A** (12): Choice A (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (18): Choice B (18…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (24): Choice C (24…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":995,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c2","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'f90ce93d-d5b3-4c73-aa53-0b50f7516e84';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 cm. What is the area of the circle in square centimeters? (Use $\pi$ = 3.14)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"15.7","is_correct":false,"explanation":"Choice A (15.7…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"31.4","is_correct":false,"explanation":"Choice B (31.4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"78.5","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"157","is_correct":false,"explanation":"Choice D (157…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 cm. What is the area of the circle in square centimeters? (Use $\pi$ = 3.14)

**Step 2 — Solve.** The area of a circle is given by the formula $A = \pi r^2$, where $r$ is the radius. Substituting 5 for $r$ and 3.14 for $\pi$, we get $A = 3.14 * 5^2 = 3.14 * 25 = 78.5$ square centimeters.

**Step 3 — Select C.** 78.5

**Distractor analysis:**
- **A** (15.7): Choice A (15.7…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (31.4): Choice B (31.4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (157): Choice D (157…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":1017,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a1","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'f92d8d2f-831b-4f8f-9c55-76c5a3cccdc4';

UPDATE public.questions SET
  question_text = 'What is the slope, and what does it represent?',
  stimulus_text = 'A line models cost vs. units produced, passing through $(4,11)$ and $(10,29)$.',
  options = '[{"id":"A","text":"$3$; cost increases $3$ per unit","is_correct":true,"explanation":"**Step 1:** Slope $=\\frac{29-11}{10-4}=3$. Interpretation: $3$ dollars per unit."},{"id":"B","text":"$2$; cost decreases per unit","is_correct":false,"explanation":"Wrong sign and magnitude."},{"id":"C","text":"$29$; total cost","is_correct":false,"explanation":"That is a coordinate, not slope."},{"id":"D","text":"$6$; time elapsed","is_correct":false,"explanation":"Horizontal change only."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Slope $=\frac{18}{6}=3$.
**Step 2:** In context, each additional unit adds $3$ to cost.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'f9d960c4-d34b-4285-adb8-9e2a062b40d0';

UPDATE public.questions SET
  question_text = 'A store sells two types of cookies: chocolate chip and peanut butter. On Monday, the store sold 3 times as many chocolate chip cookies as peanut butter cookies. If the store sold a total of 120 cookies that day, how many chocolate chip cookies were sold?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"30","is_correct":false,"explanation":"Choice A (30…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"40","is_correct":false,"explanation":"Choice B (40…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"60","is_correct":false,"explanation":"Choice C (60…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"90","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A store sells two types of cookies: chocolate chip and peanut butter. On Monday, the store sold 3 times as many chocolate chip cookies as peanut butter cookies. If the store sold a total of 120 cookies that day, how many chocolate chip cookies were sold?

**Step 2 — Solve.** Let x represent the number of peanut butter cookies sold. The store sold 3 times as many chocolate chip cookies as peanut butter cookies, so 3x represents the number of chocolate chip cookies sold. The total number of cookies sold is 120, so we can set up the equation: x + 3x = 120. Combining like terms, we get 4x = 120. Dividing both sides of the equation by 4, we get x = 30. Since 3x represents the number of chocolate chip cookies sold, the store sold 3 * 30 = 90 chocolate chip cookies.

**Step 3 — Select D.** 90

**Distractor analysis:**
- **A** (30): Choice A (30…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (40): Choice B (40…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (60): Choice C (60…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":435,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_12","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'f9f84a6b-6186-4e48-83ac-71652e3b1df3';

UPDATE public.questions SET
  question_text = 'A triangle has sides of length 5, 12, and 13.  Is this triangle a right triangle?  Explain your reasoning.',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"Yes, because $5^2 + 12^2 = 13^2$.","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"Yes, because $5 + 12 = 13$.","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."},{"id":"C","text":"No, because $5^2 + 12^2 \\neq 13^2$.","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"D","text":"No, because $5 + 12 \\neq 13$.","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A triangle has sides of length 5, 12, and 13.  Is this triangle a right triangle?  Explain your reasoning.

**Step 2 — Solve.** A triangle is a right triangle if and only if the square of the length of the longest side is equal to the sum of the squares of the lengths of the other two sides. In this case, the longest side is 13, and $5^2 + 12^2 = 25 + 144 = 169 = 13^2$, so the triangle is a right triangle.

**Step 3 — Select A.** Yes, because $5^2 + 12^2 = 13^2$.

**Distractor analysis:**
- **B** (Yes, because $5 + 12 = 13$.): Adds quantities that should be multiplied or compares unrelated terms.
- **C** (No, because $5^2 + 12^2 \neq 13^2$.): May result from squaring when you should multiply or add.
- **D** (No, because $5 + 12 \neq 13$.): Adds quantities that should be multiplied or compares unrelated terms.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RIG","domain_id":"geometry","opensat_index":549,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a4","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'fa147882-6099-45a5-a0c9-d21d13454071';

UPDATE public.questions SET
  question_text = 'The function *f* is defined by *f*(x) = 2x^2 + 3x - 1. What is the value of *f*(2)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"11","is_correct":false,"explanation":"Choice A (11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"15","is_correct":false,"explanation":"Choice B (15…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"19","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"23","is_correct":false,"explanation":"Choice D (23…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function *f* is defined by *f*(x) = 2x^2 + 3x - 1. What is the value of *f*(2)?

**Step 2 — Solve.** To find *f*(2), we substitute 2 for *x* in the function: *f*(2) = 2(2)^2 + 3(2) - 1.  Simplifying, we get *f*(2) = 8 + 6 - 1, or *f*(2) = 13.

**Step 3 — Select C.** 19

**Distractor analysis:**
- **A** (11): Choice A (11…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (15): Choice B (15…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (23): Choice D (23…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":872,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a7","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'fa1ac15d-1e64-4187-ad24-4d8ebfcc5b3e';

UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 59% favor a policy, margin of error ±4 percentage points (95% confidence), $n=1200$.',
  options = '[{"id":"A","text":"Exactly 59% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 55% and 63%","is_correct":true,"explanation":"**Step 1:** Interval 55% to 63%. **Step 2:** This range is supported."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1200 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 55% to 63%.
**Step 2:** At 95% confidence, true support likely falls in this range.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'fa828ae8-c297-4ce6-8d9d-99fefeb07a69';

COMMIT;
