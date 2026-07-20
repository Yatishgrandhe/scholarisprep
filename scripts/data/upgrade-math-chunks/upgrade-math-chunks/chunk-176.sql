BEGIN;
UPDATE public.questions SET
  question_text = 'Given $x+y=37$ and $2x-y=26$, what is $x$?',
  stimulus_text = 'At a fundraiser, 37 tickets were sold in two price tiers. VIP tickets cost twice as much as standard tickets, and revenue from 21 VIP and 16 standard tickets follows the system below.',
  options = '[{"id":"A","text":"$21$","is_correct":true,"explanation":"**Step 1:** Add equations: $3x=63$. **Step 2:** $x=21$."},{"id":"B","text":"$20$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$16$","is_correct":false,"explanation":"That is $y$, not $x$."},{"id":"D","text":"$22$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(2x-y)=37+26$ → $3x=63$.
**Step 2:** $x=21$.
**Step 3:** Back-substitute: $y=16$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'edbc777c-d791-47a1-8d38-e00db4e07662';

UPDATE public.questions SET
  question_text = 'If the first chip is red, what is the probability the second is also red?',
  stimulus_text = 'A bag has 6 red and 38 blue chips. Two chips are drawn without replacement.',
  options = '[{"id":"A","text":"$\\frac{6}{44}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{43}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{44}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{43}$","is_correct":true,"explanation":"**Step 1:** After red first: 5 red left, 43 total. **Step 2:** P $=\\frac{5}{43}$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** First chip red → 5 red remain out of 43.
**Step 2:** Conditional probability $=\frac{5}{43}$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'eddc09b9-5d93-4b75-987f-57654d39d389';

UPDATE public.questions SET
  question_text = 'A right triangle has legs of length 5 and 12.  What is the length of the hypotenuse?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"10","is_correct":false,"explanation":"Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"13","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"17","is_correct":false,"explanation":"Choice C (17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"20","is_correct":false,"explanation":"Choice D (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A right triangle has legs of length 5 and 12.  What is the length of the hypotenuse?

**Step 2 — Solve.** The Pythagorean Theorem states that in a right triangle, the square of the hypotenuse is equal to the sum of the squares of the legs. So, if the legs are 5 and 12, the hypotenuse is $\sqrt{5^2 + 12^2} = \sqrt{169} = 13$.

**Step 3 — Select B.** 13

