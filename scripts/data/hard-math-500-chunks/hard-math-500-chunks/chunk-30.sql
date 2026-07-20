BEGIN;
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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":290,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c3","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"ad0ad71e-e024-4497-a016-a2c016b250f6"}'::jsonb,
  updated_at = now()
WHERE id = 'ad0ad71e-e024-4497-a016-a2c016b250f6';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":588,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c8","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"adc36b33-321a-4f5f-b1eb-61034c8151dc"}'::jsonb,
  updated_at = now()
WHERE id = 'adc36b33-321a-4f5f-b1eb-61034c8151dc';

UPDATE public.questions SET
  question_text = 'How far is half the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 5 meters. A runner completes half the circumference.',
  options = '[{"id":"A","text":"$15.70$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈31.40$. **Step 2:** Half $≈15.70$ m."},{"id":"B","text":"$78.50$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$31.40$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$15.70$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** $C=2\pi r≈2(3.14)(5)=31.40$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈15.70$ m.
**Step 3:** Do not confuse with area $πr^2≈78.50$.

**Distractor analysis:**
- **B** ($78.50$): Area formula $\pi r^2$, not arc length.
- **C** ($31.40$): Full circumference, not half.
- **D** ($15.70$): Half of $\pi r$, not half of $2\pi r$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":900,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c4","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"ae33bae0-70f9-4c64-8762-4ce9f4561abd"}'::jsonb,
  updated_at = now()
WHERE id = 'ae33bae0-70f9-4c64-8762-4ce9f4561abd';

UPDATE public.questions SET
  question_text = 'How far is half the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 11 meters. A runner completes half the circumference.',
  options = '[{"id":"A","text":"$34.54$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈69.08$. **Step 2:** Half $≈34.54$ m."},{"id":"B","text":"$379.94$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$69.08$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$34.54$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** $C=2\pi r≈2(3.14)(11)=69.08$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈34.54$ m.
**Step 3:** Do not confuse with area $πr^2≈379.94$.

**Distractor analysis:**
- **B** ($379.94$): Area formula $\pi r^2$, not arc length.
- **C** ($69.08$): Full circumference, not half.
- **D** ($34.54$): Half of $\pi r$, not half of $2\pi r$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":574,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_5","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"b05028b4-1e13-4386-b7a8-dd82bce08361"}'::jsonb,
  updated_at = now()
WHERE id = 'b05028b4-1e13-4386-b7a8-dd82bce08361';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":405,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"97fb89f7","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"b1b1edd3-1a2e-416b-a702-6b4af4d2a49a"}'::jsonb,
  updated_at = now()
WHERE id = 'b1b1edd3-1a2e-416b-a702-6b4af4d2a49a';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":514,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_45","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"b68e95f8-9525-4d8c-b8ef-bb681794faf4"}'::jsonb,
  updated_at = now()
WHERE id = 'b68e95f8-9525-4d8c-b8ef-bb681794faf4';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":520,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"d72993bd","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"b6c86712-1a24-4c2b-b4e1-9f900edf98ce"}'::jsonb,
  updated_at = now()
WHERE id = 'b6c86712-1a24-4c2b-b4e1-9f900edf98ce';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":316,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_6","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"b8a9cd8a-7739-4093-9b18-ad40dafccb9e"}'::jsonb,
  updated_at = now()
WHERE id = 'b8a9cd8a-7739-4093-9b18-ad40dafccb9e';

COMMIT;
