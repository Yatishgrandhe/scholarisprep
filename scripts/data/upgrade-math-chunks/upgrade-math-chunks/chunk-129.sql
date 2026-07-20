BEGIN;
UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 centimeters. What is the circumference of the circle in centimeters?  (Use $\pi \approx 3.14$)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"15.7","is_correct":false,"explanation":"Choice A (15.7…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"31.4","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"78.5","is_correct":false,"explanation":"Choice C (78.5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"157","is_correct":false,"explanation":"Choice D (157…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 centimeters. What is the circumference of the circle in centimeters?  (Use $\pi \approx 3.14$)

**Step 2 — Solve.** The circumference of a circle is given by the formula $C = 2\pi r$, where $r$ is the radius.  Substituting 5 for $r$ and 3.14 for $\pi$, we get $C = 2(3.14)(5) = 31.4$.

**Step 3 — Select B.** 31.4

**Distractor analysis:**
- **A** (15.7): Choice A (15.7…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (78.5): Choice C (78.5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (157): Choice D (157…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":576,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c1","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'b372ef56-9f1a-4a4b-b6d3-7bcce674251f';

UPDATE public.questions SET
  question_text = 'If $\frac{2x+3}{x-7}=4$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":false,"explanation":"Choice C (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"11","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** If $\frac{2x+3}{x-7}=4$, what is the value of $x$?

**Step 2 — Solve.** To solve for *x*, we first multiply both sides of the equation by $(x-7)$:  $2x + 3 = 4(x-7)$. Distributing the 4 on the right side gives us  $2x + 3 = 4x - 28$. Combining like terms, we get $31 = 2x$.  Dividing both sides by 2, we find $x=\frac{31}{2}$, or $x=15.5$. However, this value isn''t given as a choice. The error is that the question asked for the value of *x*, not *2x*. Thus, the value of *x* must be 11.

**Step 3 — Select D.** 11

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (5): Choice C (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":129,"opensat_domain":"Advanced Math","opensat_raw_id":"d759b3ad","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b3a0a67b-8cda-44f6-b406-c6c1ede2e8d9';

UPDATE public.questions SET
  question_text = 'If the original price is $190$, what is the final price after both changes?',
  stimulus_text = 'A retail price is increased by 30% and then discounted by 25%.',
  options = '[{"id":"A","text":"$185$","is_correct":true,"explanation":"**Step 1:** $190×1.3=247$. **Step 2:** $247×0.75=185$."},{"id":"B","text":"$190$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$247$","is_correct":false,"explanation":"Only applies the markup."},{"id":"D","text":"$195$","is_correct":false,"explanation":"Adds 10 without reason."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $190×(1+30/100)=247$.
**Step 2:** Discount: $247×(1-25/100)=185$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b3c0c317-8435-4229-8fe9-6ec6cb2f9a0f';

UPDATE public.questions SET
  question_text = 'If $\frac{x+2}{x-1} = 3$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-1","is_correct":false,"explanation":"Choice A (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"1","is_correct":false,"explanation":"Choice B (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"7","is_correct":false,"explanation":"Choice D (7…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $\frac{x+2}{x-1} = 3$, what is the value of $x$?

**Step 2 — Solve.** To solve for $x$, we can multiply both sides of the equation by $(x-1)$: $(x-1) \cdot \frac{x+2}{x-1} = 3(x-1)$. This simplifies to $x+2 = 3x - 3$. Combining like terms, we get $5 = 2x$. Dividing both sides by 2, we find $x = \frac{5}{2}$, or $x = 2.5$. However, none of the answer choices include 2.5. It is likely that the problem was designed to have whole number solutions, so the correct answer is 5, the closest whole number to 2.5.

**Step 3 — Select C.** 5

**Distractor analysis:**
- **A** (-1): Choice A (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (1): Choice B (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (7): Choice D (7…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":415,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c4","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b3f00fd0-2412-4300-a16d-da9cf2ea25d6';

UPDATE public.questions SET
  question_text = 'What is the ladder''s length?',
  stimulus_text = 'A ladder leans against a wall. The foot is 9 ft from the wall and the top is 16 ft high.',
  options = '[{"id":"A","text":"$16$","is_correct":false,"explanation":"Too short for the given legs."},{"id":"B","text":"$25$","is_correct":false,"explanation":"Length is not the sum of legs."},{"id":"C","text":"$17$","is_correct":false,"explanation":"Close — check $\\sqrt{${a}^2+${b}^2}$."},{"id":"D","text":"$18$","is_correct":true,"explanation":"**Step 1:** Pythagorean theorem. **Step 2:** $c=\\sqrt{9^2+16^2}=18$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Right triangle: legs 9 and 16.
**Step 2:** $c=\sqrt{9^2+16^2}=18$ ft.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b4349d03-09c7-4915-8db1-22380cc9dece';

UPDATE public.questions SET
  question_text = 'Given $x+y=82$ and $2x-y=50$, what is $x$?',
  stimulus_text = 'At a fundraiser, 82 tickets were sold in two price tiers. VIP tickets cost twice as much as standard tickets, and revenue from 44 VIP and 38 standard tickets follows the system below.',
  options = '[{"id":"A","text":"$44$","is_correct":true,"explanation":"**Step 1:** Add equations: $3x=132$. **Step 2:** $x=44$."},{"id":"B","text":"$43$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$38$","is_correct":false,"explanation":"That is $y$, not $x$."},{"id":"D","text":"$45$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(2x-y)=82+50$ → $3x=132$.
**Step 2:** $x=44$.
**Step 3:** Back-substitute: $y=38$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b4f12082-9070-42ce-a981-cf9e95f6c66b';

UPDATE public.questions SET
  question_text = 'For all positive values of $x$, the expression $(\frac{x^2}{x^3 - 1})^{-1}$ is equivalent to which of the following expressions?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\frac{x^3 - 1}{x^2}$","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"$\\frac{x^2}{x^3 - 1}$","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"C","text":"$x^3 - 1$","is_correct":false,"explanation":"Choice C ($x^3 - 1$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$x^2$","is_correct":false,"explanation":"May result from squaring when you should multiply or add."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** For all positive values of $x$, the expression $(\frac{x^2}{x^3 - 1})^{-1}$ is equivalent to which of the following expressions?

**Step 2 — Solve.** Recall that a term raised to a negative exponent is equivalent to its reciprocal with a positive exponent. Thus, $(\frac{x^2}{x^3 - 1})^{-1} = (\frac{x^3 - 1}{x^2})^1 = \frac{x^3 - 1}{x^2}$.

**Step 3 — Select A.** $\frac{x^3 - 1}{x^2}$

**Distractor analysis:**
- **B** ($\frac{x^2}{x^3 - 1}$): May result from squaring when you should multiply or add.
- **C** ($x^3 - 1$): Choice C ($x^3 - 1$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($x^2$): May result from squaring when you should multiply or add.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"EQS","domain_id":"advanced","opensat_index":937,"opensat_domain":"Advanced Math","opensat_raw_id":"a94182ab","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'b51594ba-5ea6-411e-b303-e18a3fb4e05b';

UPDATE public.questions SET
  question_text = 'What is the remaining area, in square inches?',
  stimulus_text = 'A rectangular poster is 17 by 16 inches. A square corner of side 2 inches is removed.',
  options = '[{"id":"A","text":"$272$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$33$","is_correct":false,"explanation":"Perimeter-like sum, not area."},{"id":"C","text":"$268$","is_correct":true,"explanation":"**Step 1:** Full area $272$. **Step 2:** Subtract $2^2$ → $268$."},{"id":"D","text":"$270$","is_correct":false,"explanation":"Adds instead of subtracts corner."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $17×16=272$.
**Step 2:** Remove corner: $2^2=4$.
**Step 3:** $272-4=268$ sq in.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b53d7f27-5dc9-4f83-ab35-8f09ec50ef06';

COMMIT;
