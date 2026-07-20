BEGIN;
UPDATE public.questions SET
  question_text = 'For $x^2 - 11x + 28 = 0$, what is the positive solution? (Discriminant $=9$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$11$","is_correct":false,"explanation":"Choice B ($11$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$7$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-4)(x-7)=0$. **Step 2:** Positive root $7$."},{"id":"D","text":"$13$","is_correct":false,"explanation":"Choice D ($13$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-4)(x-7)=0$.
**Step 2:** Roots $x=4$ and $x=7$.
**Step 3:** Positive solution: $7$.
**Step 4:** Quadratic formula confirms discriminant $9$.

**Distractor analysis:**
- **A** ($3$): Not a root of the quadratic.
- **B** ($11$): Choice B ($11$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($13$): Choice D ($13$…) reflects a common misread or arithmetic slip — re-check each operation.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.621Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"c0eb2435-5ed3-46c3-8bc9-098220db2fe9"}'::jsonb,
  updated_at = now()
WHERE id = 'c0eb2435-5ed3-46c3-8bc9-098220db2fe9';
UPDATE public.questions SET
  question_text = 'For $x^2 - 12x + 35 = 0$, what is the positive solution? (Discriminant $=4$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$12$","is_correct":false,"explanation":"Choice B ($12$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$7$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-5)(x-7)=0$. **Step 2:** Positive root $7$."},{"id":"D","text":"$14$","is_correct":false,"explanation":"Choice D ($14$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-5)(x-7)=0$.
**Step 2:** Roots $x=5$ and $x=7$.
**Step 3:** Positive solution: $7$.
**Step 4:** Quadratic formula confirms discriminant $4$.

**Distractor analysis:**
- **A** ($4$): Not a root of the quadratic.
- **B** ($12$): Choice B ($12$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($14$): Choice D ($14$…) reflects a common misread or arithmetic slip — re-check each operation.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.621Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"c952942f-95f4-4f7f-b741-2613b70a8867"}'::jsonb,
  updated_at = now()
WHERE id = 'c952942f-95f4-4f7f-b741-2613b70a8867';
UPDATE public.questions SET
  question_text = 'For $x^2 - 11x + 28 = 0$, what is the positive solution? (Discriminant $=9$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$11$","is_correct":false,"explanation":"Choice B ($11$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$7$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-4)(x-7)=0$. **Step 2:** Positive root $7$."},{"id":"D","text":"$13$","is_correct":false,"explanation":"Choice D ($13$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-4)(x-7)=0$.
**Step 2:** Roots $x=4$ and $x=7$.
**Step 3:** Positive solution: $7$.
**Step 4:** Quadratic formula confirms discriminant $9$.

**Distractor analysis:**
- **A** ($3$): Not a root of the quadratic.
- **B** ($11$): Choice B ($11$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($13$): Choice D ($13$…) reflects a common misread or arithmetic slip — re-check each operation.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.621Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"ef191897-1d31-4e1f-9dc2-8ba2aec7091a"}'::jsonb,
  updated_at = now()
WHERE id = 'ef191897-1d31-4e1f-9dc2-8ba2aec7091a';
UPDATE public.questions SET
  question_text = 'What is the average rate of change of $h$ from $t=45$ to $t=52$?',
  stimulus_text = 'Projectile height $h(t)=3(t-48)^2+50$ (feet, $t$ in seconds).',
  options = '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(45)=77$, $h(52)=98$. **Step 2:** $\\frac{98-77}{52-45}=3$."},{"id":"C","text":"$3$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$98$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** $h(45)=3(45-48)^2+50=77$.
**Step 2:** $h(52)=3(52-48)^2+50=98$.
**Step 3:** Avg rate $=\frac{98-77}{52-45}=3$ ft/s.

**Distractor analysis:**
- **A** ($1$): Off by 2 ft/s from correct difference quotient.
- **C** ($3$): That is the leading coefficient, not average rate.
- **D** ($98$): Height at $t=${t1}$, not the rate.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.621Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"44d559c5-3e62-46f8-84f2-086faf473e23"}'::jsonb,
  updated_at = now()
