BEGIN;
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

COMMIT;
