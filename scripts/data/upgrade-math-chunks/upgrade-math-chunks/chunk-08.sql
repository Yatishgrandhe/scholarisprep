BEGIN;
UPDATE public.questions SET
  question_text = 'The points A, B, and C lie on a circle with center O.  The measure of angle AOB is 120 degrees.  What is the measure of angle ACB?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"30","is_correct":false,"explanation":"Choice A (30…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"60","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"90","is_correct":false,"explanation":"Choice C (90…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"120","is_correct":false,"explanation":"Choice D (120…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The points A, B, and C lie on a circle with center O.  The measure of angle AOB is 120 degrees.  What is the measure of angle ACB?

**Step 2 — Solve.** Angle ACB intercepts arc AB, and angle AOB is the central angle intercepting arc AB.  The measure of an inscribed angle is half the measure of its intercepted arc, so the measure of angle ACB is half the measure of angle AOB.  Therefore, the measure of angle ACB is 60 degrees.

**Step 3 — Select B.** 60

**Distractor analysis:**
- **A** (30): Choice A (30…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (90): Choice C (90…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (120): Choice D (120…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":567,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"f21b71c2","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.056Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '0ab23cb9-75fa-459e-ac75-a4281571cbed';

UPDATE public.questions SET
  question_text = 'What is the positive solution to $x^2 - 9x + 20 = 0$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$9$","is_correct":false,"explanation":"Sum of roots, not a root."},{"id":"C","text":"$5$","is_correct":true,"explanation":"**Step 1:** Factor $(x-4)(x-5)=0$. **Step 2:** Positive root is $5$."},{"id":"D","text":"$10$","is_correct":false,"explanation":"Not a solution."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-4)(x-5)=0$.
**Step 2:** Roots $x=4$ and $x=5$.
**Step 3:** Positive solution: $5$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.056Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '0ab3fc2e-d36e-46ed-ab1c-a0ffc39315c6';

UPDATE public.questions SET
  question_text = 'Given $x+y=56$ and $2x-y=37$, what is $x$?',
  stimulus_text = 'At a fundraiser, 56 tickets were sold in two price tiers. VIP tickets cost twice as much as standard tickets, and revenue from 31 VIP and 25 standard tickets follows the system below.',
  options = '[{"id":"A","text":"$31$","is_correct":true,"explanation":"**Step 1:** Add equations: $3x=93$. **Step 2:** $x=31$."},{"id":"B","text":"$30$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$25$","is_correct":false,"explanation":"That is $y$, not $x$."},{"id":"D","text":"$32$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(2x-y)=56+37$ → $3x=93$.
**Step 2:** $x=31$.
**Step 3:** Back-substitute: $y=25$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.056Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '0aeb8afc-48b3-4e47-a52e-d106cca2ff49';

UPDATE public.questions SET
  question_text = 'The function \(f\) is defined by \(f(x) = \frac{1}{x^2 + 1}\).  What is the value of \(f(\sqrt{3})\)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\frac{1}{4}$","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"$\\frac{1}{2}$","is_correct":false,"explanation":"Inverts the ratio — a common probability error."},{"id":"C","text":"1","is_correct":false,"explanation":"Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"4","is_correct":false,"explanation":"Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The function \(f\) is defined by \(f(x) = \frac{1}{x^2 + 1}\).  What is the value of \(f(\sqrt{3})\)?

**Step 2 — Solve.** Substituting \(\sqrt{3}\) for x in the equation \(f(x) = \frac{1}{x^2 + 1}\) yields \(f(\sqrt{3}) = \frac{1}{(\sqrt{3})^2 + 1}\). This simplifies to \(f(\sqrt{3}) = \frac{1}{3 + 1} = \frac{1}{4}\).

**Step 3 — Select A.** $\frac{1}{4}$

**Distractor analysis:**
- **B** ($\frac{1}{2}$): Inverts the ratio — a common probability error.
- **C** (1): Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (4): Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":332,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a1","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.057Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '0b176817-5587-4f85-80af-44ef9e2d8994';

UPDATE public.questions SET
  question_text = 'Given $x+y=42$ and $2x-y=30$, what is $x$?',
  stimulus_text = 'At a fundraiser, 42 tickets were sold in two price tiers. VIP tickets cost twice as much as standard tickets, and revenue from 24 VIP and 18 standard tickets follows the system below.',
  options = '[{"id":"A","text":"$24$","is_correct":true,"explanation":"**Step 1:** Add equations: $3x=72$. **Step 2:** $x=24$."},{"id":"B","text":"$23$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$18$","is_correct":false,"explanation":"That is $y$, not $x$."},{"id":"D","text":"$25$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(2x-y)=42+30$ → $3x=72$.
**Step 2:** $x=24$.
**Step 3:** Back-substitute: $y=18$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.057Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '0b1951a6-dea8-4ca3-8038-08eae578db3d';

UPDATE public.questions SET
  question_text = 'What is the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 6 meters.',
  options = '[{"id":"A","text":"$37.68$","is_correct":true,"explanation":"**Step 1:** $C=2\\pi r$. **Step 2:** $2(3.14)(6)=37.68$."},{"id":"B","text":"$113.04$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not circumference."},{"id":"C","text":"$12.00$","is_correct":false,"explanation":"Diameter only."},{"id":"D","text":"$18.84$","is_correct":false,"explanation":"Half of circumference."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Formula $C=2\pi r$.
**Step 2:** $C≈2(3.14)(6)=37.68$ m.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.057Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '0b2c59ed-b913-4d7a-a5e8-8ed5966cba20';

UPDATE public.questions SET
  question_text = 'If the original price is $120$, what is the final price after both changes?',
  stimulus_text = 'A retail price is increased by 25% and then discounted by 10%.',
  options = '[{"id":"A","text":"$135$","is_correct":true,"explanation":"**Step 1:** $120×1.25=150$. **Step 2:** $150×0.9=135$."},{"id":"B","text":"$120$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$150$","is_correct":false,"explanation":"Only applies the markup."},{"id":"D","text":"$145$","is_correct":false,"explanation":"Adds 10 without reason."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $120×(1+25/100)=150$.
**Step 2:** Discount: $150×(1-10/100)=135$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.057Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '0b35199f-2827-4f0c-8efc-041165046e7f';

UPDATE public.questions SET
  question_text = 'A line passes through the points (-1, 2) and (3, -2). What is the slope of the line?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-1","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"-2","is_correct":false,"explanation":"Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"1","is_correct":false,"explanation":"Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"2","is_correct":false,"explanation":"Choice D (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A line passes through the points (-1, 2) and (3, -2). What is the slope of the line?

**Step 2 — Solve.** The slope of a line passing through two points can be found using the formula: \begin{align*}m &= \frac{y_2 - y_1}{x_2 - x_1} \\ &= \frac{-2 - 2}{3 - (-1)} \\ &= \frac{-4}{4} \\ &= -1. \end{align*} Therefore, the slope of the line is -1.

**Step 3 — Select A.** -1

**Distractor analysis:**
- **B** (-2): Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (1): Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (2): Choice D (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":318,"opensat_domain":"Algebra","opensat_raw_id":"b94a2009","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.057Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '0b5f8049-e9db-4e25-85de-2e04c78e4627';

COMMIT;
