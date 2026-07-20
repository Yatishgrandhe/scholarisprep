BEGIN;
UPDATE public.questions SET
  question_text = 'The function \(f\) is defined by \(f(x) = 8\sqrt{x}\). For what value of \(x\) does \(f(x) = 48\)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"6","is_correct":false,"explanation":"Choice A (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"8","is_correct":false,"explanation":"Choice B (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"36","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"64","is_correct":false,"explanation":"Choice D (64…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function \(f\) is defined by \(f(x) = 8\sqrt{x}\). For what value of \(x\) does \(f(x) = 48\)?

**Step 2 — Solve.** To solve for x, we substitute 48 for f(x) in the given equation, which yields 48 = 8√x.  Dividing both sides of this equation by 8 yields 6 = √x. This can be rewritten as √x = 6. Squaring both sides of this equation yields x = 36. Therefore, the value of x for which f(x) = 48 is 36.

**Step 3 — Select C.** 36

**Distractor analysis:**
- **A** (6): Choice A (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (8): Choice B (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (64): Choice D (64…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":204,"opensat_domain":"Advanced Math","opensat_raw_id":"7a98f4e4","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'abaa77de-f713-421c-978f-509230aae74d';

UPDATE public.questions SET
  question_text = 'The equation  $\frac{2x + 1}{x - 1} = 5$ has how many solutions?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"Zero","is_correct":false,"explanation":"Choice A (Zero…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"One","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"Two","is_correct":false,"explanation":"Choice C (Two…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"Infinitely many","is_correct":false,"explanation":"Choice D (Infinitely many…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The equation  $\frac{2x + 1}{x - 1} = 5$ has how many solutions?

**Step 2 — Solve.** To solve for *x*, we multiply both sides of the equation by *x - 1*: $2x + 1 = 5(x - 1)$.  This simplifies to $2x + 1 = 5x - 5$.  Combining like terms, we get $6 = 3x$.  Dividing both sides by 3, we find that *x = 2*.  Since there''s only one solution, there''s only **one** solution.

**Step 3 — Select B.** One

**Distractor analysis:**
- **A** (Zero): Choice A (Zero…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (Two): Choice C (Two…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (Infinitely many): Choice D (Infinitely many…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":570,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_1","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'abc5b2fe-d504-4189-9f8f-4092e8bcf087';

UPDATE public.questions SET
  question_text = 'What is the value of the missing score $x$?',
  stimulus_text = 'Scores: 41, 45, 49, 53, and one score $x$ is missing. The mean is 45.4.',
  options = '[{"id":"A","text":"$37$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$39$","is_correct":true,"explanation":"**Step 1:** Sum needed $=45.4×5=227$. **Step 2:** $x=227-188=39$."},{"id":"C","text":"$41$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$45$","is_correct":false,"explanation":"Confuses mean with missing value."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Total sum $=45.4×5=227$.
**Step 2:** $x=227-188=39$.
**Step 3:** Verify mean.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'abf8aa8c-5057-4326-8616-0c1177678d73';

UPDATE public.questions SET
  question_text = 'A rectangle has a length of 12 cm and a width of 5 cm. What is the area of the rectangle, in square centimeters?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"17","is_correct":false,"explanation":"Choice A (17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"34","is_correct":false,"explanation":"Choice B (34…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"60","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"120","is_correct":false,"explanation":"Choice D (120…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A rectangle has a length of 12 cm and a width of 5 cm. What is the area of the rectangle, in square centimeters?

**Step 2 — Solve.** The area of a rectangle is found by multiplying its length and width. In this case, the area is 12 cm * 5 cm = 60 square centimeters.

**Step 3 — Select C.** 60

**Distractor analysis:**
- **A** (17): Choice A (17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (34): Choice B (34…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (120): Choice D (120…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":965,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a2","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'ac389cda-625d-4512-8b84-d3f7ca62f09b';

UPDATE public.questions SET
  question_text = 'How many milliliters of substance A are in the mixture?',
  stimulus_text = 'A chemist mixes substances A and B in ratio $5:6$ to make 126 milliliters of solution.',
  options = '[{"id":"A","text":"$54$","is_correct":false,"explanation":"Underestimates A''s share."},{"id":"B","text":"$56$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$57$","is_correct":true,"explanation":"**Step 1:** A''s fraction $\\frac{5}{11}$. **Step 2:** $\\frac{5}{11}×126=57$."},{"id":"D","text":"$126$","is_correct":false,"explanation":"That is the total volume."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** A''s share: $\frac{5}{11}$ of 126.
**Step 2:** $\frac{5}{11}×126=57$ mL.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'ac7c2574-abab-4d94-9198-62cae151f7ab';

UPDATE public.questions SET
  question_text = 'What is the solution to the equation $2x - 3 = 7$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"5","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"7","is_correct":false,"explanation":"Choice C (7…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"10","is_correct":false,"explanation":"Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** What is the solution to the equation $2x - 3 = 7$?

**Step 2 — Solve.** To solve for x, we first add 3 to both sides of the equation, which gives us $2x = 10$. Then, we divide both sides of the equation by 2, resulting in $x = 5$.

**Step 3 — Select B.** 5

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (7): Choice C (7…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (10): Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":746,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c2","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'ac9f5ebf-cb2b-499b-ab9a-8d03e4274f8f';

UPDATE public.questions SET
  question_text = 'What is the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 4 meters.',
  options = '[{"id":"A","text":"$25.12$","is_correct":true,"explanation":"**Step 1:** $C=2\\pi r$. **Step 2:** $2(3.14)(4)=25.12$."},{"id":"B","text":"$50.24$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not circumference."},{"id":"C","text":"$8.00$","is_correct":false,"explanation":"Diameter only."},{"id":"D","text":"$12.56$","is_correct":false,"explanation":"Half of circumference."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Formula $C=2\pi r$.
**Step 2:** $C≈2(3.14)(4)=25.12$ m.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'ace3f3b4-650b-4fc1-8826-fbba8d24d90b';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 6 units. What is the circumference of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"6\\pi","is_correct":false,"explanation":"Choice A (6\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"12\\pi","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"36\\pi","is_correct":false,"explanation":"Choice C (36\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"144\\pi","is_correct":false,"explanation":"Choice D (144\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 6 units. What is the circumference of the circle?

**Step 2 — Solve.** The circumference of a circle is given by the formula $C = 2\pi r$, where $r$ is the radius.  Substituting 6 for $r$ gives $C = 2\pi (6) = 12\pi$.

**Step 3 — Select B.** 12\pi

**Distractor analysis:**
- **A** (6\pi): Choice A (6\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (36\pi): Choice C (36\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (144\pi): Choice D (144\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":301,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"f779a5bf","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'ace7384e-5a02-42a0-b489-9ec196394fab';

COMMIT;