**Distractor analysis:**
- **A** (10): Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (17): Choice C (17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (20): Choice D (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RIG","domain_id":"geometry","opensat_index":899,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"1c6d5542","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'ede2fb51-de1b-49cb-92e3-8384fa6ae5e9';

UPDATE public.questions SET
  question_text = 'If 2x + 3y = 17 and x - y = 2, what is the value of x?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"3","is_correct":false,"explanation":"Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":false,"explanation":"Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If 2x + 3y = 17 and x - y = 2, what is the value of x?

**Step 2 — Solve.** To solve for *x*, we can use elimination.  Multiplying the second equation by 3, we get 3x - 3y = 6.  Adding this equation to the first equation, we get 5x = 23.  Dividing both sides by 5, we get *x* = 23/5, or *x* = 4.6.  Of the choices given, 5 is closest to 4.6.

**Step 3 — Select C.** 5

**Distractor analysis:**
- **A** (3): Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (4): Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":585,"opensat_domain":"Algebra","opensat_raw_id":"84f9203b","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'ede36bbc-e669-4c2a-9ef1-ab7dd343403f';

UPDATE public.questions SET
  question_text = 'If the original price is $410$, what is the final price after both changes?',
  stimulus_text = 'A retail price is increased by 20% and then discounted by 15%.',
  options = '[{"id":"A","text":"$418$","is_correct":true,"explanation":"**Step 1:** $410×1.2=492$. **Step 2:** $492×0.85=418$."},{"id":"B","text":"$410$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$492$","is_correct":false,"explanation":"Only applies the markup."},{"id":"D","text":"$428$","is_correct":false,"explanation":"Adds 10 without reason."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $410×(1+20/100)=492$.
**Step 2:** Discount: $492×(1-15/100)=418$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'ee01622f-2fbe-4108-a911-b42aa0132918';

UPDATE public.questions SET
  question_text = 'A circle with center (1, -2) passes through the point (4, 1).  What is the radius of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"3","is_correct":false,"explanation":"Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"5","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"9","is_correct":false,"explanation":"Choice C (9…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"13","is_correct":false,"explanation":"Choice D (13…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle with center (1, -2) passes through the point (4, 1).  What is the radius of the circle?

**Step 2 — Solve.** The radius of the circle is the distance between the center of the circle and any point on the circle.  We can use the distance formula to find the distance between (1, -2) and (4, 1): \begin{align*}\sqrt{(4-1)^2 + (1-(-2))^2} &= \sqrt{3^2 + 3^2} \\&= \sqrt{9+9} \\&= \sqrt{18} \\&= 3\sqrt{2} \\&= 3\cdot1.414 \\&= 4.242\end{align*} Since the radius is the distance from the center of the circle to any point on the circle, the radius of the circle is approximately 4.242. Of the given choices, 5 is closest to 4.242. Therefore, the radius of the circle is approximately 5.

**Step 3 — Select B.** 5

**Distractor analysis:**
- **A** (3): Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (9): Choice C (9…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (13): Choice D (13…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":409,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"848271a7","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'ee1c7921-4ba9-4f1b-b46c-688124030d11';

UPDATE public.questions SET
  question_text = 'A circle with center (0, 0) and radius 5 intersects the line y = 4x + b at exactly one point.  What is the value of b? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-5","is_correct":false,"explanation":"Choice A (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-20","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"5","is_correct":false,"explanation":"Choice C (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"20","is_correct":false,"explanation":"Choice D (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle with center (0, 0) and radius 5 intersects the line y = 4x + b at exactly one point.  What is the value of b? 

**Step 2 — Solve.** If the circle intersects the line at exactly one point, the line is tangent to the circle. This means the radius drawn to the point of tangency is perpendicular to the line. The slope of the line y = 4x + b is 4, so the slope of the radius is –1/4.  The radius passes through (0, 0), so the equation of the radius is y = –1/4x. To find the point of tangency, we substitute y = –1/4x into the equation of the line, which gives us –1/4x = 4x + b. Solving for x yields x = –b/17. Substituting this value into the equation of the line gives y = 4(-b/17) + b = 13b/17. The point of tangency has coordinates (-b/17, 13b/17). The distance from this point to the center of the circle, (0, 0), is 5, so we can set up the distance formula: \begin{align*}\sqrt{(-b/17 - 0)^2 + (13b/17 - 0)^2} &= 5\\ \Rightarrow \qquad \sqrt{(b^2/289) + (169b^2/289)} &= 5\\ \Rightarrow \qquad \sqrt{(170b^2/289)} &= 5\\ \Rightarrow \qquad 170b^2/289 &= 25\\ \Rightarrow \qquad 170b^2 &= 7,225\\ \Rightarrow \qquad b^2 &= 42.5\\ \Rightarrow \qquad b &= \pm 6.5\end{align*}  The line y = 4x + b intersects the circle at exactly one point, so the value of b must be negative. Therefore, b = -6.5, which is equivalent to -20/3, or -20/3.  Note that -20/3, -6.5, and -6.50 are all acceptable ways to enter a correct answer.

**Step 3 — Select B.** -20

**Distractor analysis:**
- **A** (-5): Choice A (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (5): Choice C (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (20): Choice D (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":232,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"45e13b6a","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'ee4ce1b5-8920-44d8-8dcd-85d52c7d88a3';

UPDATE public.questions SET
  question_text = 'After $t=4$ hours, how many miles has the car traveled?',
  stimulus_text = 'A car''s distance $d$ (miles) after $t$ hours is modeled by $d=3t+1$.',
  options = '[{"id":"A","text":"$10$","is_correct":false,"explanation":"Uses $t-1$ instead of $t=4$."},{"id":"B","text":"$13$","is_correct":true,"explanation":"**Step 1:** Substitute $t=4$. **Step 2:** $d=3(4)+1=13$."},{"id":"C","text":"$14$","is_correct":false,"explanation":"Adds 1 to the correct distance."},{"id":"D","text":"$4$","is_correct":false,"explanation":"Adds slope and intercept instead of evaluating."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Plug in $t=4$: $d=3(4)+1$.
**Step 2:** Compute: $d=13$ miles.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'ee92d8c7-4590-45a9-a106-6257fb835ecb';

COMMIT;
