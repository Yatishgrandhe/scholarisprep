BEGIN;
UPDATE public.questions SET
  question_text = 'Given $x+y=38$ and $2x-y=28$, what is $x$?',
  stimulus_text = 'At a fundraiser, 38 tickets were sold in two price tiers. VIP tickets cost twice as much as standard tickets, and revenue from 22 VIP and 16 standard tickets follows the system below.',
  options = '[{"id":"A","text":"$22$","is_correct":true,"explanation":"**Step 1:** Add equations: $3x=66$. **Step 2:** $x=22$."},{"id":"B","text":"$21$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$16$","is_correct":false,"explanation":"That is $y$, not $x$."},{"id":"D","text":"$23$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(2x-y)=38+28$ → $3x=66$.
**Step 2:** $x=22$.
**Step 3:** Back-substitute: $y=16$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'ffcc25c0-4817-45be-9dd6-5e6b6bdd1893';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 centimeters.  What is the area, in square centimeters, of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5","is_correct":false,"explanation":"Choice A (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10","is_correct":false,"explanation":"Choice B (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"25","is_correct":false,"explanation":"Choice C (25…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"25\\pi","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 centimeters.  What is the area, in square centimeters, of the circle?

**Step 2 — Solve.** The area of a circle is given by the formula $A = \pi r^2$, where $r$ is the radius of the circle.  Substituting 5 for $r$, we get $A = \pi (5)^2 = 25\pi$.

**Step 3 — Select D.** 25\pi

**Distractor analysis:**
- **A** (5): Choice A (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (10): Choice B (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (25): Choice C (25…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":579,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_b8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'ffd4c65c-6848-4e43-8cf3-204324a682d9';

UPDATE public.questions SET
  question_text = 'If the first chip is red, what is the probability the second is also red?',
  stimulus_text = 'A bag has 6 red and 14 blue chips. Two chips are drawn without replacement.',
  options = '[{"id":"A","text":"$\\frac{6}{20}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{19}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{20}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{19}$","is_correct":true,"explanation":"**Step 1:** After red first: 5 red left, 19 total. **Step 2:** P $=\\frac{5}{19}$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** First chip red → 5 red remain out of 19.
**Step 2:** Conditional probability $=\frac{5}{19}$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'fffa1d21-d925-432e-b29d-d016246a5a4d';

COMMIT;
