BEGIN;
UPDATE public.questions SET
  question_text = 'The area of a rectangle is 180 square centimeters. The length of the rectangle is 15 centimeters. What is the width, in centimeters, of the rectangle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"12","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"15","is_correct":false,"explanation":"Choice B (15…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"33","is_correct":false,"explanation":"Choice C (33…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"270","is_correct":false,"explanation":"Choice D (270…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The area of a rectangle is 180 square centimeters. The length of the rectangle is 15 centimeters. What is the width, in centimeters, of the rectangle?

**Step 2 — Solve.** The area of a rectangle is equal to its length multiplied by its width.  Let  represent the width of the rectangle.  The area of the rectangle is 180 square centimeters, and the length of the rectangle is 15 centimeters, so .  Dividing both sides of this equation by 15 yields  or  .  Therefore, the width of the rectangle is 12 centimeters.

**Step 3 — Select A.** 12

**Distractor analysis:**
- **B** (15): Choice B (15…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (33): Choice C (33…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (270): Choice D (270…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":125,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"83d2d1d7","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '86435f60-5399-4b2c-bf58-33094fa4723d';

UPDATE public.questions SET
  question_text = 'Which value of $x$ satisfies $4x + 6 > 171$ and represents a feasible weight?',
  stimulus_text = 'A package must weigh more than 171 grams but at most 184 grams to ship.',
  options = '[{"id":"A","text":"$39$","is_correct":false,"explanation":"Too small: $4(39)+6=162$."},{"id":"B","text":"$40$","is_correct":false,"explanation":"Still below threshold 171."},{"id":"C","text":"$41$","is_correct":false,"explanation":"Borderline; check strict inequality."},{"id":"D","text":"$42$","is_correct":true,"explanation":"**Step 1:** $4x > 165$. **Step 2:** $x > 41.25$. Smallest integer choice: 42."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Isolate: $4x > 165$.
**Step 2:** $x > 41.25$.
**Step 3:** Among choices, $42$ is the smallest valid value.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '8659dbbe-da34-42be-831d-859e3b7ac157';

UPDATE public.questions SET
  question_text = 'Which value of $x$ satisfies $6x + 6 > 195$ and represents a feasible weight?',
  stimulus_text = 'A package must weigh more than 195 grams but at most 208 grams to ship.',
  options = '[{"id":"A","text":"$29$","is_correct":false,"explanation":"Too small: $6(29)+6=180$."},{"id":"B","text":"$30$","is_correct":false,"explanation":"Still below threshold 195."},{"id":"C","text":"$31$","is_correct":false,"explanation":"Borderline; check strict inequality."},{"id":"D","text":"$32$","is_correct":true,"explanation":"**Step 1:** $6x > 189$. **Step 2:** $x > 31.5$. Smallest integer choice: 32."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Isolate: $6x > 189$.
**Step 2:** $x > 31.50$.
**Step 3:** Among choices, $32$ is the smallest valid value.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '8692ce21-2b76-4584-9eaf-c93af427cd75';

UPDATE public.questions SET
  question_text = 'A regular hexagon is inscribed in a circle with radius 6. What is the perimeter of the hexagon?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"12","is_correct":false,"explanation":"Choice A (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"18","is_correct":false,"explanation":"Choice B (18…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"24","is_correct":false,"explanation":"Choice C (24…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"36","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A regular hexagon is inscribed in a circle with radius 6. What is the perimeter of the hexagon?

**Step 2 — Solve.** A regular hexagon can be divided into 6 equilateral triangles.  The side length of each equilateral triangle is equal to the radius of the circle, which is 6.  Therefore, the perimeter of the hexagon is 6 * 6 = 36.

**Step 3 — Select D.** 36

**Distractor analysis:**
- **A** (12): Choice A (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (18): Choice B (18…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (24): Choice C (24…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":655,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '86b6fdcb-5c27-4bd2-b1e5-f6f70cde590d';

UPDATE public.questions SET
  question_text = 'What is the remaining area, in square inches?',
  stimulus_text = 'A rectangular poster is 49 by 48 inches. A square corner of side 2 inches is removed.',
  options = '[{"id":"A","text":"$2352$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$97$","is_correct":false,"explanation":"Perimeter-like sum, not area."},{"id":"C","text":"$2348$","is_correct":true,"explanation":"**Step 1:** Full area $2352$. **Step 2:** Subtract $2^2$ → $2348$."},{"id":"D","text":"$2350$","is_correct":false,"explanation":"Adds instead of subtracts corner."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $49×48=2352$.
**Step 2:** Remove corner: $2^2=4$.
**Step 3:** $2352-4=2348$ sq in.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '86d5c828-52f9-4c1f-b9df-5ad74149feed';

UPDATE public.questions SET
  question_text = 'Which choice best evaluates the claim?',
  stimulus_text = 'A influencer claims "nobody likes the new app" after asking 170 followers who commented on one critical post.',
  options = '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"**Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because 40 responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '873b617f-b2c2-46ed-97d2-b77bd76ba5e8';

UPDATE public.questions SET
  question_text = 'A circle has a diameter of 10 inches. What is the circumference of the circle, in inches? (Use 3.14 for \(\pi\)).',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"15.7","is_correct":false,"explanation":"Choice A (15.7…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"31.4","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"62.8","is_correct":false,"explanation":"Choice C (62.8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"157","is_correct":false,"explanation":"Choice D (157…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a diameter of 10 inches. What is the circumference of the circle, in inches? (Use 3.14 for \(\pi\)).

**Step 2 — Solve.** The circumference of a circle is given by the formula \(C = \pi d\), where \(C\) is the circumference and \(d\) is the diameter.  Substituting 10 for \(d\) and 3.14 for \(\pi\) gives \(C = (3.14)(10) = 31.4\).

**Step 3 — Select B.** 31.4

**Distractor analysis:**
- **A** (15.7): Choice A (15.7…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (62.8): Choice C (62.8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (157): Choice D (157…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":107,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_11","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '8777e38f-c769-44e3-9731-1925b00429a1';

UPDATE public.questions SET
  question_text = 'If $3x - 2y = 10$ and $x + 2y = 6$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":false,"explanation":"Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"4","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $3x - 2y = 10$ and $x + 2y = 6$, what is the value of $x$?

**Step 2 — Solve.** Adding the two equations together, we get $(3x - 2y) + (x + 2y) = 10 + 6$. This simplifies to $4x = 16$, so $x = 4$.

**Step 3 — Select C.** 4

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (3): Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":920,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a3","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '878ab9e3-1e94-4ff5-a1b1-eebff06516bb';

COMMIT;
