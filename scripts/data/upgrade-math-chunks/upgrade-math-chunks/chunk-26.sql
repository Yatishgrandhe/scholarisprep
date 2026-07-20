BEGIN;
UPDATE public.questions SET
  question_text = 'What is the value of the missing score $x$?',
  stimulus_text = 'Scores: 50, 54, 58, 62, and one score $x$ is missing. The mean is 54.4.',
  options = '[{"id":"A","text":"$46$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$48$","is_correct":true,"explanation":"**Step 1:** Sum needed $=54.4×5=272$. **Step 2:** $x=272-224=48$."},{"id":"C","text":"$50$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$54$","is_correct":false,"explanation":"Confuses mean with missing value."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Total sum $=54.4×5=272$.
**Step 2:** $x=272-224=48$.
**Step 3:** Verify mean.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '21bb3a93-c051-4cb2-a7ba-ccee45e4fa6b';

UPDATE public.questions SET
  question_text = 'A rectangle has a length of 12 meters and a width of 5 meters. What is the area, in square meters, of the rectangle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"17","is_correct":false,"explanation":"Choice A (17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"34","is_correct":false,"explanation":"Choice B (34…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"60","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"144","is_correct":false,"explanation":"Choice D (144…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A rectangle has a length of 12 meters and a width of 5 meters. What is the area, in square meters, of the rectangle?

**Step 2 — Solve.** The area of a rectangle is found by multiplying its length and width. Therefore, the area of this rectangle is 12 meters * 5 meters = 60 square meters.

**Step 3 — Select C.** 60

**Distractor analysis:**
- **A** (17): Choice A (17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (34): Choice B (34…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (144): Choice D (144…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":858,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '21cec9af-3ebd-4be9-a4be-9d7e5474b000';

UPDATE public.questions SET
  question_text = 'Which value of $x$ satisfies $7x + 6 > 262$ and represents a feasible weight?',
  stimulus_text = 'A package must weigh more than 262 grams but at most 275 grams to ship.',
  options = '[{"id":"A","text":"$34$","is_correct":false,"explanation":"Too small: $7(34)+6=244$."},{"id":"B","text":"$35$","is_correct":false,"explanation":"Still below threshold 262."},{"id":"C","text":"$36$","is_correct":false,"explanation":"Borderline; check strict inequality."},{"id":"D","text":"$37$","is_correct":true,"explanation":"**Step 1:** $7x > 256$. **Step 2:** $x > 36.57142857142857$. Smallest integer choice: 37."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Isolate: $7x > 256$.
**Step 2:** $x > 36.57$.
**Step 3:** Among choices, $37$ is the smallest valid value.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '21f91182-2be8-4565-828b-0e9cd8616175';

UPDATE public.questions SET
  question_text = 'A regular hexagon has a side length of 10.  What is the perimeter of the hexagon?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"10","is_correct":false,"explanation":"Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"20","is_correct":false,"explanation":"Choice B (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"30","is_correct":false,"explanation":"Choice C (30…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"60","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A regular hexagon has a side length of 10.  What is the perimeter of the hexagon?

**Step 2 — Solve.** A regular hexagon has 6 equal sides.  The perimeter is the total length of all the sides, so the perimeter of this hexagon is 6 * 10 = 60.

**Step 3 — Select D.** 60

**Distractor analysis:**
- **A** (10): Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (20): Choice B (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (30): Choice C (30…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":960,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '21faf2d5-bec8-4f9e-aa0d-6c89cd7d0786';

UPDATE public.questions SET
  question_text = 'If $3x - 2y = 7$ and $x + 2y = 5$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"3","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"4","is_correct":false,"explanation":"Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $3x - 2y = 7$ and $x + 2y = 5$, what is the value of $x$?

**Step 2 — Solve.** We can solve for $x$ by adding the two equations together. Notice that the $y$ terms cancel out. This gives us: $3x - 2y + x + 2y = 7 + 5$, or $4x = 12$. Dividing both sides by 4, we get $x = \frac{12}{4}$, or $x = 3$.

**Step 3 — Select C.** 3

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (4): Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":421,"opensat_domain":"Algebra","opensat_raw_id":"e49119d5","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '2205b3bb-c342-4101-a631-b8f4ca282593';

UPDATE public.questions SET
  question_text = 'What is the remaining area, in square inches?',
  stimulus_text = 'A rectangular poster is 44 by 43 inches. A square corner of side 2 inches is removed.',
  options = '[{"id":"A","text":"$1892$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$87$","is_correct":false,"explanation":"Perimeter-like sum, not area."},{"id":"C","text":"$1888$","is_correct":true,"explanation":"**Step 1:** Full area $1892$. **Step 2:** Subtract $2^2$ → $1888$."},{"id":"D","text":"$1890$","is_correct":false,"explanation":"Adds instead of subtracts corner."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $44×43=1892$.
**Step 2:** Remove corner: $2^2=4$.
**Step 3:** $1892-4=1888$ sq in.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '222592b7-9a7c-48f9-9776-9d72a5e2ad43';

UPDATE public.questions SET
  question_text = 'If  $3x + 2y = 12$ and $x - 2y = 4$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":false,"explanation":"Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"4","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If  $3x + 2y = 12$ and $x - 2y = 4$, what is the value of $x$?

**Step 2 — Solve.** To solve for $x$, we can add the two equations together. Notice that the $y$ terms cancel out: $(3x + 2y) + (x - 2y) = 12 + 4$, which simplifies to $4x = 16$. Dividing both sides by 4, we get $x = 4$.

**Step 3 — Select C.** 4

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (3): Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":1003,"opensat_domain":"Algebra","opensat_raw_id":"a1293ac5","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '224eeb9a-24a0-4d0a-ab82-cd508dec47b0';

UPDATE public.questions SET
  question_text = 'If  $2x + 3y = 12$ and  $x - y = 1$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If  $2x + 3y = 12$ and  $x - y = 1$, what is the value of $x$?

**Step 2 — Solve.** To solve for *x*, we can use elimination. Multiplying the second equation by 3, we get  $3x - 3y = 3$. Adding this equation to the first equation, we get $5x = 15$. Dividing both sides by 5, we get $x = 3$.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":348,"opensat_domain":"Algebra","opensat_raw_id":"a71a4247","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '2266b9a2-d2c6-475f-8e6e-450c65727d46';

COMMIT;