WHERE id = '44d559c5-3e62-46f8-84f2-086faf473e23';

UPDATE public.questions SET
  question_text = 'What is the average rate of change of $h$ from $t=18$ to $t=25$?',
  stimulus_text = 'Projectile height $h(t)=3(t-21)^2+23$ (feet, $t$ in seconds).',
  options = '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(18)=50$, $h(25)=71$. **Step 2:** $\\frac{71-50}{25-18}=3$."},{"id":"C","text":"$3$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$71$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** $h(18)=3(18-21)^2+23=50$.
**Step 2:** $h(25)=3(25-21)^2+23=71$.
**Step 3:** Avg rate $=\frac{71-50}{25-18}=3$ ft/s.

**Distractor analysis:**
- **A** ($1$): Off by 2 ft/s from correct difference quotient.
- **C** ($3$): That is the leading coefficient, not average rate.
- **D** ($71$): Height at $t=${t1}$, not the rate.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.621Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"761818f1-3fad-4d2c-9202-f65c6fc7750f"}'::jsonb,
  updated_at = now()
WHERE id = '761818f1-3fad-4d2c-9202-f65c6fc7750f';
UPDATE public.questions SET
  question_text = 'What is the average rate of change of $h$ from $t=24$ to $t=31$?',
  stimulus_text = 'Projectile height $h(t)=3(t-27)^2+29$ (feet, $t$ in seconds).',
  options = '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(24)=56$, $h(31)=77$. **Step 2:** $\\frac{77-56}{31-24}=3$."},{"id":"C","text":"$3$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$77$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** $h(24)=3(24-27)^2+29=56$.
**Step 2:** $h(31)=3(31-27)^2+29=77$.
**Step 3:** Avg rate $=\frac{77-56}{31-24}=3$ ft/s.

**Distractor analysis:**
- **A** ($1$): Off by 2 ft/s from correct difference quotient.
- **C** ($3$): That is the leading coefficient, not average rate.
- **D** ($77$): Height at $t=${t1}$, not the rate.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.621Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"95c5a465-a2ac-49c4-a458-a5eaa068f9d1"}'::jsonb,
  updated_at = now()
WHERE id = '95c5a465-a2ac-49c4-a458-a5eaa068f9d1';
UPDATE public.questions SET
  question_text = 'What is the average rate of change of $h$ from $t=47$ to $t=54$?',
  stimulus_text = 'Projectile height $h(t)=2(t-50)^2+52$ (feet, $t$ in seconds).',
  options = '[{"id":"A","text":"$0$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$2$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(47)=70$, $h(54)=84$. **Step 2:** $\\frac{84-70}{54-47}=2$."},{"id":"C","text":"$2$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$84$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** $h(47)=2(47-50)^2+52=70$.
**Step 2:** $h(54)=2(54-50)^2+52=84$.
**Step 3:** Avg rate $=\frac{84-70}{54-47}=2$ ft/s.

**Distractor analysis:**
- **A** ($0$): Off by 2 ft/s from correct difference quotient.
- **C** ($2$): That is the leading coefficient, not average rate.
- **D** ($84$): Height at $t=${t1}$, not the rate.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.621Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"bfefc97a-467e-407e-9bec-0bf4be8d86ab"}'::jsonb,
  updated_at = now()
WHERE id = 'bfefc97a-467e-407e-9bec-0bf4be8d86ab';
UPDATE public.questions SET
  question_text = 'What is the average rate of change of $h$ from $t=21$ to $t=28$?',
  stimulus_text = 'Projectile height $h(t)=3(t-24)^2+26$ (feet, $t$ in seconds).',
  options = '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(21)=53$, $h(28)=74$. **Step 2:** $\\frac{74-53}{28-21}=3$."},{"id":"C","text":"$3$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$74$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** $h(21)=3(21-24)^2+26=53$.
**Step 2:** $h(28)=3(28-24)^2+26=74$.
**Step 3:** Avg rate $=\frac{74-53}{28-21}=3$ ft/s.

