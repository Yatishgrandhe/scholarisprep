BEGIN;
UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 centimeters. What is the circumference of the circle, in centimeters?  (Express your answer in terms of $\pi$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5$\\pi$","is_correct":false,"explanation":"Choice A (5$\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10$\\pi$","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"25$\\pi$","is_correct":false,"explanation":"Choice C (25$\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"50$\\pi$","is_correct":false,"explanation":"Choice D (50$\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 centimeters. What is the circumference of the circle, in centimeters?  (Express your answer in terms of $\pi$.)

**Step 2 — Solve.** The circumference of a circle is given by the formula $C = 2\pi r$, where r is the radius of the circle.  Substituting 5 for r, we get $C = 2\pi(5) = 10\pi$.

**Step 3 — Select B.** 10$\pi$

**Distractor analysis:**
- **A** (5$\pi$): Choice A (5$\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (25$\pi$): Choice C (25$\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (50$\pi$): Choice D (50$\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":550,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_e4","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '33ae0ad6-d942-42f6-89a9-1682ba16bbf9';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 centimeters. What is the circumference of the circle, in centimeters? (Express your answer in terms of $\pi$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\pi$","is_correct":false,"explanation":"Choice A ($\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"$5\\pi$","is_correct":false,"explanation":"Choice B ($5\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$10\\pi$","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"$25\\pi$","is_correct":false,"explanation":"Choice D ($25\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 centimeters. What is the circumference of the circle, in centimeters? (Express your answer in terms of $\pi$.)

**Step 2 — Solve.** The circumference of a circle is given by the formula $C = 2\pi r$, where $r$ is the radius.  Substituting 5 for $r$ gives us $C = 2\pi (5) = 10\pi$.

**Step 3 — Select C.** $10\pi$

**Distractor analysis:**
- **A** ($\pi$): Choice A ($\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** ($5\pi$): Choice B ($5\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($25\pi$): Choice D ($25\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":785,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c3","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '33f0a17a-564e-4edc-9ff7-e11869bfbce4';

UPDATE public.questions SET
  question_text = 'The function $f(x)$ is defined by $f(x) = 2x^2 + 3x - 5$. What is the value of $f(-2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-15","is_correct":false,"explanation":"Choice A (-15…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-9","is_correct":false,"explanation":"Choice B (-9…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"3","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"9","is_correct":false,"explanation":"Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function $f(x)$ is defined by $f(x) = 2x^2 + 3x - 5$. What is the value of $f(-2)$?

**Step 2 — Solve.** To find the value of f(-2), we substitute -2 for x in the function f(x).  This gives us f(-2) = 2(-2)^2 + 3(-2) - 5 = 8 - 6 - 5 = 3.

**Step 3 — Select C.** 3

**Distractor analysis:**
- **A** (-15): Choice A (-15…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-9): Choice B (-9…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (9): Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":208,"opensat_domain":"Advanced Math","opensat_raw_id":"34c8629c","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '34104125-77b6-42d0-88cc-a081cdea5ec0';

UPDATE public.questions SET
  question_text = 'A survey of 100 students found that 60 students like to play basketball, 50 students like to play soccer, and 20 students like to play both.  How many students like to play only basketball?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"10","is_correct":false,"explanation":"Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"20","is_correct":false,"explanation":"Choice B (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"40","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"60","is_correct":false,"explanation":"Choice D (60…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 students found that 60 students like to play basketball, 50 students like to play soccer, and 20 students like to play both.  How many students like to play only basketball?

**Step 2 — Solve.** To find the number of students who like only basketball, we need to subtract the number of students who like both sports from the total number of students who like basketball.  This gives us 60 – 20 = 40.

**Step 3 — Select C.** 40

**Distractor analysis:**
- **A** (10): Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (20): Choice B (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (60): Choice D (60…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":102,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c9","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '341fc897-c0ab-408d-9ecd-4cda4f3796b0';

UPDATE public.questions SET
  question_text = 'Given $x+y=35$ and $2x-y=25$, what is $x$?',
  stimulus_text = 'At a fundraiser, 35 tickets were sold in two price tiers. VIP tickets cost twice as much as standard tickets, and revenue from 20 VIP and 15 standard tickets follows the system below.',
  options = '[{"id":"A","text":"$20$","is_correct":true,"explanation":"**Step 1:** Add equations: $3x=60$. **Step 2:** $x=20$."},{"id":"B","text":"$19$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$15$","is_correct":false,"explanation":"That is $y$, not $x$."},{"id":"D","text":"$21$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(2x-y)=35+25$ → $3x=60$.
**Step 2:** $x=20$.
**Step 3:** Back-substitute: $y=15$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '342ce204-d025-4f19-8d5e-0a5bd451e37b';

UPDATE public.questions SET
  question_text = 'In a right triangle, one of the acute angles measures 30 degrees. If the hypotenuse has a length of 10, what is the length of the shorter leg?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"5\\sqrt{3}","is_correct":false,"explanation":"Choice B (5\\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"10\\sqrt{3}","is_correct":false,"explanation":"Choice C (10\\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"10\\sqrt{2}","is_correct":false,"explanation":"Choice D (10\\sqrt{2}…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** In a right triangle, one of the acute angles measures 30 degrees. If the hypotenuse has a length of 10, what is the length of the shorter leg?

**Step 2 — Solve.** In a 30-60-90 right triangle, the shorter leg is half the length of the hypotenuse. Since the hypotenuse is 10, the shorter leg has a length of 10/2 = 5.

**Step 3 — Select A.** 5

**Distractor analysis:**
- **B** (5\sqrt{3}): Choice B (5\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (10\sqrt{3}): Choice C (10\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (10\sqrt{2}): Choice D (10\sqrt{2}…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RIG","domain_id":"geometry","opensat_index":121,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"f876d354","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '343448c2-3bbd-41cd-b116-b8147b1837ec';

UPDATE public.questions SET
  question_text = 'Which value of $x$ satisfies $6x + 6 > 315$ and represents a feasible weight?',
  stimulus_text = 'A package must weigh more than 315 grams but at most 328 grams to ship.',
  options = '[{"id":"A","text":"$49$","is_correct":false,"explanation":"Too small: $6(49)+6=300$."},{"id":"B","text":"$50$","is_correct":false,"explanation":"Still below threshold 315."},{"id":"C","text":"$51$","is_correct":false,"explanation":"Borderline; check strict inequality."},{"id":"D","text":"$52$","is_correct":true,"explanation":"**Step 1:** $6x > 309$. **Step 2:** $x > 51.5$. Smallest integer choice: 52."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Isolate: $6x > 309$.
**Step 2:** $x > 51.50$.
**Step 3:** Among choices, $52$ is the smallest valid value.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '3437398f-75ba-4c87-ae93-015f098dd038';

UPDATE public.questions SET
  question_text = 'If the original price is $110$, what is the final price after both changes?',
  stimulus_text = 'A retail price is increased by 20% and then discounted by 25%.',
  options = '[{"id":"A","text":"$99$","is_correct":true,"explanation":"**Step 1:** $110×1.2=132$. **Step 2:** $132×0.75=99$."},{"id":"B","text":"$110$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$132$","is_correct":false,"explanation":"Only applies the markup."},{"id":"D","text":"$109$","is_correct":false,"explanation":"Adds 10 without reason."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $110×(1+20/100)=132$.
**Step 2:** Discount: $132×(1-25/100)=99$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '346ec3e4-7e05-4a9c-a102-2cb2662e86af';

COMMIT;
