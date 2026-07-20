BEGIN;
UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 units.  The point (-3,1) lies on the circle.  What is the equation of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"(x + 3)^2 + (y - 1)^2 = 25","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"(x + 3)^2 + (y - 1)^2 = 5","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"C","text":"(x - 3)^2 + (y + 1)^2 = 25","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"D","text":"(x - 3)^2 + (y + 1)^2 = 5","is_correct":false,"explanation":"May result from squaring when you should multiply or add."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 units.  The point (-3,1) lies on the circle.  What is the equation of the circle?

**Step 2 — Solve.** The standard form of the equation of a circle with center (h, k) and radius r is (x - h)^2 + (y - k)^2 = r^2. Since the center of the circle is (-3, 1) and the radius is 5, the equation of the circle is (x - (-3))^2 + (y - 1)^2 = 5^2, or (x + 3)^2 + (y - 1)^2 = 25.

**Step 3 — Select A.** (x + 3)^2 + (y - 1)^2 = 25

**Distractor analysis:**
- **B** ((x + 3)^2 + (y - 1)^2 = 5): May result from squaring when you should multiply or add.
- **C** ((x - 3)^2 + (y + 1)^2 = 25): May result from squaring when you should multiply or add.
- **D** ((x - 3)^2 + (y + 1)^2 = 5): May result from squaring when you should multiply or add.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":6,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c9","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '317a12b0-a88a-41b7-8442-0ba418a5a722';

UPDATE public.questions SET
  question_text = 'A linear function $f$ models temperature change. Given $f(8)=4$ and $f(13)=24$, what is $f(-10)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-64$","is_correct":false,"explanation":"Adds slope once too many."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(-10$)."},{"id":"C","text":"$-71$","is_correct":false,"explanation":"Arithmetic error in point-slope form."},{"id":"D","text":"$-68$","is_correct":true,"explanation":"**Step 1:** Slope $m=4$. **Step 2:** $f(-10)=4(-10-8)+(4)=-68$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $m=\frac{24-4}{13-8}=4$.
**Step 2:** Point-slope: $f(-10)=4(-10-8)+(4)$.
**Step 3:** $f(-10)=-68$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '31a42728-b9c4-4836-aa6f-0fdbe8a36b85';

UPDATE public.questions SET
  question_text = 'The expression $\frac{x^2 + 3x - 4}{x^2 - 1}$ is equivalent to which of the following?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\frac{x-4}{x-1}$","is_correct":false,"explanation":"Choice A ($\\frac{x-4}{x-1}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"$\\frac{x-1}{x+1}$","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."},{"id":"C","text":"$\\frac{x+4}{x+1}$","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"$\\frac{x+4}{x-1}$","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The expression $\frac{x^2 + 3x - 4}{x^2 - 1}$ is equivalent to which of the following?

**Step 2 — Solve.** We can factor the numerator and denominator to simplify the expression. The numerator factors as $(x+4)(x-1)$ and the denominator factors as $(x+1)(x-1)$. The common factor of $(x-1)$ cancels out, leaving us with $\frac{x+4}{x+1}$.

**Step 3 — Select C.** $\frac{x+4}{x+1}$

