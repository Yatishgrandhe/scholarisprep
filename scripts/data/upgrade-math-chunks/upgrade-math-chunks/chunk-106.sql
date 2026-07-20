BEGIN;
UPDATE public.questions SET
  question_text = 'A group of friends are planning a trip. They decide to split the cost of the trip evenly among themselves. The total cost of the trip is \$2,400. If the cost per person is \$300, how many friends are going on the trip?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"6","is_correct":false,"explanation":"Choice A (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"8","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"10","is_correct":false,"explanation":"Choice C (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"12","is_correct":false,"explanation":"Choice D (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A group of friends are planning a trip. They decide to split the cost of the trip evenly among themselves. The total cost of the trip is \$2,400. If the cost per person is \$300, how many friends are going on the trip?

**Step 2 — Solve.** To find the number of friends, we divide the total cost of the trip by the cost per person: \$2,400 / \$300 = 8. Therefore, there are 8 friends going on the trip.

**Step 3 — Select B.** 8

**Distractor analysis:**
- **A** (6): Choice A (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (10): Choice C (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (12): Choice D (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":548,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c1","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '922fe978-5aa4-4a10-819a-c184067d7bd2';

UPDATE public.questions SET
  question_text = 'If $x + 2y = 10$ and $x - 2y = 6$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":false,"explanation":"Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"6","is_correct":false,"explanation":"Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"8","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** If $x + 2y = 10$ and $x - 2y = 6$, what is the value of $x$?

**Step 2 — Solve.** Adding the two equations together, we eliminate the $y$ terms: $(x+2y) + (x-2y) = 10 + 6$. This simplifies to $2x = 16$. Dividing both sides by 2, we get $x = 8$.

**Step 3 — Select D.** 8

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (4): Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (6): Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":267,"opensat_domain":"Algebra","opensat_raw_id":"random_id_20","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '924098ca-c06f-4517-8c52-b728eb077f92';

UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 61% favor a policy, margin of error ±4 percentage points (95% confidence), $n=1200$.',
  options = '[{"id":"A","text":"Exactly 61% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 57% and 65%","is_correct":true,"explanation":"**Step 1:** Interval 57% to 65%. **Step 2:** This range is supported."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1200 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 57% to 65%.
**Step 2:** At 95% confidence, true support likely falls in this range.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '929e7b97-2129-4599-bfaf-388e4e610cea';

UPDATE public.questions SET
  question_text = 'In triangle \(ABC\), angle \(A\) is a right angle, \(AB = 5\), and \(AC = 12\). What is the length of \(BC\)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"7","is_correct":false,"explanation":"Choice A (7…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"13","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"17","is_correct":false,"explanation":"Choice C (17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"19","is_correct":false,"explanation":"Choice D (19…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** In triangle \(ABC\), angle \(A\) is a right angle, \(AB = 5\), and \(AC = 12\). What is the length of \(BC\)?

**Step 2 — Solve.** Triangle \(ABC\) is a right triangle, so we can use the Pythagorean Theorem: \(a^2 + b^2 = c^2\), where \(a\) and \(b\) are the lengths of the legs and \(c\) is the length of the hypotenuse.  In this case, \(AB = 5\) and \(AC = 12\), so \(BC\) is the hypotenuse.  Substituting into the Pythagorean Theorem, we get \(5^2 + 12^2 = BC^2\), or \(169 = BC^2\).  Taking the square root of both sides gives \(BC = 13\).

**Step 3 — Select B.** 13

**Distractor analysis:**
- **A** (7): Choice A (7…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (17): Choice C (17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (19): Choice D (19…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN_G","domain_id":"geometry","opensat_index":515,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_b8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '92bee801-7f4e-474f-a71a-6407a4046090';

UPDATE public.questions SET
  question_text = 'If $\frac{2x + 3}{x - 1} = 5$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"4","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $\frac{2x + 3}{x - 1} = 5$, what is the value of $x$?

**Step 2 — Solve.** To solve for $x$, we begin by multiplying both sides of the equation by $(x - 1)$: $2x + 3 = 5(x - 1)$. Expanding the right side gives us $2x + 3 = 5x - 5$. Subtracting $2x$ from both sides and adding 5 to both sides, we get $8 = 3x$. Dividing both sides by 3, we obtain $x = \frac{8}{3}$, or $x = 4$.

**Step 3 — Select C.** 4

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":734,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a3","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '92c8e1b9-b951-4e09-83c3-37a15804b796';

UPDATE public.questions SET
  question_text = 'After $t=6$ hours, how many miles has the car traveled?',
  stimulus_text = 'A car''s distance $d$ (miles) after $t$ hours is modeled by $d=5t+3$.',
  options = '[{"id":"A","text":"$28$","is_correct":false,"explanation":"Uses $t-1$ instead of $t=6$."},{"id":"B","text":"$33$","is_correct":true,"explanation":"**Step 1:** Substitute $t=6$. **Step 2:** $d=5(6)+3=33$."},{"id":"C","text":"$34$","is_correct":false,"explanation":"Adds 1 to the correct distance."},{"id":"D","text":"$8$","is_correct":false,"explanation":"Adds slope and intercept instead of evaluating."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Plug in $t=6$: $d=5(6)+3$.
**Step 2:** Compute: $d=33$ miles.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '92f7f604-df41-402c-af8b-95875bb75eb1';

UPDATE public.questions SET
  question_text = 'A linear function $f$ models temperature change. Given $f(5)=1$ and $f(10)=21$, what is $f(-7)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-43$","is_correct":false,"explanation":"Adds slope once too many."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(-7$)."},{"id":"C","text":"$-50$","is_correct":false,"explanation":"Arithmetic error in point-slope form."},{"id":"D","text":"$-47$","is_correct":true,"explanation":"**Step 1:** Slope $m=4$. **Step 2:** $f(-7)=4(-7-5)+(1)=-47$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $m=\frac{21-1}{10-5}=4$.
**Step 2:** Point-slope: $f(-7)=4(-7-5)+(1)$.
**Step 3:** $f(-7)=-47$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '92f8109a-23d2-439f-a2e9-d044e1d09ec0';

UPDATE public.questions SET
  question_text = 'If the first chip is red, what is the probability the second is also red?',
  stimulus_text = 'A bag has 4 red and 15 blue chips. Two chips are drawn without replacement.',
  options = '[{"id":"A","text":"$\\frac{4}{19}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{4}{18}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{4}{19}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{3}{18}$","is_correct":true,"explanation":"**Step 1:** After red first: 3 red left, 18 total. **Step 2:** P $=\\frac{3}{18}$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** First chip red → 3 red remain out of 18.
**Step 2:** Conditional probability $=\frac{3}{18}$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '9344db67-a46c-4aab-80c0-bacb120920dc';

COMMIT;
