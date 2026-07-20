BEGIN;
UPDATE public.questions SET
  question_text = 'The function *f* is defined by *f*(x) = 3x^2 - 2x + 1. What is the value of *f*(2)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"9","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"11","is_correct":false,"explanation":"Choice B (11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"13","is_correct":false,"explanation":"Choice C (13…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"17","is_correct":false,"explanation":"Choice D (17…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The function *f* is defined by *f*(x) = 3x^2 - 2x + 1. What is the value of *f*(2)?

**Step 2 — Solve.** To find *f*(2), we substitute 2 for *x* in the expression for *f*(x). This gives us *f*(2) = 3(2)^2 - 2(2) + 1 = 3(4) - 4 + 1 = 12 - 4 + 1 = 9.

**Step 3 — Select A.** 9

**Distractor analysis:**
- **B** (11): Choice B (11…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (13): Choice C (13…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (17): Choice D (17…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":12,"opensat_domain":"Advanced Math","opensat_raw_id":"79802835","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '80d94a40-ded8-45bc-b3f2-13b724388785';

UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(3x+50)^2 - (3x-50)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$600x$","is_correct":true,"explanation":"**Step 1:** Difference of squares in disguise: $(u+v)(u-v)$ with $u=3x+50$, $v=3x-50$ → $600x$."},{"id":"B","text":"$6x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$200x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$9x^2+2500$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=3x+50$, $v=3x-50$.
**Step 2:** $u^2-v^2=(u+v)(u-v)=(6x)(100)=600x$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '80fcc709-9879-4279-87dc-cb8a3a6cc967';

UPDATE public.questions SET
  question_text = 'A circle has a diameter of 10. What is the circumference of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\pi","is_correct":false,"explanation":"Choice A (5\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10\\pi","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"20\\pi","is_correct":false,"explanation":"Choice C (20\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"100\\pi","is_correct":false,"explanation":"Choice D (100\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a diameter of 10. What is the circumference of the circle?

**Step 2 — Solve.** The circumference of a circle is given by the formula C = 2\pi r, where r is the radius. Since the diameter is 10, the radius is 5.  Therefore, the circumference is C = 2\pi (5) = 10\pi.

**Step 3 — Select B.** 10\pi

**Distractor analysis:**
- **A** (5\pi): Choice A (5\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (20\pi): Choice C (20\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (100\pi): Choice D (100\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":641,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c9","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '810e92e5-2b3d-4824-8ea7-f0a7c56d6910';

UPDATE public.questions SET
  question_text = 'A circle has a circumference of 12\pi. What is the radius of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"3","is_correct":false,"explanation":"Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"6","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"12","is_correct":false,"explanation":"Choice C (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"24","is_correct":false,"explanation":"Choice D (24…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a circumference of 12\pi. What is the radius of the circle?

**Step 2 — Solve.** The circumference of a circle is given by the formula C = 2\pi r, where C is the circumference and r is the radius.  We are given that C = 12\pi. Substituting 12\pi for C in the formula gives 12\pi = 2\pi r.  Dividing both sides of this equation by 2\pi gives 6 = r. Therefore, the radius of the circle is 6.

**Step 3 — Select B.** 6

**Distractor analysis:**
- **A** (3): Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (12): Choice C (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (24): Choice D (24…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":753,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"4534957f","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '8134f9e3-d5db-4b39-bb44-59bbdb6caf7f';

UPDATE public.questions SET
  question_text = 'What is the measure of the adjacent interior angle?',
  stimulus_text = 'An exterior angle of a triangle measures 158°.',
  options = '[{"id":"A","text":"$158°$","is_correct":false,"explanation":"That is the exterior angle."},{"id":"B","text":"$22°$","is_correct":true,"explanation":"**Step 1:** Linear pair sums to 180°. **Step 2:** $180-158=22°$."},{"id":"C","text":"$32°$","is_correct":false,"explanation":"Does not satisfy linear pair."},{"id":"D","text":"$90°$","is_correct":false,"explanation":"Not necessarily 90°."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Exterior and interior form a linear pair.
**Step 2:** $180°-158°=22°$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '814cc53f-b827-4781-b017-59711a6d2c19';

UPDATE public.questions SET
  question_text = 'Which value of $x$ satisfies $7x + 6 > 395$ and represents a feasible weight?',
  stimulus_text = 'A package must weigh more than 395 grams but at most 408 grams to ship.',
  options = '[{"id":"A","text":"$53$","is_correct":false,"explanation":"Too small: $7(53)+6=377$."},{"id":"B","text":"$54$","is_correct":false,"explanation":"Still below threshold 395."},{"id":"C","text":"$55$","is_correct":false,"explanation":"Borderline; check strict inequality."},{"id":"D","text":"$56$","is_correct":true,"explanation":"**Step 1:** $7x > 389$. **Step 2:** $x > 55.57142857142857$. Smallest integer choice: 56."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Isolate: $7x > 389$.
**Step 2:** $x > 55.57$.
**Step 3:** Among choices, $56$ is the smallest valid value.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '81515946-58f0-4c78-b69e-cb8462822386';

UPDATE public.questions SET
  question_text = 'If $x = 3$ and $y = 2$, what is the value of $3x + 2y$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5","is_correct":false,"explanation":"Choice A (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10","is_correct":false,"explanation":"Choice B (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"13","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"15","is_correct":false,"explanation":"Choice D (15…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $x = 3$ and $y = 2$, what is the value of $3x + 2y$?

**Step 2 — Solve.** Substituting $x = 3$ and $y = 2$ into the expression, we get $3(3) + 2(2) = 9 + 4 = 13$.

**Step 3 — Select C.** 13

**Distractor analysis:**
- **A** (5): Choice A (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (10): Choice B (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (15): Choice D (15…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":362,"opensat_domain":"Algebra","opensat_raw_id":"4231c004","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '817aeabc-0e45-4442-9a83-c213f98cb83c';

UPDATE public.questions SET
  question_text = 'A store sells apples and oranges. The price of an apple is $\$1.25$ and the price of an orange is $\$0.75$.  If a customer buys 3 apples and 2 oranges, how much will the customer spend in total?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\$5.00$","is_correct":false,"explanation":"Choice A ($\\$5.00$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"$\\$5.25$","is_correct":false,"explanation":"Choice B ($\\$5.25$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$\\$6.00$","is_correct":false,"explanation":"Choice C ($\\$6.00$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$\\$6.25$","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A store sells apples and oranges. The price of an apple is $\$1.25$ and the price of an orange is $\$0.75$.  If a customer buys 3 apples and 2 oranges, how much will the customer spend in total?

**Step 2 — Solve.** The cost of 3 apples is $3 \times $1.25 = $\$3.75$.  The cost of 2 oranges is $2 \times $0.75 = $\$1.50$.  The total cost is $\$3.75 + $1.50 = $\$5.25$.

**Step 3 — Select D.** $\$6.25$

**Distractor analysis:**
- **A** ($\$5.00$): Choice A ($\$5.00$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** ($\$5.25$): Choice B ($\$5.25$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ($\$6.00$): Choice C ($\$6.00$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"OIA","domain_id":"psda","opensat_index":462,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '81a179bc-4a9a-45db-a6ac-c5def58ba1ef';

COMMIT;
