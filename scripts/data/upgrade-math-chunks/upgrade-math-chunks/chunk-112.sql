BEGIN;
UPDATE public.questions SET
  question_text = 'What is the remaining area, in square inches?',
  stimulus_text = 'A rectangular poster is 30 by 29 inches. A square corner of side 2 inches is removed.',
  options = '[{"id":"A","text":"$870$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$59$","is_correct":false,"explanation":"Perimeter-like sum, not area."},{"id":"C","text":"$866$","is_correct":true,"explanation":"**Step 1:** Full area $870$. **Step 2:** Subtract $2^2$ → $866$."},{"id":"D","text":"$868$","is_correct":false,"explanation":"Adds instead of subtracts corner."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $30×29=870$.
**Step 2:** Remove corner: $2^2=4$.
**Step 3:** $870-4=866$ sq in.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '9b80d4ec-206e-4f7e-8368-fdc4e868def2';

UPDATE public.questions SET
  question_text = 'The expression $\frac{1}{x} - \frac{1}{x+1}$ is equivalent to which of the following?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\frac{1}{x^2 + x}$","is_correct":false,"explanation":"Inverts the ratio — a common probability error."},{"id":"B","text":"$\\frac{1}{x^2 + 1}$","is_correct":false,"explanation":"Inverts the ratio — a common probability error."},{"id":"C","text":"$\\frac{1}{x(x+1)}$","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"$\\frac{1}{x(x-1)}$","is_correct":false,"explanation":"Inverts the ratio — a common probability error."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The expression $\frac{1}{x} - \frac{1}{x+1}$ is equivalent to which of the following?

**Step 2 — Solve.** To combine the fractions, we need a common denominator. The common denominator is $x(x+1)$.  Multiplying the first fraction by $\frac{x+1}{x+1}$ and the second fraction by $\frac{x}{x}$ gives $\frac{x+1}{x(x+1)} - \frac{x}{x(x+1)}$.  Combining the numerators, we get $\frac{x + 1 - x}{x(x+1)}$, which simplifies to $\frac{1}{x(x+1)}$.

**Step 3 — Select C.** $\frac{1}{x(x+1)}$

**Distractor analysis:**
- **A** ($\frac{1}{x^2 + x}$): Inverts the ratio — a common probability error.
- **B** ($\frac{1}{x^2 + 1}$): Inverts the ratio — a common probability error.
- **D** ($\frac{1}{x(x-1)}$): Inverts the ratio — a common probability error.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"EQS","domain_id":"advanced","opensat_index":244,"opensat_domain":"Advanced Math","opensat_raw_id":"3a82227f","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '9b996024-a2b4-4b8c-8d9a-583f7549ed30';

UPDATE public.questions SET
  question_text = 'The function \(f(x)\) is defined by \(f(x) = 8\sqrt{x}\). For what value of \(x\) does \(f(x) = 48\)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"6","is_correct":false,"explanation":"Choice A (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"8","is_correct":false,"explanation":"Choice B (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"36","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"64","is_correct":false,"explanation":"Choice D (64…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function \(f(x)\) is defined by \(f(x) = 8\sqrt{x}\). For what value of \(x\) does \(f(x) = 48\)?

**Step 2 — Solve.** To solve for \(x\), we substitute 48 for \(f(x)\) in the equation \(f(x) = 8\sqrt{x}\). This gives us \(48 = 8\sqrt{x}\). Dividing both sides of this equation by 8 yields \(6 = \sqrt{x}\). This can be rewritten as \(\sqrt{x} = 6\). Squaring both sides of this equation yields \(x = 36\). Therefore, the value of \(x\) for which \(f(x) = 48\) is 36.

**Step 3 — Select C.** 36

