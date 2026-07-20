BEGIN;
UPDATE public.questions SET
  question_text = 'Which value of $x$ satisfies $4x + 5 > 182$ and represents a feasible weight?',
  stimulus_text = 'A package must weigh more than 182 grams but at most 195 grams to ship.',
  options = '[{"id":"A","text":"$42$","is_correct":false,"explanation":"Too small: $4(42)+5=173$."},{"id":"B","text":"$43$","is_correct":false,"explanation":"Still below threshold 182."},{"id":"C","text":"$44$","is_correct":false,"explanation":"Borderline; check strict inequality."},{"id":"D","text":"$45$","is_correct":true,"explanation":"**Step 1:** $4x > 177$. **Step 2:** $x > 44.25$. Smallest integer choice: 45."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Isolate: $4x > 177$.
**Step 2:** $x > 44.25$.
**Step 3:** Among choices, $45$ is the smallest valid value.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'ce362898-4794-4a99-8263-6ff8092abd00';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 units.  What is the area of the circle in square units? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\pi","is_correct":false,"explanation":"Choice A (5\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10\\pi","is_correct":false,"explanation":"Choice B (10\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"25\\pi","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"50\\pi","is_correct":false,"explanation":"Choice D (50\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 units.  What is the area of the circle in square units? 

**Step 2 — Solve.** The area of a circle is given by the formula $A = \pi r^2$, where $r$ is the radius.  Substituting 5 for $r$ in this formula gives $A = \pi(5)^2$, or $A = 25\pi$.

**Step 3 — Select C.** 25\pi

**Distractor analysis:**
- **A** (5\pi): Choice A (5\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (10\pi): Choice B (10\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (50\pi): Choice D (50\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":423,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c2","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'ce384369-6138-4aac-860a-401923e1007e';

UPDATE public.questions SET
  question_text = 'If the original price is $140$, what is the final price after both changes?',
  stimulus_text = 'A retail price is increased by 20% and then discounted by 20%.',
  options = '[{"id":"A","text":"$134$","is_correct":true,"explanation":"**Step 1:** $140×1.2=168$. **Step 2:** $168×0.8=134$."},{"id":"B","text":"$140$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$168$","is_correct":false,"explanation":"Only applies the markup."},{"id":"D","text":"$144$","is_correct":false,"explanation":"Adds 10 without reason."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $140×(1+20/100)=168$.
**Step 2:** Discount: $168×(1-20/100)=134$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'ce4dea7f-b99f-4d5f-a748-4521d091eb75';

UPDATE public.questions SET
  question_text = 'A survey of 200 people found that 120 people prefer brand A, and 80 people prefer brand B. What percentage of people prefer brand B?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"40%","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"60%","is_correct":false,"explanation":"Choice B (60%…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"80%","is_correct":false,"explanation":"Choice C (80%…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"120%","is_correct":false,"explanation":"Choice D (120%…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A survey of 200 people found that 120 people prefer brand A, and 80 people prefer brand B. What percentage of people prefer brand B?

**Step 2 — Solve.** To find the percentage of people who prefer brand B, divide the number of people who prefer brand B by the total number of people surveyed and multiply by 100%: (80/200) * 100% = 40%.

**Step 3 — Select A.** 40%

**Distractor analysis:**
- **B** (60%): Choice B (60%…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (80%): Choice C (80%…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (120%): Choice D (120%…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"PER","domain_id":"psda","opensat_index":911,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"4f556789","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'cefc1609-d9c5-4226-8be6-b78c65d74f86';

UPDATE public.questions SET
  question_text = 'The function $f(x)$ is defined as $f(x) = \frac{x^2 + 1}{x - 3}$. What is the value of $f(4)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-21","is_correct":false,"explanation":"Choice A (-21…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-5","is_correct":false,"explanation":"Choice B (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"17","is_correct":false,"explanation":"Choice C (17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"21","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The function $f(x)$ is defined as $f(x) = \frac{x^2 + 1}{x - 3}$. What is the value of $f(4)$?

**Step 2 — Solve.** To find the value of f(4), we substitute 4 for x in the function''s definition: $f(4) = \frac{4^2 + 1}{4 - 3} = \frac{16 + 1}{1} = \frac{17}{1} = 17$.

**Step 3 — Select D.** 21

**Distractor analysis:**
- **A** (-21): Choice A (-21…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-5): Choice B (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (17): Choice C (17…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":792,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_15","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'cf343bb4-b16a-40da-80d1-e2f5eea7e744';

UPDATE public.questions SET
  question_text = 'A linear function $f$ models temperature change. Given $f(39)=35$ and $f(44)=55$, what is $f(-41)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-281$","is_correct":false,"explanation":"Adds slope once too many."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(-41$)."},{"id":"C","text":"$-288$","is_correct":false,"explanation":"Arithmetic error in point-slope form."},{"id":"D","text":"$-285$","is_correct":true,"explanation":"**Step 1:** Slope $m=4$. **Step 2:** $f(-41)=4(-41-39)+(35)=-285$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $m=\frac{55-35}{44-39}=4$.
**Step 2:** Point-slope: $f(-41)=4(-41-39)+(35)$.
**Step 3:** $f(-41)=-285$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'cf572152-d533-4328-8473-b650eb60babf';

UPDATE public.questions SET
  question_text = 'Which choice best evaluates the claim?',
  stimulus_text = 'A influencer claims "nobody likes the new app" after asking 125 followers who commented on one critical post.',
  options = '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"**Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because 40 responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'cf80151b-bc5f-4f07-ae2d-68ebeabb6c56';

UPDATE public.questions SET
  question_text = 'What is the positive solution to $x^2 - 11x + 30 = 0$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$11$","is_correct":false,"explanation":"Sum of roots, not a root."},{"id":"C","text":"$6$","is_correct":true,"explanation":"**Step 1:** Factor $(x-5)(x-6)=0$. **Step 2:** Positive root is $6$."},{"id":"D","text":"$12$","is_correct":false,"explanation":"Not a solution."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-5)(x-6)=0$.
**Step 2:** Roots $x=5$ and $x=6$.
**Step 3:** Positive solution: $6$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'cfa2ba28-40f7-433b-b763-d7ef4561d349';

COMMIT;
