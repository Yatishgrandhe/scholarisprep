BEGIN;
UPDATE public.questions SET
  question_text = 'A group of 100 students were surveyed about their favorite type of music. 60 students said they like pop music, 45 students said they like rock music, and 20 students said they like both pop and rock music. How many students like only pop music?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"20","is_correct":false,"explanation":"Choice A (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"40","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"60","is_correct":false,"explanation":"Choice C (60…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"80","is_correct":false,"explanation":"Choice D (80…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A group of 100 students were surveyed about their favorite type of music. 60 students said they like pop music, 45 students said they like rock music, and 20 students said they like both pop and rock music. How many students like only pop music?

**Step 2 — Solve.** We can use a Venn diagram to solve this problem.  Let the circle labeled "Pop" represent all students who like pop music, and let the circle labeled "Rock" represent all students who like rock music. Since 20 students like both pop and rock music, we write "20" in the overlapping section of the circles. Since 60 students like pop music, and 20 of those also like rock music, 60 – 20 = 40 students like only pop music. Thus, the answer is 40.

**Step 3 — Select B.** 40

**Distractor analysis:**
- **A** (20): Choice A (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (60): Choice C (60…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (80): Choice D (80…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":62,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_21","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '7f74a51d-d012-4ddb-b34c-2abcb144606b';

UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 64% favor a policy, margin of error ±4 percentage points (95% confidence), $n=1200$.',
  options = '[{"id":"A","text":"Exactly 64% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 60% and 68%","is_correct":true,"explanation":"**Step 1:** Interval 60% to 68%. **Step 2:** This range is supported."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1200 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 60% to 68%.
**Step 2:** At 95% confidence, true support likely falls in this range.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '7f80f4d2-3cab-493d-9053-8aa1002133b2';

UPDATE public.questions SET
  question_text = 'A right triangle has legs of length 5 and 12. What is the length of the hypotenuse of the triangle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"13","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"17","is_correct":false,"explanation":"Choice B (17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"19","is_correct":false,"explanation":"Choice C (19…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"25","is_correct":false,"explanation":"Choice D (25…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A right triangle has legs of length 5 and 12. What is the length of the hypotenuse of the triangle?

**Step 2 — Solve.** The Pythagorean Theorem states that in a right triangle, the square of the hypotenuse is equal to the sum of the squares of the legs.  Therefore, the length of the hypotenuse is  $\sqrt{5^2 + 12^2} = \sqrt{169} = 13$.

**Step 3 — Select A.** 13

**Distractor analysis:**
- **B** (17): Choice B (17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (19): Choice C (19…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (25): Choice D (25…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RIG","domain_id":"geometry","opensat_index":983,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"f1d7a634","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '7f9059c8-3a9b-456c-92c0-39c232a07c68';

UPDATE public.questions SET
  question_text = 'What is the measure of the adjacent interior angle?',
  stimulus_text = 'An exterior angle of a triangle measures 118°.',
  options = '[{"id":"A","text":"$118°$","is_correct":false,"explanation":"That is the exterior angle."},{"id":"B","text":"$62°$","is_correct":true,"explanation":"**Step 1:** Linear pair sums to 180°. **Step 2:** $180-118=62°$."},{"id":"C","text":"$72°$","is_correct":false,"explanation":"Does not satisfy linear pair."},{"id":"D","text":"$90°$","is_correct":false,"explanation":"Not necessarily 90°."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Exterior and interior form a linear pair.
**Step 2:** $180°-118°=62°$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '7fb26f1b-2169-40c9-9e92-d905852c962d';

UPDATE public.questions SET
  question_text = 'For what value of $k$ does the equation $3(x-6)+2k = 18$ have solution $x=8$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Substituting this $k$ does not yield $x=8$."},{"id":"B","text":"$6$","is_correct":true,"explanation":"Expand: $3x-18+2k=18$ → $3x=24$ → $x=8$ when $k=6$."},{"id":"C","text":"$7$","is_correct":false,"explanation":"Too large; check substitution."},{"id":"D","text":"$8$","is_correct":false,"explanation":"That is $x$, not $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=8$: $3(8-k)+2k=18$.
**Step 2:** Simplify: $24-3k+2k=18$ → $24+-1k=18$.
**Step 3:** Solve for $k$: $-1k=-6$ → $k=6$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '7fc84ecb-f780-472d-9369-3500f4232bf7';

UPDATE public.questions SET
  question_text = 'After $t=25$ hours, how many miles has the car traveled?',
  stimulus_text = 'A car''s distance $d$ (miles) after $t$ hours is modeled by $d=3t+22$.',
  options = '[{"id":"A","text":"$94$","is_correct":false,"explanation":"Uses $t-1$ instead of $t=25$."},{"id":"B","text":"$97$","is_correct":true,"explanation":"**Step 1:** Substitute $t=25$. **Step 2:** $d=3(25)+22=97$."},{"id":"C","text":"$98$","is_correct":false,"explanation":"Adds 1 to the correct distance."},{"id":"D","text":"$25$","is_correct":false,"explanation":"Adds slope and intercept instead of evaluating."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Plug in $t=25$: $d=3(25)+22$.
**Step 2:** Compute: $d=97$ miles.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '7fe307a4-bfa8-43f0-88bf-d6323bad508b';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5. What is the area of the circle?  (Use $\pi \approx 3.14$)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"15.7","is_correct":false,"explanation":"Choice A (15.7…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"31.4","is_correct":false,"explanation":"Choice B (31.4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"78.5","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"157","is_correct":false,"explanation":"Choice D (157…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5. What is the area of the circle?  (Use $\pi \approx 3.14$)

**Step 2 — Solve.** The area of a circle is given by the formula $A = \pi r^2$, where $r$ is the radius.  Substituting 5 for $r$ and 3.14 for $\pi$, we get $A \approx 3.14 \cdot 5^2 \approx 3.14 \cdot 25 \approx 78.5$.

**Step 3 — Select C.** 78.5

**Distractor analysis:**
- **A** (15.7): Choice A (15.7…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (31.4): Choice B (31.4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (157): Choice D (157…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":501,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a6","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '802a55af-1552-4e12-b5e3-960655f2f444';

UPDATE public.questions SET
  question_text = 'If the original price is $290$, what is the final price after both changes?',
  stimulus_text = 'A retail price is increased by 20% and then discounted by 15%.',
  options = '[{"id":"A","text":"$296$","is_correct":true,"explanation":"**Step 1:** $290×1.2=348$. **Step 2:** $348×0.85=296$."},{"id":"B","text":"$290$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$348$","is_correct":false,"explanation":"Only applies the markup."},{"id":"D","text":"$306$","is_correct":false,"explanation":"Adds 10 without reason."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $290×(1+20/100)=348$.
**Step 2:** Discount: $348×(1-15/100)=296$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '8083025f-bcfd-40dd-974a-d1218a2d57cc';

COMMIT;
