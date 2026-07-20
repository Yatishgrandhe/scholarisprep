BEGIN;
UPDATE public.questions SET
  question_text = 'A group of friends are planning a trip. They decide to rent a car for $\$40 per day plus a $\$20 fee for insurance. If they rent the car for $d$ days, which of the following expressions represents the total cost, in dollars, of renting the car?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"40d + 20","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"20d + 40","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."},{"id":"C","text":"60d","is_correct":false,"explanation":"Choice C (60d…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"40(d + 20)","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A group of friends are planning a trip. They decide to rent a car for $\$40 per day plus a $\$20 fee for insurance. If they rent the car for $d$ days, which of the following expressions represents the total cost, in dollars, of renting the car?

**Step 2 — Solve.** The daily rental cost is $40, so for $d$ days, the cost would be $40d.  Adding the one-time insurance fee gives the total cost: $40d + 20$.

**Step 3 — Select A.** 40d + 20

**Distractor analysis:**
- **B** (20d + 40): Adds quantities that should be multiplied or compares unrelated terms.
- **C** (60d): Choice C (60d…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (40(d + 20)): Adds quantities that should be multiplied or compares unrelated terms.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":272,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c1","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '82731ee4-5e63-413c-a274-bb7e2c2360c1';
UPDATE public.questions SET
  question_text = 'If the original price is $490$, what is the final price after both changes?',
  stimulus_text = 'A retail price is increased by 30% and then discounted by 15%.',
  options = '[{"id":"A","text":"$541$","is_correct":true,"explanation":"**Step 1:** $490×1.3=637$. **Step 2:** $637×0.85=541$."},{"id":"B","text":"$490$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$637$","is_correct":false,"explanation":"Only applies the markup."},{"id":"D","text":"$551$","is_correct":false,"explanation":"Adds 10 without reason."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $490×(1+30/100)=637$.
**Step 2:** Discount: $637×(1-15/100)=541$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '82991e67-90dc-417a-a9b0-ace8d6d90c86';

UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(4x+51)^2 - (4x-51)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$816x$","is_correct":true,"explanation":"**Step 1:** Difference of squares in disguise: $(u+v)(u-v)$ with $u=4x+51$, $v=4x-51$ → $816x$."},{"id":"B","text":"$8x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$204x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$16x^2+2601$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=4x+51$, $v=4x-51$.
**Step 2:** $u^2-v^2=(u+v)(u-v)=(8x)(102)=816x$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '82a1758a-bbc7-4a29-a4d3-f1b96517fe0d';
UPDATE public.questions SET
  question_text = 'What is the ladder''s length?',
  stimulus_text = 'A ladder leans against a wall. The foot is 36 ft from the wall and the top is 43 ft high.',
  options = '[{"id":"A","text":"$54$","is_correct":false,"explanation":"Too short for the given legs."},{"id":"B","text":"$79$","is_correct":false,"explanation":"Length is not the sum of legs."},{"id":"C","text":"$55$","is_correct":false,"explanation":"Close — check $\\sqrt{${a}^2+${b}^2}$."},{"id":"D","text":"$56$","is_correct":true,"explanation":"**Step 1:** Pythagorean theorem. **Step 2:** $c=\\sqrt{36^2+43^2}=56$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Right triangle: legs 36 and 43.
**Step 2:** $c=\sqrt{36^2+43^2}=56$ ft.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '82a9b698-6640-44ee-aa12-f3f21a9e5077';
UPDATE public.questions SET
  question_text = 'Given $x+y=102$ and $2x-y=60$, what is $x$?',
  stimulus_text = 'At a fundraiser, 102 tickets were sold in two price tiers. VIP tickets cost twice as much as standard tickets, and revenue from 54 VIP and 48 standard tickets follows the system below.',
  options = '[{"id":"A","text":"$54$","is_correct":true,"explanation":"**Step 1:** Add equations: $3x=162$. **Step 2:** $x=54$."},{"id":"B","text":"$53$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$48$","is_correct":false,"explanation":"That is $y$, not $x$."},{"id":"D","text":"$55$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(2x-y)=102+60$ → $3x=162$.
**Step 2:** $x=54$.
**Step 3:** Back-substitute: $y=48$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '82b146d8-01b0-4a80-ac0f-207c99a89412';
UPDATE public.questions SET
  question_text = 'Given $x+y=58$ and $2x-y=38$, what is $x$?',
  stimulus_text = 'At a fundraiser, 58 tickets were sold in two price tiers. VIP tickets cost twice as much as standard tickets, and revenue from 32 VIP and 26 standard tickets follows the system below.',
  options = '[{"id":"A","text":"$32$","is_correct":true,"explanation":"**Step 1:** Add equations: $3x=96$. **Step 2:** $x=32$."},{"id":"B","text":"$31$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$26$","is_correct":false,"explanation":"That is $y$, not $x$."},{"id":"D","text":"$33$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(2x-y)=58+38$ → $3x=96$.
**Step 2:** $x=32$.
**Step 3:** Back-substitute: $y=26$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '82e76100-a432-4532-be4e-bcab19c571c5';
UPDATE public.questions SET
  question_text = 'A linear function $f$ models temperature change. Given $f(47)=43$ and $f(52)=63$, what is $f(-49)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-337$","is_correct":false,"explanation":"Adds slope once too many."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(-49$)."},{"id":"C","text":"$-344$","is_correct":false,"explanation":"Arithmetic error in point-slope form."},{"id":"D","text":"$-341$","is_correct":true,"explanation":"**Step 1:** Slope $m=4$. **Step 2:** $f(-49)=4(-49-47)+(43)=-341$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $m=\frac{63-43}{52-47}=4$.
**Step 2:** Point-slope: $f(-49)=4(-49-47)+(43)$.
**Step 3:** $f(-49)=-341$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '82f919c1-b3b2-4681-a8f8-5f0d25229723';
UPDATE public.questions SET
  question_text = 'In a right triangle, one angle measures 30 degrees, and the hypotenuse is 10 units long. What is the length of the side opposite the 30-degree angle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"5","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"5\\sqrt{3}","is_correct":false,"explanation":"Choice C (5\\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"10\\sqrt{3}","is_correct":false,"explanation":"Choice D (10\\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** In a right triangle, one angle measures 30 degrees, and the hypotenuse is 10 units long. What is the length of the side opposite the 30-degree angle?

**Step 2 — Solve.** A 30-60-90 triangle has side ratios of 1:√3:2.  Since the hypotenuse is 10 units, the side opposite the 30-degree angle is half the length of the hypotenuse, which is 10/2 = 5 units.

**Step 3 — Select B.** 5

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (5\sqrt{3}): Choice C (5\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (10\sqrt{3}): Choice D (10\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RIG","domain_id":"geometry","opensat_index":81,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a9","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '82fe2e77-1948-4656-8b96-39ab4b128244';
UPDATE public.questions SET
  question_text = 'If $x^2 - 2x - 8 = 0$, what is the sum of the solutions to the equation?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-2","is_correct":false,"explanation":"Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-1","is_correct":false,"explanation":"Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $x^2 - 2x - 8 = 0$, what is the sum of the solutions to the equation?

**Step 2 — Solve.** The sum of the solutions to a quadratic equation of the form ax^2 + bx + c = 0 is -b/a. In this case, a = 1 and b = -2, so the sum of the solutions is -(-2)/1 = 2.

**Step 3 — Select C.** 2

**Distractor analysis:**
- **A** (-2): Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-1): Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":556,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a4","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '830dbbca-8c9e-45ff-84c4-f5ef6d1729a3';
UPDATE public.questions SET
  question_text = 'The function *f* is defined by *f*(x) = *x*<sup>2</sup> + 5. If *f*(x) = 14, what are the possible values of *x*?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-3 and 3","is_correct":false,"explanation":"Choice A (-3 and 3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-2 and 2","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"-1 and 1","is_correct":false,"explanation":"Choice C (-1 and 1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"0 and 10","is_correct":false,"explanation":"Choice D (0 and 10…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The function *f* is defined by *f*(x) = *x*<sup>2</sup> + 5. If *f*(x) = 14, what are the possible values of *x*?

**Step 2 — Solve.** To solve for *x*, we first set *f*(x) equal to 14: *x*<sup>2</sup> + 5 = 14. Subtracting 5 from both sides, we get *x*<sup>2</sup> = 9. Taking the square root of both sides, we get *x* = ±3. Therefore, the possible values of *x* are -3 and 3.

**Step 3 — Select B.** -2 and 2

**Distractor analysis:**
- **A** (-3 and 3): Choice A (-3 and 3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (-1 and 1): Choice C (-1 and 1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (0 and 10): Choice D (0 and 10…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":818,"opensat_domain":"Advanced Math","opensat_raw_id":"51f9b47a","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '8324cd88-625d-4eb3-9399-4f95e0dea379';

UPDATE public.questions SET
  question_text = 'After $t=15$ hours, how many miles has the car traveled?',
  stimulus_text = 'A car''s distance $d$ (miles) after $t$ hours is modeled by $d=5t+12$.',
  options = '[{"id":"A","text":"$82$","is_correct":false,"explanation":"Uses $t-1$ instead of $t=15$."},{"id":"B","text":"$87$","is_correct":true,"explanation":"**Step 1:** Substitute $t=15$. **Step 2:** $d=5(15)+12=87$."},{"id":"C","text":"$88$","is_correct":false,"explanation":"Adds 1 to the correct distance."},{"id":"D","text":"$17$","is_correct":false,"explanation":"Adds slope and intercept instead of evaluating."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Plug in $t=15$: $d=5(15)+12$.
**Step 2:** Compute: $d=87$ miles.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '835ba3b0-b86f-497d-825a-05dccb70a751';
UPDATE public.questions SET
  question_text = 'A right triangle has legs of length 5 and 12. What is the length of the hypotenuse?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"11","is_correct":false,"explanation":"Choice A (11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"13","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"17","is_correct":false,"explanation":"Choice C (17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"19","is_correct":false,"explanation":"Choice D (19…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A right triangle has legs of length 5 and 12. What is the length of the hypotenuse?

**Step 2 — Solve.** The Pythagorean Theorem states that in a right triangle, the square of the hypotenuse is equal to the sum of the squares of the legs.  In this case, the hypotenuse is $\sqrt{5^2 + 12^2} = \sqrt{169} = 13$.

**Step 3 — Select B.** 13

**Distractor analysis:**
- **A** (11): Choice A (11…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (17): Choice C (17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (19): Choice D (19…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RIG","domain_id":"geometry","opensat_index":517,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '849ee65c-f538-4470-9039-7734446eda47';
UPDATE public.questions SET
  question_text = 'The height of a projectile is $h(t)=2(t-41)^2+43$, where $t$ is seconds. What is $h(44)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$43$","is_correct":false,"explanation":"That is the minimum height at the vertex."},{"id":"B","text":"$61$","is_correct":true,"explanation":"**Step 1:** $h(44)=2(44-41)^2+43=2(9)+43=61$."},{"id":"C","text":"$59$","is_correct":false,"explanation":"Subtracts $a$ incorrectly."},{"id":"D","text":"$45$","is_correct":false,"explanation":"Adds coefficient and constant."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $t=44$: $h(44)=2(44-41)^2+43$.
**Step 2:** $(44-41)^2=9$ → $h(44)=61$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '84b6eae5-d6ea-4721-bc61-c14c0f2538ed';
UPDATE public.questions SET
  question_text = 'A circle has a circumference of 12\pi. What is the area of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"12\\pi","is_correct":false,"explanation":"Choice A (12\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"36\\pi","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"144\\pi","is_correct":false,"explanation":"Choice C (144\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"144","is_correct":false,"explanation":"Choice D (144…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a circumference of 12\pi. What is the area of the circle?

**Step 2 — Solve.** The circumference of a circle is given by the formula C = 2\pi r, where r is the radius.  We are given that the circumference is 12\pi, so 12\pi = 2\pi r.  Dividing both sides by 2\pi gives r = 6.  The area of a circle is given by the formula A = \pi r^2, so the area of this circle is A = \pi (6)^2 = 36\pi.

**Step 3 — Select B.** 36\pi

**Distractor analysis:**
- **A** (12\pi): Choice A (12\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (144\pi): Choice C (144\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (144): Choice D (144…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":962,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '84bafb48-499c-4a7b-b205-df7d31b23a76';
UPDATE public.questions SET
  question_text = 'The function *f* is defined by *f*(x) = 3x^2 - 2x + 1. What is the value of *f*(2)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"9","is_correct":false,"explanation":"Choice A (9…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"11","is_correct":false,"explanation":"Choice B (11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"13","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"15","is_correct":false,"explanation":"Choice D (15…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function *f* is defined by *f*(x) = 3x^2 - 2x + 1. What is the value of *f*(2)?

**Step 2 — Solve.** To find *f*(2), we substitute 2 for *x* in the function: *f*(2) = 3(2)^2 - 2(2) + 1. Simplifying, we get *f*(2) = 12 - 4 + 1 = 9.

**Step 3 — Select C.** 13

**Distractor analysis:**
- **A** (9): Choice A (9…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (11): Choice B (11…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (15): Choice D (15…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":431,"opensat_domain":"Algebra","opensat_raw_id":"random_id_24","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '853a0bab-16f4-49b7-9a0e-57b18e381f12';
UPDATE public.questions SET
  question_text = 'What is the remaining area, in square inches?',
  stimulus_text = 'A rectangular poster is 16 by 15 inches. A square corner of side 2 inches is removed.',
  options = '[{"id":"A","text":"$240$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$31$","is_correct":false,"explanation":"Perimeter-like sum, not area."},{"id":"C","text":"$236$","is_correct":true,"explanation":"**Step 1:** Full area $240$. **Step 2:** Subtract $2^2$ → $236$."},{"id":"D","text":"$238$","is_correct":false,"explanation":"Adds instead of subtracts corner."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $16×15=240$.
**Step 2:** Remove corner: $2^2=4$.
**Step 3:** $240-4=236$ sq in.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '85774209-b285-4d39-9683-dc92dfd5a1bf';
UPDATE public.questions SET
  question_text = 'The function $f(x) = ax^2 + bx + c$, where $a$, $b$, and $c$ are constants, has a minimum value of 5 at $x = 2$. If the graph of $f(x)$ intersects the y-axis at $(0, 9)$, what is the value of $c$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"5","is_correct":false,"explanation":"Choice B (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"9","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"13","is_correct":false,"explanation":"Choice D (13…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function $f(x) = ax^2 + bx + c$, where $a$, $b$, and $c$ are constants, has a minimum value of 5 at $x = 2$. If the graph of $f(x)$ intersects the y-axis at $(0, 9)$, what is the value of $c$?

**Step 2 — Solve.** Since the function has a minimum value of 5 at x = 2, the vertex of the parabola is at (2, 5).  We can use the vertex form of a quadratic equation to write the equation:  $f(x) = a(x - 2)^2 + 5$.  We know the graph intersects the y-axis at (0, 9), which means f(0) = 9. Substituting these values into the equation, we get: 9 = a(0 - 2)^2 + 5.  Simplifying the equation, we get: 9 = 4a + 5.  Solving for a, we get a = 1.  Substituting this value of a back into the vertex form, we get: $f(x) = (x - 2)^2 + 5$.  Expanding the equation, we get: $f(x) = x^2 - 4x + 4 + 5$, or $f(x) = x^2 - 4x + 9$.  Therefore, the value of c is 9.

**Step 3 — Select C.** 9

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (5): Choice B (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (13): Choice D (13…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":715,"opensat_domain":"Advanced Math","opensat_raw_id":"4444222","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '85a6fa61-8640-45e9-8d5f-08b95b761565';
UPDATE public.questions SET
  question_text = 'A square has side length 10. What is the length of the diagonal of the square? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"10","is_correct":false,"explanation":"Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10$\\sqrt{2}$","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"20","is_correct":false,"explanation":"Choice C (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"100","is_correct":false,"explanation":"Choice D (100…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A square has side length 10. What is the length of the diagonal of the square? 

**Step 2 — Solve.** A diagonal of a square divides the square into two 45-45-90 right triangles. The ratio of the length of a leg to the length of the hypotenuse in a 45-45-90 triangle is 1:$\sqrt{2}$. Therefore, the length of the diagonal of the square, which is the hypotenuse of the 45-45-90 triangle, is $10\sqrt{2}$.

**Step 3 — Select B.** 10$\sqrt{2}$

**Distractor analysis:**
- **A** (10): Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (20): Choice C (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (100): Choice D (100…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":170,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c2","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '8605a8fe-5ee5-4e0e-bbd5-54445d08aa80';

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