**Distractor analysis:**
- **A** ($1$): Off by 2 ft/s from correct difference quotient.
- **C** ($3$): That is the leading coefficient, not average rate.
- **D** ($74$): Height at $t=${t1}$, not the rate.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.621Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"de545e2e-8fa7-49c5-a84d-1cc0ff0c31a4"}'::jsonb,
  updated_at = now()
WHERE id = 'de545e2e-8fa7-49c5-a84d-1cc0ff0c31a4';
UPDATE public.questions SET
  question_text = 'What is the average rate of change of $h$ from $t=28$ to $t=35$?',
  stimulus_text = 'Projectile height $h(t)=4(t-31)^2+33$ (feet, $t$ in seconds).',
  options = '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(28)=69$, $h(35)=97$. **Step 2:** $\\frac{97-69}{35-28}=4$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$97$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** $h(28)=4(28-31)^2+33=69$.
**Step 2:** $h(35)=4(35-31)^2+33=97$.
**Step 3:** Avg rate $=\frac{97-69}{35-28}=4$ ft/s.

**Distractor analysis:**
- **A** ($2$): Off by 2 ft/s from correct difference quotient.
- **C** ($4$): That is the leading coefficient, not average rate.
- **D** ($97$): Height at $t=${t1}$, not the rate.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.621Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"e8f3bbb8-0e85-4382-99c0-31d99e193b4b"}'::jsonb,
  updated_at = now()
WHERE id = 'e8f3bbb8-0e85-4382-99c0-31d99e193b4b';
UPDATE public.questions SET
  question_text = 'What is the average rate of change of $h$ from $t=47$ to $t=54$?',
  stimulus_text = 'Projectile height $h(t)=2(t-50)^2+52$ (feet, $t$ in seconds).',
  options = '[{"id":"A","text":"$0$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$2$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(47)=70$, $h(54)=84$. **Step 2:** $\\frac{84-70}{54-47}=2$."},{"id":"C","text":"$2$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$84$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** $h(47)=2(47-50)^2+52=70$.
**Step 2:** $h(54)=2(54-50)^2+52=84$.
**Step 3:** Avg rate $=\frac{84-70}{54-47}=2$ ft/s.

**Distractor analysis:**
- **A** ($0$): Off by 2 ft/s from correct difference quotient.
- **C** ($2$): That is the leading coefficient, not average rate.
- **D** ($84$): Height at $t=${t1}$, not the rate.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.621Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"f18309e1-87a7-423f-946a-e8da36f58ebc"}'::jsonb,
  updated_at = now()
WHERE id = 'f18309e1-87a7-423f-946a-e8da36f58ebc';
UPDATE public.questions SET
  question_text = 'What is the missing score $x$?',
  stimulus_text = 'Five test scores: 47, 51, 55, 59, and one score $x$ is unknown. The mean is 51.2.',
  options = '[{"id":"A","text":"$41$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$44$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=51.2×5=256$. **Step 2:** $x=44$."},{"id":"C","text":"$47$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$51$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Total sum $=51.2×5=256$.
**Step 2:** Known sum $=212$.
**Step 3:** $x=256-212=44$.
**Step 4:** Verify mean.

**Distractor analysis:**
- **A** ($41$): Pulls the mean down too far.
- **C** ($47$): Too high for the given mean.
- **D** ($51$): Confuses mean with the missing value.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.621Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.056Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"06f85f35-12eb-4281-af40-904b25e769df"}'::jsonb,
  updated_at = now()
WHERE id = '06f85f35-12eb-4281-af40-904b25e769df';
UPDATE public.questions SET
  question_text = 'What is the missing score $x$?',
  stimulus_text = 'Five test scores: 63, 67, 71, 75, and one score $x$ is unknown. The mean is 67.2.',
  options = '[{"id":"A","text":"$57$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$60$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=67.2×5=336$. **Step 2:** $x=60$."},{"id":"C","text":"$63$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$67$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Total sum $=67.2×5=336$.
**Step 2:** Known sum $=276$.
**Step 3:** $x=336-276=60$.
**Step 4:** Verify mean.

