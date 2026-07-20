BEGIN;
UPDATE public.questions SET
  question_text = 'How far is half the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 7 meters. A runner completes half the circumference.',
  options = '[{"id":"A","text":"$21.98$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈43.96$. **Step 2:** Half $≈21.98$ m."},{"id":"B","text":"$153.86$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$43.96$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$21.98$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** $C=2\pi r≈2(3.14)(7)=43.96$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈21.98$ m.
**Step 3:** Do not confuse with area $πr^2≈153.86$.

**Distractor analysis:**
- **B** ($153.86$): Area formula $\pi r^2$, not arc length.
- **C** ($43.96$): Full circumference, not half.
- **D** ($21.98$): Half of $\pi r$, not half of $2\pi r$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.623Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":547,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c1","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"76d2ad80-64f0-4ab8-8d48-e49027f3c41d"}'::jsonb,
  updated_at = now()
WHERE id = '76d2ad80-64f0-4ab8-8d48-e49027f3c41d';

UPDATE public.questions SET
  question_text = 'How far is half the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 15 meters. A runner completes half the circumference.',
  options = '[{"id":"A","text":"$47.10$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈94.20$. **Step 2:** Half $≈47.10$ m."},{"id":"B","text":"$706.50$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$94.20$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$47.10$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** $C=2\pi r≈2(3.14)(15)=94.20$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈47.10$ m.
**Step 3:** Do not confuse with area $πr^2≈706.50$.

**Distractor analysis:**
- **B** ($706.50$): Area formula $\pi r^2$, not arc length.
- **C** ($94.20$): Full circumference, not half.
- **D** ($47.10$): Half of $\pi r$, not half of $2\pi r$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.623Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":82,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"e55931d8","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"78e0e285-9b6e-45c0-9979-70bcf2fd8e3a"}'::jsonb,
  updated_at = now()
WHERE id = '78e0e285-9b6e-45c0-9979-70bcf2fd8e3a';

UPDATE public.questions SET
  question_text = 'How far is half the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 13 meters. A runner completes half the circumference.',
  options = '[{"id":"A","text":"$40.82$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈81.64$. **Step 2:** Half $≈40.82$ m."},{"id":"B","text":"$530.66$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$81.64$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$40.82$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** $C=2\pi r≈2(3.14)(13)=81.64$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈40.82$ m.
**Step 3:** Do not confuse with area $πr^2≈530.66$.

**Distractor analysis:**
- **B** ($530.66$): Area formula $\pi r^2$, not arc length.
- **C** ($81.64$): Full circumference, not half.
- **D** ($40.82$): Half of $\pi r$, not half of $2\pi r$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":13,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"f41b3483","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"7b9e2f43-e270-42d1-9181-f0ae1c2eb045"}'::jsonb,
  updated_at = now()
WHERE id = '7b9e2f43-e270-42d1-9181-f0ae1c2eb045';

UPDATE public.questions SET
  question_text = 'How far is half the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 16 meters. A runner completes half the circumference.',
  options = '[{"id":"A","text":"$50.24$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈100.48$. **Step 2:** Half $≈50.24$ m."},{"id":"B","text":"$803.84$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$100.48$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$50.24$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** $C=2\pi r≈2(3.14)(16)=100.48$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈50.24$ m.
**Step 3:** Do not confuse with area $πr^2≈803.84$.

**Distractor analysis:**
- **B** ($803.84$): Area formula $\pi r^2$, not arc length.
- **C** ($100.48$): Full circumference, not half.
- **D** ($50.24$): Half of $\pi r$, not half of $2\pi r$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":712,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c1","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"7c0d6924-aba3-4ba6-b13b-c44da49508e2"}'::jsonb,
  updated_at = now()
WHERE id = '7c0d6924-aba3-4ba6-b13b-c44da49508e2';

UPDATE public.questions SET
  question_text = 'How far is half the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 16 meters. A runner completes half the circumference.',
  options = '[{"id":"A","text":"$50.24$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈100.48$. **Step 2:** Half $≈50.24$ m."},{"id":"B","text":"$803.84$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$100.48$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$50.24$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** $C=2\pi r≈2(3.14)(16)=100.48$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈50.24$ m.
**Step 3:** Do not confuse with area $πr^2≈803.84$.

**Distractor analysis:**
- **B** ($803.84$): Area formula $\pi r^2$, not arc length.
- **C** ($100.48$): Full circumference, not half.
- **D** ($50.24$): Half of $\pi r$, not half of $2\pi r$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":539,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c9","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"7c50e585-88bf-4a1c-acd8-b3d408a68cb0"}'::jsonb,
  updated_at = now()
WHERE id = '7c50e585-88bf-4a1c-acd8-b3d408a68cb0';

UPDATE public.questions SET
  question_text = 'How far is half the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 9 meters. A runner completes half the circumference.',
  options = '[{"id":"A","text":"$28.26$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈56.52$. **Step 2:** Half $≈28.26$ m."},{"id":"B","text":"$254.34$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$56.52$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$28.26$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** $C=2\pi r≈2(3.14)(9)=56.52$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈28.26$ m.
**Step 3:** Do not confuse with area $πr^2≈254.34$.

**Distractor analysis:**
- **B** ($254.34$): Area formula $\pi r^2$, not arc length.
- **C** ($56.52$): Full circumference, not half.
- **D** ($28.26$): Half of $\pi r$, not half of $2\pi r$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":357,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a5","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"8ab20114-d433-488c-9497-7f99090dbca0"}'::jsonb,
  updated_at = now()
WHERE id = '8ab20114-d433-488c-9497-7f99090dbca0';

UPDATE public.questions SET
  question_text = 'How far is half the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 17 meters. A runner completes half the circumference.',
  options = '[{"id":"A","text":"$53.38$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈106.76$. **Step 2:** Half $≈53.38$ m."},{"id":"B","text":"$907.46$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$106.76$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$53.38$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** $C=2\pi r≈2(3.14)(17)=106.76$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈53.38$ m.
**Step 3:** Do not confuse with area $πr^2≈907.46$.

**Distractor analysis:**
- **B** ($907.46$): Area formula $\pi r^2$, not arc length.
- **C** ($106.76$): Full circumference, not half.
- **D** ($53.38$): Half of $\pi r$, not half of $2\pi r$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":233,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"a2f4d6d2","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"8cd88728-b7cf-4318-a2c5-7ff112453844"}'::jsonb,
  updated_at = now()
WHERE id = '8cd88728-b7cf-4318-a2c5-7ff112453844';

UPDATE public.questions SET
  question_text = 'How far is half the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 10 meters. A runner completes half the circumference.',
  options = '[{"id":"A","text":"$31.40$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈62.80$. **Step 2:** Half $≈31.40$ m."},{"id":"B","text":"$314.00$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$62.80$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$31.40$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** $C=2\pi r≈2(3.14)(10)=62.80$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈31.40$ m.
**Step 3:** Do not confuse with area $πr^2≈314.00$.

**Distractor analysis:**
- **B** ($314.00$): Area formula $\pi r^2$, not arc length.
- **C** ($62.80$): Full circumference, not half.
- **D** ($31.40$): Half of $\pi r$, not half of $2\pi r$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":219,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c8","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"8d5e57cc-7292-4771-830e-5d9fbabebe4b"}'::jsonb,
  updated_at = now()
WHERE id = '8d5e57cc-7292-4771-830e-5d9fbabebe4b';

COMMIT;
