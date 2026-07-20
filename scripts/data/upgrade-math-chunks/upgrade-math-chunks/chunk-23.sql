BEGIN;
UPDATE public.questions SET
  question_text = 'If the original price is $550$, what is the final price after both changes?',
  stimulus_text = 'A retail price is increased by 30% and then discounted by 25%.',
  options = '[{"id":"A","text":"$536$","is_correct":true,"explanation":"**Step 1:** $550×1.3=715$. **Step 2:** $715×0.75=536$."},{"id":"B","text":"$550$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$715$","is_correct":false,"explanation":"Only applies the markup."},{"id":"D","text":"$546$","is_correct":false,"explanation":"Adds 10 without reason."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $550×(1+30/100)=715$.
**Step 2:** Discount: $715×(1-25/100)=536$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '1dcafd65-aefc-4443-80a1-aa9ff16b998d';

UPDATE public.questions SET
  question_text = 'If the original price is $570$, what is the final price after both changes?',
  stimulus_text = 'A retail price is increased by 25% and then discounted by 15%.',
  options = '[{"id":"A","text":"$606$","is_correct":true,"explanation":"**Step 1:** $570×1.25=713$. **Step 2:** $713×0.85=606$."},{"id":"B","text":"$570$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$713$","is_correct":false,"explanation":"Only applies the markup."},{"id":"D","text":"$616$","is_correct":false,"explanation":"Adds 10 without reason."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $570×(1+25/100)=713$.
**Step 2:** Discount: $713×(1-15/100)=606$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '1defe636-e0a9-4adf-b264-be2273c313df';

UPDATE public.questions SET
  question_text = 'A survey asked 1000 people whether they prefer to read books or watch movies. Of those surveyed, 600 people prefer to read books, and 400 people prefer to watch movies.  What percentage of the people surveyed prefer to watch movies?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"40%","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"60%","is_correct":false,"explanation":"Choice B (60%…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"400%","is_correct":false,"explanation":"Choice C (400%…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"600%","is_correct":false,"explanation":"Choice D (600%…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A survey asked 1000 people whether they prefer to read books or watch movies. Of those surveyed, 600 people prefer to read books, and 400 people prefer to watch movies.  What percentage of the people surveyed prefer to watch movies?

**Step 2 — Solve.** The percentage of people surveyed who prefer to watch movies can be found by dividing the number of people who prefer to watch movies by the total number of people surveyed and multiplying by 100%:  (400 / 1000) * 100% = 40%.

**Step 3 — Select A.** 40%

**Distractor analysis:**
- **B** (60%): Choice B (60%…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (400%): Choice C (400%…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (600%): Choice D (600%…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"PER","domain_id":"psda","opensat_index":903,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"545c7649","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '1e032bfa-8de9-4c77-b566-77dc8901ec8c';

UPDATE public.questions SET
  question_text = 'A linear function $f$ models temperature change. Given $f(27)=23$ and $f(32)=43$, what is $f(-29)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-197$","is_correct":false,"explanation":"Adds slope once too many."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(-29$)."},{"id":"C","text":"$-204$","is_correct":false,"explanation":"Arithmetic error in point-slope form."},{"id":"D","text":"$-201$","is_correct":true,"explanation":"**Step 1:** Slope $m=4$. **Step 2:** $f(-29)=4(-29-27)+(23)=-201$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $m=\frac{43-23}{32-27}=4$.
**Step 2:** Point-slope: $f(-29)=4(-29-27)+(23)$.
**Step 3:** $f(-29)=-201$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '1e166b16-8e15-4e1c-ab0f-dc366a299db6';

UPDATE public.questions SET
  question_text = 'If $x^2 + 2x + 1 = 4$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"-1","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"-3","is_correct":false,"explanation":"Choice D (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $x^2 + 2x + 1 = 4$, what is the value of $x$?

**Step 2 — Solve.** The equation is a perfect square trinomial: $(x+1)^2 = 4$. Taking the square root of both sides gives $x+1 = \pm 2$.  Solving for x, we get $x = 1 \pm 2$, which means $x = 3$ or $x = -1$. The question asks for the value of x, so the answer is -1.

**Step 3 — Select C.** -1

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (-3): Choice D (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":889,"opensat_domain":"Advanced Math","opensat_raw_id":"f2947dd1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '1e8cfd95-a4de-423c-af1d-0f474859a89c';

UPDATE public.questions SET
  question_text = 'Given $x+y=66$ and $2x-y=42$, what is $x$?',
  stimulus_text = 'At a fundraiser, 66 tickets were sold in two price tiers. VIP tickets cost twice as much as standard tickets, and revenue from 36 VIP and 30 standard tickets follows the system below.',
  options = '[{"id":"A","text":"$36$","is_correct":true,"explanation":"**Step 1:** Add equations: $3x=108$. **Step 2:** $x=36$."},{"id":"B","text":"$35$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$30$","is_correct":false,"explanation":"That is $y$, not $x$."},{"id":"D","text":"$37$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(2x-y)=66+42$ → $3x=108$.
**Step 2:** $x=36$.
**Step 3:** Back-substitute: $y=30$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '1eb74ff8-302b-490c-b713-4eb5f419fe6b';

UPDATE public.questions SET
  question_text = 'A linear function $f$ models temperature change. Given $f(18)=14$ and $f(23)=34$, what is $f(-20)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-134$","is_correct":false,"explanation":"Adds slope once too many."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(-20$)."},{"id":"C","text":"$-141$","is_correct":false,"explanation":"Arithmetic error in point-slope form."},{"id":"D","text":"$-138$","is_correct":true,"explanation":"**Step 1:** Slope $m=4$. **Step 2:** $f(-20)=4(-20-18)+(14)=-138$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $m=\frac{34-14}{23-18}=4$.
**Step 2:** Point-slope: $f(-20)=4(-20-18)+(14)$.
**Step 3:** $f(-20)=-138$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '1ee1f2b6-d177-48e8-a4eb-0578903cf3a9';

UPDATE public.questions SET
  question_text = 'If the final reading is 398 when $r=49$, and the process is modeled by $8r+6$, what value of $x$ satisfies $8x+6=398$?',
  stimulus_text = 'A technician adjusts a sensor reading. First the raw value $r$ is scaled by 8, then 6 is added.',
  options = '[{"id":"A","text":"$53$","is_correct":false,"explanation":"After subtracting 6, divide by 8; this is too small."},{"id":"B","text":"$54$","is_correct":false,"explanation":"One less than the correct value."},{"id":"C","text":"$55$","is_correct":true,"explanation":"**Step 1:** $8x = 392$. **Step 2:** $x = 55$."},{"id":"D","text":"$8$","is_correct":false,"explanation":"That is the scale factor, not $x$."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Subtract 6: $8x=392$.
**Step 2:** Divide by 8: $x=55$.
**Step 3:** Verify: $8(55)+6=398$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '1f0a6ca3-32ed-4178-b76d-ffe9cef840c6';

COMMIT;