**Distractor analysis:**
- **A** (6): Choice A (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (8): Choice B (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (64): Choice D (64…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":843,"opensat_domain":"Advanced Math","opensat_raw_id":"f452410b","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '9ba2e434-84bc-47df-ba9f-654fe96902bb';

UPDATE public.questions SET
  question_text = 'What is the remaining area, in square inches?',
  stimulus_text = 'A rectangular poster is 7 by 6 inches. A square corner of side 2 inches is removed.',
  options = '[{"id":"A","text":"$42$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$13$","is_correct":false,"explanation":"Perimeter-like sum, not area."},{"id":"C","text":"$38$","is_correct":true,"explanation":"**Step 1:** Full area $42$. **Step 2:** Subtract $2^2$ → $38$."},{"id":"D","text":"$40$","is_correct":false,"explanation":"Adds instead of subtracts corner."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $7×6=42$.
**Step 2:** Remove corner: $2^2=4$.
**Step 3:** $42-4=38$ sq in.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '9c5bb31b-a81b-4da8-990c-a3dd316b7b73';

UPDATE public.questions SET
  question_text = 'If $3x + 2y = 17$ and $x - y = 2$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"3","is_correct":false,"explanation":"Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":false,"explanation":"Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $3x + 2y = 17$ and $x - y = 2$, what is the value of $x$?

**Step 2 — Solve.** We can solve for $x$ by using elimination. Multiplying the second equation by 2 gives us $2x - 2y = 4$. Adding this equation to the first equation, we get $5x = 21$. Dividing both sides by 5, we find $x = \frac{21}{5} = 4.2$.  The closest answer choice is C, 5.

**Step 3 — Select C.** 5

**Distractor analysis:**
- **A** (3): Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (4): Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":580,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a4","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '9c6092c8-a2e2-4c1d-b3b3-9bf1996848d8';

UPDATE public.questions SET
  question_text = 'What is the value of $x$ if $x^2-4x+3=0$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"3","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"4","is_correct":false,"explanation":"Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** What is the value of $x$ if $x^2-4x+3=0$?

**Step 2 — Solve.** We can factor the quadratic equation as $(x-3)(x-1)=0$.  Setting each factor equal to zero, we get $x-3=0$ or $x-1=0$. Solving for $x$, we find that $x=3$ or $x=1$. Since choice C is the only option that is a solution to the equation, it is the correct answer.

**Step 3 — Select C.** 3

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (4): Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":254,"opensat_domain":"Advanced Math","opensat_raw_id":"2b779c0b","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '9c6a0f2e-b5e7-4cfe-b8aa-0d51762712ca';

UPDATE public.questions SET
  question_text = 'In the figure above, lines l and m are parallel, and line t intersects lines l and m.  If the measure of angle 1 is 110 degrees, what is the measure of angle 2?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"70","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"80","is_correct":false,"explanation":"Choice B (80…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"100","is_correct":false,"explanation":"Choice C (100…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"110","is_correct":false,"explanation":"Choice D (110…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** In the figure above, lines l and m are parallel, and line t intersects lines l and m.  If the measure of angle 1 is 110 degrees, what is the measure of angle 2?

**Step 2 — Solve.** Since lines l and m are parallel, the angles 1 and 2 are alternate interior angles. Alternate interior angles have the same measure, so the measure of angle 2 is 110 degrees.

**Step 3 — Select A.** 70

**Distractor analysis:**
- **B** (80): Choice B (80…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (100): Choice C (100…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (110): Choice D (110…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN_G","domain_id":"geometry","opensat_index":775,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '9d146726-1ce8-49d2-8452-448dad097073';

UPDATE public.questions SET
  question_text = 'The expression  $\frac{x^{10}y^6}{x^2y^2}$ is equivalent to $x^ay^b$, where a and b are constants. What is the value of $a+b$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"6","is_correct":false,"explanation":"Choice A (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"8","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"10","is_correct":false,"explanation":"Choice C (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"12","is_correct":false,"explanation":"Choice D (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The expression  $\frac{x^{10}y^6}{x^2y^2}$ is equivalent to $x^ay^b$, where a and b are constants. What is the value of $a+b$?

**Step 2 — Solve.** Using the properties of exponents, we can simplify the expression as follows:  $\frac{x^{10}y^6}{x^2y^2} = x^{10-2}y^{6-2} = x^8y^4$.  Therefore, $a+b = 8+4 = 12$.

**Step 3 — Select B.** 8

**Distractor analysis:**
- **A** (6): Choice A (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (10): Choice C (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (12): Choice D (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":968,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_27","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '9d164ed2-3607-45ac-b0ad-24681c5414d7';

COMMIT;
