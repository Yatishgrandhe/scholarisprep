BEGIN;
UPDATE public.questions SET
  question_text = 'What is the slope, and what does it represent?',
  stimulus_text = 'A line models cost vs. units produced, passing through $(16,47)$ and $(22,65)$.',
  options = '[{"id":"A","text":"$3$; cost increases $3$ per unit","is_correct":true,"explanation":"**Step 1:** Slope $=\\frac{65-47}{22-16}=3$. Interpretation: $3$ dollars per unit."},{"id":"B","text":"$2$; cost decreases per unit","is_correct":false,"explanation":"Wrong sign and magnitude."},{"id":"C","text":"$65$; total cost","is_correct":false,"explanation":"That is a coordinate, not slope."},{"id":"D","text":"$6$; time elapsed","is_correct":false,"explanation":"Horizontal change only."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Slope $=\frac{18}{6}=3$.
**Step 2:** In context, each additional unit adds $3$ to cost.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '1747770a-920c-4520-9546-6f9b3066df1c';

UPDATE public.questions SET
  question_text = 'The average of 5 numbers is 12.  If one of the numbers is removed, the average of the remaining 4 numbers is 10. What is the value of the number that was removed? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"10","is_correct":false,"explanation":"Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"12","is_correct":false,"explanation":"Choice B (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"18","is_correct":false,"explanation":"Choice C (18…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"20","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The average of 5 numbers is 12.  If one of the numbers is removed, the average of the remaining 4 numbers is 10. What is the value of the number that was removed? 

**Step 2 — Solve.** The sum of the original 5 numbers is 5 * 12 = 60. The sum of the remaining 4 numbers is 4 * 10 = 40. Therefore, the number that was removed is 60 - 40 = 20.

**Step 3 — Select D.** 20

**Distractor analysis:**
- **A** (10): Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (12): Choice B (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (18): Choice C (18…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":757,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c5","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '17577415-fa6c-44e3-8cc4-69b26fadba7d';

UPDATE public.questions SET
  question_text = 'Given $x+y=64$ and $2x-y=41$, what is $x$?',
  stimulus_text = 'At a fundraiser, 64 tickets were sold in two price tiers. VIP tickets cost twice as much as standard tickets, and revenue from 35 VIP and 29 standard tickets follows the system below.',
  options = '[{"id":"A","text":"$35$","is_correct":true,"explanation":"**Step 1:** Add equations: $3x=105$. **Step 2:** $x=35$."},{"id":"B","text":"$34$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$29$","is_correct":false,"explanation":"That is $y$, not $x$."},{"id":"D","text":"$36$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(2x-y)=64+41$ → $3x=105$.
**Step 2:** $x=35$.
**Step 3:** Back-substitute: $y=29$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '1769e153-7e33-48ff-90fd-6aebd076801f';

UPDATE public.questions SET
  question_text = 'How many milliliters of substance A are in the mixture?',
  stimulus_text = 'A chemist mixes substances A and B in ratio $5:7$ to make 108 milliliters of solution.',
  options = '[{"id":"A","text":"$42$","is_correct":false,"explanation":"Underestimates A''s share."},{"id":"B","text":"$44$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$45$","is_correct":true,"explanation":"**Step 1:** A''s fraction $\\frac{5}{12}$. **Step 2:** $\\frac{5}{12}×108=45$."},{"id":"D","text":"$108$","is_correct":false,"explanation":"That is the total volume."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** A''s share: $\frac{5}{12}$ of 108.
**Step 2:** $\frac{5}{12}×108=45$ mL.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '17adc1f6-afdf-4248-8bc7-772969dec7d3';

UPDATE public.questions SET
  question_text = 'If $x^2 + 2x - 15 = 0$, what are the solutions for $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"x = -5, x = 3","is_correct":false,"explanation":"Choice A (x = -5, x = 3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"x = 5, x = -3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"x = -15, x = 1","is_correct":false,"explanation":"Choice C (x = -15, x = 1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"x = 15, x = -1","is_correct":false,"explanation":"Choice D (x = 15, x = -1…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $x^2 + 2x - 15 = 0$, what are the solutions for $x$?

**Step 2 — Solve.** To solve for $x$, we can factor the quadratic equation: $(x + 5)(x - 3) = 0$. For this equation to equal 0, either $(x + 5) = 0$ or $(x - 3) = 0$. Solving for $x$ in each case, we get $x = -5$ or $x = 3$.

**Step 3 — Select B.** x = 5, x = -3

**Distractor analysis:**
- **A** (x = -5, x = 3): Choice A (x = -5, x = 3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (x = -15, x = 1): Choice C (x = -15, x = 1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (x = 15, x = -1): Choice D (x = 15, x = -1…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":787,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_b8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '185b37c7-6ccd-45d3-b84b-218713606368';

UPDATE public.questions SET
  question_text = 'The function \(f\) is defined by \(f(x) = 8\sqrt{x}\). For what value of \(x\) does \(f(x) = 48\)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"6","is_correct":false,"explanation":"Choice A (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"8","is_correct":false,"explanation":"Choice B (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"36","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"64","is_correct":false,"explanation":"Choice D (64…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function \(f\) is defined by \(f(x) = 8\sqrt{x}\). For what value of \(x\) does \(f(x) = 48\)?

**Step 2 — Solve.** To solve for x, we set the function equal to 48:  $8\sqrt{x} = 48$. Dividing both sides by 8, we get  $\sqrt{x} = 6$.  Squaring both sides gives us $x = 36$.

**Step 3 — Select C.** 36

**Distractor analysis:**
- **A** (6): Choice A (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (8): Choice B (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (64): Choice D (64…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":123,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a3","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '18828a6e-70a1-4949-99c8-4bcd468f151b';

UPDATE public.questions SET
  question_text = 'A linear function $f$ models temperature change. Given $f(47)=43$ and $f(52)=63$, what is $f(-49)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-337$","is_correct":false,"explanation":"Adds slope once too many."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(-49$)."},{"id":"C","text":"$-344$","is_correct":false,"explanation":"Arithmetic error in point-slope form."},{"id":"D","text":"$-341$","is_correct":true,"explanation":"**Step 1:** Slope $m=4$. **Step 2:** $f(-49)=4(-49-47)+(43)=-341$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $m=\frac{63-43}{52-47}=4$.
**Step 2:** Point-slope: $f(-49)=4(-49-47)+(43)$.
**Step 3:** $f(-49)=-341$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '18b1f8ab-c4d6-42c8-bf02-9210a6611997';

UPDATE public.questions SET
  question_text = 'If $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?

**Step 2 — Solve.** We can solve this system of equations using elimination.  Multiplying the second equation by 3, we get $3x - 3y = 3$. Adding this equation to the first equation, we get $5x = 15$. Dividing both sides by 5, we get $x=3$.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":709,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a4","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '18ca3b23-4407-4d45-b84f-8fc34b6b4da9';

COMMIT;
