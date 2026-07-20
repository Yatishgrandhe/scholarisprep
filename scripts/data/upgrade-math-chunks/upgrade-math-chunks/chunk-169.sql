BEGIN;
UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 units.  What is the area of the circle, in square units? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\pi","is_correct":false,"explanation":"Choice A (5\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10\\pi","is_correct":false,"explanation":"Choice B (10\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"25\\pi","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"100\\pi","is_correct":false,"explanation":"Choice D (100\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 units.  What is the area of the circle, in square units? 

**Step 2 — Solve.** The area of a circle is given by the formula $\pi r^2$, where $r$ is the radius.  Since the radius is 5 units, the area of the circle is $\pi (5)^2 = 25\pi$ square units.

**Step 3 — Select C.** 25\pi

**Distractor analysis:**
- **A** (5\pi): Choice A (5\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (10\pi): Choice B (10\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (100\pi): Choice D (100\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":559,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_10","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'e55a8f13-8723-4fa0-85d4-41a2446089a4';

UPDATE public.questions SET
  question_text = 'What is the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 6 meters.',
  options = '[{"id":"A","text":"$37.68$","is_correct":true,"explanation":"**Step 1:** $C=2\\pi r$. **Step 2:** $2(3.14)(6)=37.68$."},{"id":"B","text":"$113.04$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not circumference."},{"id":"C","text":"$12.00$","is_correct":false,"explanation":"Diameter only."},{"id":"D","text":"$18.84$","is_correct":false,"explanation":"Half of circumference."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Formula $C=2\pi r$.
**Step 2:** $C≈2(3.14)(6)=37.68$ m.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'e56095d1-d84e-4f51-8f3c-b8e2a3427435';

UPDATE public.questions SET
  question_text = 'In the $xy$-plane, a circle has center $(3,2)$ and a radius of 5. Which of the following points lies on the circle? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"(3,7)","is_correct":false,"explanation":"Choice A ((3,7)…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"(8,2)","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"(3,-3)","is_correct":false,"explanation":"Choice C ((3,-3)…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"(0,2)","is_correct":false,"explanation":"Choice D ((0,2)…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** In the $xy$-plane, a circle has center $(3,2)$ and a radius of 5. Which of the following points lies on the circle? 

**Step 2 — Solve.** The distance from the center of the circle to any point on the circle is equal to the radius of the circle.  The distance between the points $(3,2)$ and $(8,2)$ is $8 - 3 = 5$, so the point $(8,2)$ lies on the circle.

**Step 3 — Select B.** (8,2)

**Distractor analysis:**
- **A** ((3,7)): Choice A ((3,7)…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ((3,-3)): Choice C ((3,-3)…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ((0,2)): Choice D ((0,2)…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":720,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"3795d245","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'e5867be9-c91c-4795-99e7-0584e4feb769';

UPDATE public.questions SET
  question_text = 'What is the solution to the equation $2x + 3 = x - 5$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-8","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"-2","is_correct":false,"explanation":"Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2","is_correct":false,"explanation":"Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** What is the solution to the equation $2x + 3 = x - 5$?

**Step 2 — Solve.** Subtracting $x$ from both sides of the equation gives $x + 3 = -5$.  Subtracting 3 from both sides gives $x = -8$.

**Step 3 — Select A.** -8

**Distractor analysis:**
- **B** (-2): Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (2): Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":689,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'e5950cde-1e01-4a2f-86f9-fc3e15484e6a';

UPDATE public.questions SET
  question_text = 'In the $xy$-plane, a circle with center $(3,2)$ passes through the point $(7,6)$.  What is the radius of the circle? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"4","is_correct":false,"explanation":"Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"5","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"8","is_correct":false,"explanation":"Choice C (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"13","is_correct":false,"explanation":"Choice D (13…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** In the $xy$-plane, a circle with center $(3,2)$ passes through the point $(7,6)$.  What is the radius of the circle? 

**Step 2 — Solve.** The radius of the circle is the distance between the center of the circle and any point on the circle. We can use the distance formula to find this distance: \begin{align*} \sqrt{(7-3)^2 + (6-2)^2} &= \sqrt{4^2 + 4^2} \\ &= \sqrt{16 + 16} \\ &= \sqrt{32} \\ &= 4\sqrt{2} \\ &= 4(\sqrt{2 * 2}) \\ &= 4(\sqrt{2})(\sqrt{2}) \\ &= 4(2) \\ &= 8.  \end{align*} The radius of the circle is 8, so the correct answer is B.

**Step 3 — Select B.** 5

**Distractor analysis:**
- **A** (4): Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (8): Choice C (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (13): Choice D (13…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":1026,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"789054fe","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'e5b6c6be-212e-4650-8c89-f198eda64450';

UPDATE public.questions SET
  question_text = 'A group of 10 friends are planning a trip. They decide to split the cost of the trip evenly.  If the total cost of the trip is $1,200, how much will each friend pay?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$100","is_correct":false,"explanation":"Choice A ($100…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"$120","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"$1,200","is_correct":false,"explanation":"Choice C ($1,200…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$12,000","is_correct":false,"explanation":"Choice D ($12,000…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A group of 10 friends are planning a trip. They decide to split the cost of the trip evenly.  If the total cost of the trip is $1,200, how much will each friend pay?

**Step 2 — Solve.** To find the cost per friend, we divide the total cost by the number of friends: $1,200 / 10 = $120.

**Step 3 — Select B.** $120

**Distractor analysis:**
- **A** ($100): Choice A ($100…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ($1,200): Choice C ($1,200…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($12,000): Choice D ($12,000…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":994,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c3","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'e65461b9-2b6d-4725-a86c-e2a0ec1a23a9';

UPDATE public.questions SET
  question_text = 'How many milliliters of substance A are in the mixture?',
  stimulus_text = 'A chemist mixes substances A and B in ratio $4:5$ to make 48 milliliters of solution.',
  options = '[{"id":"A","text":"$18$","is_correct":false,"explanation":"Underestimates A''s share."},{"id":"B","text":"$20$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$21$","is_correct":true,"explanation":"**Step 1:** A''s fraction $\\frac{4}{9}$. **Step 2:** $\\frac{4}{9}×48=21$."},{"id":"D","text":"$48$","is_correct":false,"explanation":"That is the total volume."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** A''s share: $\frac{4}{9}$ of 48.
**Step 2:** $\frac{4}{9}×48=21$ mL.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'e662258e-5cf6-4387-8d92-fb2307f1542a';

UPDATE public.questions SET
  question_text = 'In triangle $ABC$, angle $C$ is a right angle, and $AC = BC$. What is the measure of angle $A$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"30°","is_correct":false,"explanation":"Choice A (30°…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"45°","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"60°","is_correct":false,"explanation":"Choice C (60°…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"90°","is_correct":false,"explanation":"Choice D (90°…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** In triangle $ABC$, angle $C$ is a right angle, and $AC = BC$. What is the measure of angle $A$?

**Step 2 — Solve.** Since $AC=BC$, triangle $ABC$ is a 45-45-90 triangle.  Therefore, the measure of angle $A$ is 45°.

**Step 3 — Select B.** 45°

**Distractor analysis:**
- **A** (30°): Choice A (30°…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (60°): Choice C (60°…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (90°): Choice D (90°…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN_G","domain_id":"geometry","opensat_index":868,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a9","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'e6901a49-0d79-499b-868a-cb6aa3647603';

COMMIT;
