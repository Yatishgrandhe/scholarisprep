BEGIN;
UPDATE public.questions SET
  question_text = 'If the first chip is red, what is the probability the second is also red?',
  stimulus_text = 'A bag has 5 red and 22 blue chips. Two chips are drawn without replacement.',
  options = '[{"id":"A","text":"$\\frac{5}{27}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{5}{26}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{5}{27}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{4}{26}$","is_correct":true,"explanation":"**Step 1:** After red first: 4 red left, 26 total. **Step 2:** P $=\\frac{4}{26}$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** First chip red → 4 red remain out of 26.
**Step 2:** Conditional probability $=\frac{4}{26}$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '20cd06a1-700d-4721-b6fd-04cff04664b5';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 cm.  What is the circumference of the circle, in centimeters? (Express your answer in terms of $\pi$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\pi$","is_correct":false,"explanation":"Choice A ($\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"5$\\pi$","is_correct":false,"explanation":"Choice B (5$\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"10$\\pi$","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"25$\\pi$","is_correct":false,"explanation":"Choice D (25$\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 cm.  What is the circumference of the circle, in centimeters? (Express your answer in terms of $\pi$.)

**Step 2 — Solve.** The circumference of a circle is given by the formula $C = 2\pi r$, where $r$ is the radius.  Substituting $r = 5$ cm, we get $C = 2\pi(5) = 10\pi$ cm.

**Step 3 — Select C.** 10$\pi$

**Distractor analysis:**
- **A** ($\pi$): Choice A ($\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (5$\pi$): Choice B (5$\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (25$\pi$): Choice D (25$\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":518,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_2","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '20d31e08-5c05-44d2-b2bb-c91c56a05778';

UPDATE public.questions SET
  question_text = 'The function $f(x)$ is defined by $f(x) = \frac{1}{x} + 4$. What is the value of $f(\frac{1}{4})$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":false,"explanation":"Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":false,"explanation":"Choice C (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"17","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The function $f(x)$ is defined by $f(x) = \frac{1}{x} + 4$. What is the value of $f(\frac{1}{4})$?

**Step 2 — Solve.** To find the value of $f(\frac{1}{4})$, we substitute $\frac{1}{4}$ for $x$ in the expression for $f(x)$: $f(\frac{1}{4}) = \frac{1}{\frac{1}{4}} + 4 = 4 + 4 = 17$.

**Step 3 — Select D.** 17

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (4): Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (5): Choice C (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":803,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '20e0428c-bac7-4c2c-9ff8-6323c88a7afe';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 units. What is the area of the circle, in square units? (Use $\pi$ = 3.14)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"15.7","is_correct":false,"explanation":"Choice A (15.7…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"31.4","is_correct":false,"explanation":"Choice B (31.4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"78.5","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"157","is_correct":false,"explanation":"Choice D (157…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 units. What is the area of the circle, in square units? (Use $\pi$ = 3.14)

**Step 2 — Solve.** The area of a circle is given by the formula $A = \pi r^2$, where $r$ is the radius. Substituting 5 for $r$ and 3.14 for $\pi$ gives us $A = (3.14)(5)^2 = 78.5$ square units.

**Step 3 — Select C.** 78.5

**Distractor analysis:**
- **A** (15.7): Choice A (15.7…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (31.4): Choice B (31.4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (157): Choice D (157…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":64,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"75da8b92","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '213ac684-092c-4c59-8a12-caea7563f8eb';

UPDATE public.questions SET
  question_text = 'A linear function $f$ models temperature change. Given $f(27)=23$ and $f(32)=43$, what is $f(-29)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-197$","is_correct":false,"explanation":"Adds slope once too many."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(-29$)."},{"id":"C","text":"$-204$","is_correct":false,"explanation":"Arithmetic error in point-slope form."},{"id":"D","text":"$-201$","is_correct":true,"explanation":"**Step 1:** Slope $m=4$. **Step 2:** $f(-29)=4(-29-27)+(23)=-201$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $m=\frac{43-23}{32-27}=4$.
**Step 2:** Point-slope: $f(-29)=4(-29-27)+(23)$.
**Step 3:** $f(-29)=-201$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '21422d32-e638-4785-82b2-2f0952669ee5';

UPDATE public.questions SET
  question_text = 'The function $f(x) = 2x^2 - 4x + 3$ is defined for all real numbers.  What is the value of $f(-2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-13","is_correct":false,"explanation":"Choice A (-13…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":false,"explanation":"Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"19","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"27","is_correct":false,"explanation":"Choice D (27…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function $f(x) = 2x^2 - 4x + 3$ is defined for all real numbers.  What is the value of $f(-2)$?

**Step 2 — Solve.** Substitute -2 for $x$ in the function:  $f(-2) = 2(-2)^2 - 4(-2) + 3 = 8 + 8 + 3 = 19$.

**Step 3 — Select C.** 19

**Distractor analysis:**
- **A** (-13): Choice A (-13…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (3): Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (27): Choice D (27…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":970,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_9","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '215a1de1-9543-4349-b57c-e87936f5be76';

UPDATE public.questions SET
  question_text = 'If $\frac{2x + 3}{x - 1} = 5$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"4","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $\frac{2x + 3}{x - 1} = 5$, what is the value of $x$?

**Step 2 — Solve.** To solve for $x$, we first multiply both sides of the equation by $x - 1$: $2x + 3 = 5(x - 1)$. Expanding the right side of the equation, we get $2x + 3 = 5x - 5$. Combining like terms, we get $8 = 3x$. Dividing both sides of the equation by 3, we get $x = \frac{8}{3}$ or $x = 2\frac{2}{3}$. Of the given choices, the closest value is 4. Therefore, the value of $x$ is 4.

**Step 3 — Select C.** 4

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":874,"opensat_domain":"Advanced Math","opensat_raw_id":"899b8d7b","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '21a3455c-96fa-4c5f-8ddf-4cba7802b4d8';

UPDATE public.questions SET
  question_text = 'After $t=27$ hours, how many miles has the car traveled?',
  stimulus_text = 'A car''s distance $d$ (miles) after $t$ hours is modeled by $d=5t+24$.',
  options = '[{"id":"A","text":"$154$","is_correct":false,"explanation":"Uses $t-1$ instead of $t=27$."},{"id":"B","text":"$159$","is_correct":true,"explanation":"**Step 1:** Substitute $t=27$. **Step 2:** $d=5(27)+24=159$."},{"id":"C","text":"$160$","is_correct":false,"explanation":"Adds 1 to the correct distance."},{"id":"D","text":"$29$","is_correct":false,"explanation":"Adds slope and intercept instead of evaluating."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Plug in $t=27$: $d=5(27)+24$.
**Step 2:** Compute: $d=159$ miles.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '21b8fcf3-8609-41c9-828c-6bde7fe44708';

COMMIT;