**Distractor analysis:**
- **A** ($\frac{x-4}{x-1}$): Choice A ($\frac{x-4}{x-1}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** ($\frac{x-1}{x+1}$): Adds quantities that should be multiplied or compares unrelated terms.
- **D** ($\frac{x+4}{x-1}$): Adds quantities that should be multiplied or compares unrelated terms.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"EQS","domain_id":"advanced","opensat_index":206,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a2","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '31aede24-baa2-465b-899a-ca1a7545d323';

UPDATE public.questions SET
  question_text = 'The function *f* is defined by  *f*(x) = 3x^2 + 5. What is the value of *f*(2)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"11","is_correct":false,"explanation":"Choice A (11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"17","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"21","is_correct":false,"explanation":"Choice C (21…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"27","is_correct":false,"explanation":"Choice D (27…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The function *f* is defined by  *f*(x) = 3x^2 + 5. What is the value of *f*(2)?

**Step 2 — Solve.** To find *f*(2), we substitute 2 for x in the equation *f*(x) = 3x^2 + 5. This gives us *f*(2) = 3(2)^2 + 5 = 3 * 4 + 5 = 12 + 5 = 17.

**Step 3 — Select B.** 17

**Distractor analysis:**
- **A** (11): Choice A (11…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (21): Choice C (21…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (27): Choice D (27…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":625,"opensat_domain":"Advanced Math","opensat_raw_id":"87654321","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '31c1dff1-c09a-4ee3-8bbc-3133d0d9e6c6';

UPDATE public.questions SET
  question_text = 'A triangle has vertices at the points (0,0), (0,4), and (3,0). What is the area of this triangle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"6","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"12","is_correct":false,"explanation":"Choice B (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"18","is_correct":false,"explanation":"Choice C (18…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"24","is_correct":false,"explanation":"Choice D (24…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A triangle has vertices at the points (0,0), (0,4), and (3,0). What is the area of this triangle?

**Step 2 — Solve.** The triangle is a right triangle with a base of length 3 and a height of length 4. The area of a triangle is given by (1/2) * base * height. Therefore, the area of this triangle is (1/2) * 3 * 4 = 6.

**Step 3 — Select A.** 6

**Distractor analysis:**
- **B** (12): Choice B (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (18): Choice C (18…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (24): Choice D (24…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":529,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_b8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '31cf220f-7552-4092-b574-32c83b07496d';

UPDATE public.questions SET
  question_text = 'The function *f* is defined by *f*(x) = 3*x*<sup>2</sup> - 2. What is the value of *f*(4)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"42","is_correct":false,"explanation":"Choice A (42…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"44","is_correct":false,"explanation":"Choice B (44…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"46","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"48","is_correct":false,"explanation":"Choice D (48…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function *f* is defined by *f*(x) = 3*x*<sup>2</sup> - 2. What is the value of *f*(4)?

**Step 2 — Solve.** To find *f*(4), we substitute 4 for *x* in the function''s definition: *f*(4) = 3(4)<sup>2</sup> - 2.  Simplifying, we get *f*(4) = 3(16) - 2 = 48 - 2 = 46.

**Step 3 — Select C.** 46

**Distractor analysis:**
- **A** (42): Choice A (42…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (44): Choice B (44…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (48): Choice D (48…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":124,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c2","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '31f81897-1b25-4fb5-8017-a83c175ae166';

UPDATE public.questions SET
  question_text = 'If the original price is $290$, what is the final price after both changes?',
  stimulus_text = 'A retail price is increased by 20% and then discounted by 15%.',
  options = '[{"id":"A","text":"$296$","is_correct":true,"explanation":"**Step 1:** $290×1.2=348$. **Step 2:** $348×0.85=296$."},{"id":"B","text":"$290$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$348$","is_correct":false,"explanation":"Only applies the markup."},{"id":"D","text":"$306$","is_correct":false,"explanation":"Adds 10 without reason."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $290×(1+20/100)=348$.
**Step 2:** Discount: $348×(1-15/100)=296$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '3273b42c-7435-4372-9433-e94aaf5a05eb';

UPDATE public.questions SET
  question_text = 'If the final reading is 341 when $r=48$, and the process is modeled by $7r+5$, what value of $x$ satisfies $7x+5=341$?',
  stimulus_text = 'A technician adjusts a sensor reading. First the raw value $r$ is scaled by 7, then 5 is added.',
  options = '[{"id":"A","text":"$51$","is_correct":false,"explanation":"After subtracting 5, divide by 7; this is too small."},{"id":"B","text":"$52$","is_correct":false,"explanation":"One less than the correct value."},{"id":"C","text":"$53$","is_correct":true,"explanation":"**Step 1:** $7x = 336$. **Step 2:** $x = 53$."},{"id":"D","text":"$7$","is_correct":false,"explanation":"That is the scale factor, not $x$."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Subtract 5: $7x=336$.
**Step 2:** Divide by 7: $x=53$.
**Step 3:** Verify: $7(53)+5=341$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '328d99fe-35f9-4676-a202-89ecdce9e20e';

COMMIT;