**Distractor analysis:**
- **A** ($57$): Pulls the mean down too far.
- **C** ($63$): Too high for the given mean.
- **D** ($67$): Confuses mean with the missing value.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.621Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.058Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"10a75be3-dc79-43b2-a220-9ba9bb669364"}'::jsonb,
  updated_at = now()
WHERE id = '10a75be3-dc79-43b2-a220-9ba9bb669364';

UPDATE public.questions SET
  question_text = 'What is the missing score $x$?',
  stimulus_text = 'Five test scores: 12, 16, 20, 24, and one score $x$ is unknown. The mean is 16.2.',
  options = '[{"id":"A","text":"$6$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$9$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=16.2×5=81$. **Step 2:** $x=9$."},{"id":"C","text":"$12$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$16$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Total sum $=16.2×5=81$.
**Step 2:** Known sum $=72$.
**Step 3:** $x=81-72=9$.
**Step 4:** Verify mean.

**Distractor analysis:**
- **A** ($6$): Pulls the mean down too far.
- **C** ($12$): Too high for the given mean.
- **D** ($16$): Confuses mean with the missing value.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_ai_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.621Z","model":"gemma-4-26b-a4b-it","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"21bb3a93-c051-4cb2-a7ba-ccee45e4fa6b"}'::jsonb,
  updated_at = now()
WHERE id = '21bb3a93-c051-4cb2-a7ba-ccee45e4fa6b';
UPDATE public.questions SET
  question_text = 'What is the missing score $x$?',
  stimulus_text = 'Five test scores: 23, 27, 31, 35, and one score $x$ is unknown. The mean is 27.2.',
  options = '[{"id":"A","text":"$17$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$20$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=27.2×5=136$. **Step 2:** $x=20$."},{"id":"C","text":"$23$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$27$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Total sum $=27.2×5=136$.
**Step 2:** Known sum $=116$.
**Step 3:** $x=136-116=20$.
**Step 4:** Verify mean.

**Distractor analysis:**
- **A** ($17$): Pulls the mean down too far.
- **C** ($23$): Too high for the given mean.
- **D** ($27$): Confuses mean with the missing value.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_ai_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.621Z","model":"gemma-4-26b-a4b-it","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"4007d7f8-3733-4db7-95e7-83cff98726f7"}'::jsonb,
  updated_at = now()
WHERE id = '4007d7f8-3733-4db7-95e7-83cff98726f7';
UPDATE public.questions SET
  question_text = 'What is the missing score $x$?',
  stimulus_text = 'Five test scores: 8, 12, 16, 20, and one score $x$ is unknown. The mean is 12.2.',
  options = '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$5$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=12.2×5=61$. **Step 2:** $x=5$."},{"id":"C","text":"$8$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$12$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Total sum $=12.2×5=61$.
**Step 2:** Known sum $=56$.
**Step 3:** $x=61-56=5$.
**Step 4:** Verify mean.

**Distractor analysis:**
- **A** ($2$): Pulls the mean down too far.
- **C** ($8$): Too high for the given mean.
- **D** ($12$): Confuses mean with the missing value.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.621Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"47582382-bdb1-43c2-87d9-a1502900a35a"}'::jsonb,
  updated_at = now()
WHERE id = '47582382-bdb1-43c2-87d9-a1502900a35a';
UPDATE public.questions SET
  question_text = 'What is the missing score $x$?',
  stimulus_text = 'Five test scores: 40, 44, 48, 52, and one score $x$ is unknown. The mean is 44.2.',
  options = '[{"id":"A","text":"$34$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$37$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=44.2×5=221$. **Step 2:** $x=37$."},{"id":"C","text":"$40$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$44$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Total sum $=44.2×5=221$.
**Step 2:** Known sum $=184$.
**Step 3:** $x=221-184=37$.
**Step 4:** Verify mean.

**Distractor analysis:**
- **A** ($34$): Pulls the mean down too far.
- **C** ($40$): Too high for the given mean.
- **D** ($44$): Confuses mean with the missing value.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_ai_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.621Z","model":"gemma-4-26b-a4b-it","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"8d59f5e8-bd60-4b15-a7ca-440ca23d5ae3"}'::jsonb,
  updated_at = now()
WHERE id = '8d59f5e8-bd60-4b15-a7ca-440ca23d5ae3';
UPDATE public.questions SET
  question_text = 'What is the missing score $x$?',
  stimulus_text = 'Five test scores: 38, 42, 46, 50, and one score $x$ is unknown. The mean is 42.2.',
  options = '[{"id":"A","text":"$32$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$35$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=42.2×5=211$. **Step 2:** $x=35$."},{"id":"C","text":"$38$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$42$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Total sum $=42.2×5=211$.
**Step 2:** Known sum $=176$.
**Step 3:** $x=211-176=35$.
**Step 4:** Verify mean.

**Distractor analysis:**
- **A** ($32$): Pulls the mean down too far.
- **C** ($38$): Too high for the given mean.
- **D** ($42$): Confuses mean with the missing value.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.621Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"9348436b-610e-4ea9-b517-c338a965c756"}'::jsonb,
  updated_at = now()
WHERE id = '9348436b-610e-4ea9-b517-c338a965c756';
UPDATE public.questions SET
  question_text = 'What is the missing score $x$?',
  stimulus_text = 'Five test scores: 27, 31, 35, 39, and one score $x$ is unknown. The mean is 31.2.',
  options = '[{"id":"A","text":"$21$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$24$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=31.2×5=156$. **Step 2:** $x=24$."},{"id":"C","text":"$27$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$31$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Total sum $=31.2×5=156$.
**Step 2:** Known sum $=132$.
**Step 3:** $x=156-132=24$.
**Step 4:** Verify mean.

**Distractor analysis:**
- **A** ($21$): Pulls the mean down too far.
- **C** ($27$): Too high for the given mean.
- **D** ($31$): Confuses mean with the missing value.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"937bb8e4-a11b-4478-b9c2-5ed3085b25cb"}'::jsonb,
  updated_at = now()
WHERE id = '937bb8e4-a11b-4478-b9c2-5ed3085b25cb';
UPDATE public.questions SET
  question_text = 'What is the missing score $x$?',
  stimulus_text = 'Five test scores: 63, 67, 71, 75, and one score $x$ is unknown. The mean is 67.2.',
  options = '[{"id":"A","text":"$57$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$60$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=67.2×5=336$. **Step 2:** $x=60$."},{"id":"C","text":"$63$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$67$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Total sum $=67.2×5=336$.
**Step 2:** Known sum $=276$.
**Step 3:** $x=336-276=60$.
**Step 4:** Verify mean.

**Distractor analysis:**
- **A** ($57$): Pulls the mean down too far.
- **C** ($63$): Too high for the given mean.
- **D** ($67$): Confuses mean with the missing value.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"abf8aa8c-5057-4326-8616-0c1177678d73"}'::jsonb,
  updated_at = now()
WHERE id = 'abf8aa8c-5057-4326-8616-0c1177678d73';
UPDATE public.questions SET
  question_text = 'What is the missing score $x$?',
  stimulus_text = 'Five test scores: 61, 65, 69, 73, and one score $x$ is unknown. The mean is 65.2.',
  options = '[{"id":"A","text":"$55$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$58$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=65.2×5=326$. **Step 2:** $x=58$."},{"id":"C","text":"$61$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$65$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Total sum $=65.2×5=326$.
**Step 2:** Known sum $=268$.
**Step 3:** $x=326-268=58$.
**Step 4:** Verify mean.

**Distractor analysis:**
- **A** ($55$): Pulls the mean down too far.
- **C** ($61$): Too high for the given mean.
- **D** ($65$): Confuses mean with the missing value.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_ai_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","model":"gemma-4-26b-a4b-it","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"c769af96-6e5e-42ba-ae14-7d91102f079d"}'::jsonb,
  updated_at = now()
WHERE id = 'c769af96-6e5e-42ba-ae14-7d91102f079d';

COMMIT;
