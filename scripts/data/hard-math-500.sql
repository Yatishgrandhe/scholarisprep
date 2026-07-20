UPDATE public.questions SET
  question_text = 'What is the volume of the box, in cubic inches?',
  stimulus_text = 'A rectangular sheet is 25 by 24 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.',
  options = '[{"id":"A","text":"$600$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$591$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$1182$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $600-3^2=591$. **Step 2:** Volume $=591×2=1182$."},{"id":"D","text":"$1185$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $25×24=600$.
**Step 2:** Remove corner: $3^2=9$ → base $591$.
**Step 3:** Volume $=591×2=1182$ cu in.

**Distractor analysis:**
- **A** ($600$): Forgot to subtract the removed corner.
- **B** ($591$): Area of base only, not volume.
- **D** ($1185$): Adds corner length instead of using height.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.616Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"222592b7-9a7c-48f9-9776-9d72a5e2ad43"}'::jsonb,
  updated_at = now()
WHERE id = '222592b7-9a7c-48f9-9776-9d72a5e2ad43';

UPDATE public.questions SET
  question_text = 'What is the volume of the box, in cubic inches?',
  stimulus_text = 'A rectangular sheet is 6 by 5 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.',
  options = '[{"id":"A","text":"$30$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$21$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$42$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $30-3^2=21$. **Step 2:** Volume $=21×2=42$."},{"id":"D","text":"$45$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $6×5=30$.
**Step 2:** Remove corner: $3^2=9$ → base $21$.
**Step 3:** Volume $=21×2=42$ cu in.

**Distractor analysis:**
- **A** ($30$): Forgot to subtract the removed corner.
- **B** ($21$): Area of base only, not volume.
- **D** ($45$): Adds corner length instead of using height.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.618Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"30b739c2-5b09-4d29-b045-01eaefe4be24"}'::jsonb,
  updated_at = now()
WHERE id = '30b739c2-5b09-4d29-b045-01eaefe4be24';

UPDATE public.questions SET
  question_text = 'What is the volume of the box, in cubic inches?',
  stimulus_text = 'A rectangular sheet is 62 by 61 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.',
  options = '[{"id":"A","text":"$3782$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$3773$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$7546$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $3782-3^2=3773$. **Step 2:** Volume $=3773×2=7546$."},{"id":"D","text":"$7549$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $62×61=3782$.
**Step 2:** Remove corner: $3^2=9$ → base $3773$.
**Step 3:** Volume $=3773×2=7546$ cu in.

**Distractor analysis:**
- **A** ($3782$): Forgot to subtract the removed corner.
- **B** ($3773$): Area of base only, not volume.
- **D** ($7549$): Adds corner length instead of using height.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.618Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"4db25458-488d-436c-9556-b864b2b46b34"}'::jsonb,
  updated_at = now()
WHERE id = '4db25458-488d-436c-9556-b864b2b46b34';

UPDATE public.questions SET
  question_text = 'What is the volume of the box, in cubic inches?',
  stimulus_text = 'A rectangular sheet is 56 by 55 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.',
  options = '[{"id":"A","text":"$3080$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$3071$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$6142$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $3080-3^2=3071$. **Step 2:** Volume $=3071×2=6142$."},{"id":"D","text":"$6145$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $56×55=3080$.
**Step 2:** Remove corner: $3^2=9$ → base $3071$.
**Step 3:** Volume $=3071×2=6142$ cu in.

**Distractor analysis:**
- **A** ($3080$): Forgot to subtract the removed corner.
- **B** ($3071$): Area of base only, not volume.
- **D** ($6145$): Adds corner length instead of using height.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.618Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"5cf2f132-512e-4120-8813-aace340d7a3c"}'::jsonb,
  updated_at = now()
WHERE id = '5cf2f132-512e-4120-8813-aace340d7a3c';

UPDATE public.questions SET
  question_text = 'What is the volume of the box, in cubic inches?',
  stimulus_text = 'A rectangular sheet is 60 by 59 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.',
  options = '[{"id":"A","text":"$3540$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$3531$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$7062$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $3540-3^2=3531$. **Step 2:** Volume $=3531×2=7062$."},{"id":"D","text":"$7065$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $60×59=3540$.
**Step 2:** Remove corner: $3^2=9$ → base $3531$.
**Step 3:** Volume $=3531×2=7062$ cu in.

**Distractor analysis:**
- **A** ($3540$): Forgot to subtract the removed corner.
- **B** ($3531$): Area of base only, not volume.
- **D** ($7065$): Adds corner length instead of using height.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.618Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"86d5c828-52f9-4c1f-b9df-5ad74149feed"}'::jsonb,
  updated_at = now()
WHERE id = '86d5c828-52f9-4c1f-b9df-5ad74149feed';

UPDATE public.questions SET
  question_text = 'What is the volume of the box, in cubic inches?',
  stimulus_text = 'A rectangular sheet is 58 by 57 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.',
  options = '[{"id":"A","text":"$3306$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$3297$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$6594$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $3306-3^2=3297$. **Step 2:** Volume $=3297×2=6594$."},{"id":"D","text":"$6597$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $58×57=3306$.
**Step 2:** Remove corner: $3^2=9$ → base $3297$.
**Step 3:** Volume $=3297×2=6594$ cu in.

**Distractor analysis:**
- **A** ($3306$): Forgot to subtract the removed corner.
- **B** ($3297$): Area of base only, not volume.
- **D** ($6597$): Adds corner length instead of using height.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.618Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"88900dc1-1b6f-4431-95ac-d022418e92d1"}'::jsonb,
  updated_at = now()
WHERE id = '88900dc1-1b6f-4431-95ac-d022418e92d1';

UPDATE public.questions SET
  question_text = 'What is the volume of the box, in cubic inches?',
  stimulus_text = 'A rectangular sheet is 28 by 27 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.',
  options = '[{"id":"A","text":"$756$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$747$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$1494$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $756-3^2=747$. **Step 2:** Volume $=747×2=1494$."},{"id":"D","text":"$1497$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $28×27=756$.
**Step 2:** Remove corner: $3^2=9$ → base $747$.
**Step 3:** Volume $=747×2=1494$ cu in.

**Distractor analysis:**
- **A** ($756$): Forgot to subtract the removed corner.
- **B** ($747$): Area of base only, not volume.
- **D** ($1497$): Adds corner length instead of using height.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.618Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"9adf6d44-b4d0-48eb-8fb1-3f199ea0fed6"}'::jsonb,
  updated_at = now()
WHERE id = '9adf6d44-b4d0-48eb-8fb1-3f199ea0fed6';

UPDATE public.questions SET
  question_text = 'What is the volume of the box, in cubic inches?',
  stimulus_text = 'A rectangular sheet is 13 by 12 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.',
  options = '[{"id":"A","text":"$156$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$147$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$294$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $156-3^2=147$. **Step 2:** Volume $=147×2=294$."},{"id":"D","text":"$297$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $13×12=156$.
**Step 2:** Remove corner: $3^2=9$ → base $147$.
**Step 3:** Volume $=147×2=294$ cu in.

**Distractor analysis:**
- **A** ($156$): Forgot to subtract the removed corner.
- **B** ($147$): Area of base only, not volume.
- **D** ($297$): Adds corner length instead of using height.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.618Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"c0e933f5-c0d5-44e2-b3cb-afeb9288f92d"}'::jsonb,
  updated_at = now()
WHERE id = 'c0e933f5-c0d5-44e2-b3cb-afeb9288f92d';

UPDATE public.questions SET
  question_text = 'What is the volume of the box, in cubic inches?',
  stimulus_text = 'A rectangular sheet is 6 by 5 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.',
  options = '[{"id":"A","text":"$30$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$21$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$42$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $30-3^2=21$. **Step 2:** Volume $=21×2=42$."},{"id":"D","text":"$45$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $6×5=30$.
**Step 2:** Remove corner: $3^2=9$ → base $21$.
**Step 3:** Volume $=21×2=42$ cu in.

**Distractor analysis:**
- **A** ($30$): Forgot to subtract the removed corner.
- **B** ($21$): Area of base only, not volume.
- **D** ($45$): Adds corner length instead of using height.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.618Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"df7b00f9-eb23-48bc-81be-83ffff444ed4"}'::jsonb,
  updated_at = now()
WHERE id = 'df7b00f9-eb23-48bc-81be-83ffff444ed4';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.618Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.057Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"0da0c95a-599a-49d1-ae70-2c7bdc6ae59b"}'::jsonb,
  updated_at = now()
WHERE id = '0da0c95a-599a-49d1-ae70-2c7bdc6ae59b';

UPDATE public.questions SET
  question_text = 'How far is half the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 8 meters. A runner completes half the circumference.',
  options = '[{"id":"A","text":"$25.12$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈50.24$. **Step 2:** Half $≈25.12$ m."},{"id":"B","text":"$200.96$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$50.24$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$25.12$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** $C=2\pi r≈2(3.14)(8)=50.24$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈25.12$ m.
**Step 3:** Do not confuse with area $πr^2≈200.96$.

**Distractor analysis:**
- **B** ($200.96$): Area formula $\pi r^2$, not arc length.
- **C** ($50.24$): Full circumference, not half.
- **D** ($25.12$): Half of $\pi r$, not half of $2\pi r$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.618Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"36745e58-c341-4025-a1df-2234e18ddbe6"}'::jsonb,
  updated_at = now()
WHERE id = '36745e58-c341-4025-a1df-2234e18ddbe6';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.618Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"825cbd2a-dc38-4acb-bc7a-76768f1180d6"}'::jsonb,
  updated_at = now()
WHERE id = '825cbd2a-dc38-4acb-bc7a-76768f1180d6';

UPDATE public.questions SET
  question_text = 'How far is half the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 12 meters. A runner completes half the circumference.',
  options = '[{"id":"A","text":"$37.68$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈75.36$. **Step 2:** Half $≈37.68$ m."},{"id":"B","text":"$452.16$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$75.36$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$37.68$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** $C=2\pi r≈2(3.14)(12)=75.36$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈37.68$ m.
**Step 3:** Do not confuse with area $πr^2≈452.16$.

**Distractor analysis:**
- **B** ($452.16$): Area formula $\pi r^2$, not arc length.
- **C** ($75.36$): Full circumference, not half.
- **D** ($37.68$): Half of $\pi r$, not half of $2\pi r$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.618Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"df18f6ba-244a-46ff-81f7-e081fbd751cf"}'::jsonb,
  updated_at = now()
WHERE id = 'df18f6ba-244a-46ff-81f7-e081fbd751cf';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"e56095d1-d84e-4f51-8f3c-b8e2a3427435"}'::jsonb,
  updated_at = now()
WHERE id = 'e56095d1-d84e-4f51-8f3c-b8e2a3427435';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"ed9855cb-10a7-4854-96e7-3d34afcb614e"}'::jsonb,
  updated_at = now()
WHERE id = 'ed9855cb-10a7-4854-96e7-3d34afcb614e';

UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(3x+44)^2 - (3x-44)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$528x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=3x+44$, $v=3x-44$."},{"id":"B","text":"$6x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$176x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$9x^2+1936$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=3x+44$, $v=3x-44$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(6x)(88)=528x$.
**Step 4:** Confirm by expanding both forms.

**Distractor analysis:**
- **B** ($6x^2$): Squares each binomial separately — wrong approach.
- **C** ($176x$): Uses $4b$ instead of $4ab$.
- **D** ($9x^2+1936$): Adds squares; not equivalent.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.055Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"02cbab1e-2239-4767-9e23-c660623de569"}'::jsonb,
  updated_at = now()
WHERE id = '02cbab1e-2239-4767-9e23-c660623de569';

UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(4x+12)^2 - (4x-12)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$192x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=4x+12$, $v=4x-12$."},{"id":"B","text":"$8x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$48x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$16x^2+144$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=4x+12$, $v=4x-12$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(8x)(24)=192x$.
**Step 4:** Confirm by expanding both forms.

**Distractor analysis:**
- **B** ($8x^2$): Squares each binomial separately — wrong approach.
- **C** ($48x$): Uses $4b$ instead of $4ab$.
- **D** ($16x^2+144$): Adds squares; not equivalent.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_ai_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","model":"gemma-4-26b-a4b-it","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"170ae7d2-07b3-4bc1-aa62-4143dc125c3e"}'::jsonb,
  updated_at = now()
WHERE id = '170ae7d2-07b3-4bc1-aa62-4143dc125c3e';

UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(4x+15)^2 - (4x-15)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$240x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=4x+15$, $v=4x-15$."},{"id":"B","text":"$8x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$60x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$16x^2+225$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=4x+15$, $v=4x-15$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(8x)(30)=240x$.
**Step 4:** Confirm by expanding both forms.

**Distractor analysis:**
- **B** ($8x^2$): Squares each binomial separately — wrong approach.
- **C** ($60x$): Uses $4b$ instead of $4ab$.
- **D** ($16x^2+225$): Adds squares; not equivalent.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_ai_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","model":"gemma-4-26b-a4b-it","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"28724c56-d6bc-4628-9a40-8f598b686106"}'::jsonb,
  updated_at = now()
WHERE id = '28724c56-d6bc-4628-9a40-8f598b686106';

UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(3x+50)^2 - (3x-50)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$600x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=3x+50$, $v=3x-50$."},{"id":"B","text":"$6x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$200x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$9x^2+2500$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=3x+50$, $v=3x-50$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(6x)(100)=600x$.
**Step 4:** Confirm by expanding both forms.

**Distractor analysis:**
- **B** ($6x^2$): Squares each binomial separately — wrong approach.
- **C** ($200x$): Uses $4b$ instead of $4ab$.
- **D** ($9x^2+2500$): Adds squares; not equivalent.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"369d7d44-40c7-4931-9e99-98d1edb7dd27"}'::jsonb,
  updated_at = now()
WHERE id = '369d7d44-40c7-4931-9e99-98d1edb7dd27';

UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(5x+13)^2 - (5x-13)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$260x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=5x+13$, $v=5x-13$."},{"id":"B","text":"$10x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$52x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$25x^2+169$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=5x+13$, $v=5x-13$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(10x)(26)=260x$.
**Step 4:** Confirm by expanding both forms.

**Distractor analysis:**
- **B** ($10x^2$): Squares each binomial separately — wrong approach.
- **C** ($52x$): Uses $4b$ instead of $4ab$.
- **D** ($25x^2+169$): Adds squares; not equivalent.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"39da5e4f-080b-4c34-ac7f-cf9254bc0c97"}'::jsonb,
  updated_at = now()
WHERE id = '39da5e4f-080b-4c34-ac7f-cf9254bc0c97';

UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(5x+31)^2 - (5x-31)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$620x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=5x+31$, $v=5x-31$."},{"id":"B","text":"$10x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$124x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$25x^2+961$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=5x+31$, $v=5x-31$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(10x)(62)=620x$.
**Step 4:** Confirm by expanding both forms.

**Distractor analysis:**
- **B** ($10x^2$): Squares each binomial separately — wrong approach.
- **C** ($124x$): Uses $4b$ instead of $4ab$.
- **D** ($25x^2+961$): Adds squares; not equivalent.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_ai_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","model":"gemma-4-26b-a4b-it","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"3f66ff2a-1382-4ece-b4f7-31114824ce2f"}'::jsonb,
  updated_at = now()
WHERE id = '3f66ff2a-1382-4ece-b4f7-31114824ce2f';

UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(3x+50)^2 - (3x-50)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$600x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=3x+50$, $v=3x-50$."},{"id":"B","text":"$6x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$200x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$9x^2+2500$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=3x+50$, $v=3x-50$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(6x)(100)=600x$.
**Step 4:** Confirm by expanding both forms.

**Distractor analysis:**
- **B** ($6x^2$): Squares each binomial separately — wrong approach.
- **C** ($200x$): Uses $4b$ instead of $4ab$.
- **D** ($9x^2+2500$): Adds squares; not equivalent.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"624bf57c-734f-49eb-b76e-9f8620691791"}'::jsonb,
  updated_at = now()
WHERE id = '624bf57c-734f-49eb-b76e-9f8620691791';

UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(5x+10)^2 - (5x-10)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$200x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=5x+10$, $v=5x-10$."},{"id":"B","text":"$10x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$40x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$25x^2+100$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=5x+10$, $v=5x-10$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(10x)(20)=200x$.
**Step 4:** Confirm by expanding both forms.

**Distractor analysis:**
- **B** ($10x^2$): Squares each binomial separately — wrong approach.
- **C** ($40x$): Uses $4b$ instead of $4ab$.
- **D** ($25x^2+100$): Adds squares; not equivalent.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"77ec2aec-d55b-4114-af00-e911ae7ff850"}'::jsonb,
  updated_at = now()
WHERE id = '77ec2aec-d55b-4114-af00-e911ae7ff850';

UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(4x+51)^2 - (4x-51)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$816x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=4x+51$, $v=4x-51$."},{"id":"B","text":"$8x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$204x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$16x^2+2601$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=4x+51$, $v=4x-51$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(8x)(102)=816x$.
**Step 4:** Confirm by expanding both forms.

**Distractor analysis:**
- **B** ($8x^2$): Squares each binomial separately — wrong approach.
- **C** ($204x$): Uses $4b$ instead of $4ab$.
- **D** ($16x^2+2601$): Adds squares; not equivalent.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_ai_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","model":"gemma-4-26b-a4b-it","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"80fcc709-9879-4279-87dc-cb8a3a6cc967"}'::jsonb,
  updated_at = now()
WHERE id = '80fcc709-9879-4279-87dc-cb8a3a6cc967';

UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(5x+61)^2 - (5x-61)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$1220x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=5x+61$, $v=5x-61$."},{"id":"B","text":"$10x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$244x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$25x^2+3721$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=5x+61$, $v=5x-61$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(10x)(122)=1220x$.
**Step 4:** Confirm by expanding both forms.

**Distractor analysis:**
- **B** ($10x^2$): Squares each binomial separately — wrong approach.
- **C** ($244x$): Uses $4b$ instead of $4ab$.
- **D** ($25x^2+3721$): Adds squares; not equivalent.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_ai_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","model":"gemma-4-26b-a4b-it","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"8b9a8c0b-3f85-4298-9004-fe8d657dd3ee"}'::jsonb,
  updated_at = now()
WHERE id = '8b9a8c0b-3f85-4298-9004-fe8d657dd3ee';

UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(3x+32)^2 - (3x-32)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$384x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=3x+32$, $v=3x-32$."},{"id":"B","text":"$6x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$128x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$9x^2+1024$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=3x+32$, $v=3x-32$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(6x)(64)=384x$.
**Step 4:** Confirm by expanding both forms.

**Distractor analysis:**
- **B** ($6x^2$): Squares each binomial separately — wrong approach.
- **C** ($128x$): Uses $4b$ instead of $4ab$.
- **D** ($9x^2+1024$): Adds squares; not equivalent.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"8d64d63a-c972-4ab1-ab75-7a7c306a935d"}'::jsonb,
  updated_at = now()
WHERE id = '8d64d63a-c972-4ab1-ab75-7a7c306a935d';

UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(4x+24)^2 - (4x-24)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$384x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=4x+24$, $v=4x-24$."},{"id":"B","text":"$8x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$96x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$16x^2+576$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=4x+24$, $v=4x-24$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(8x)(48)=384x$.
**Step 4:** Confirm by expanding both forms.

**Distractor analysis:**
- **B** ($8x^2$): Squares each binomial separately — wrong approach.
- **C** ($96x$): Uses $4b$ instead of $4ab$.
- **D** ($16x^2+576$): Adds squares; not equivalent.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"999da41e-1d17-4753-804d-2cc86c330cb6"}'::jsonb,
  updated_at = now()
WHERE id = '999da41e-1d17-4753-804d-2cc86c330cb6';

UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(4x+12)^2 - (4x-12)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$192x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=4x+12$, $v=4x-12$."},{"id":"B","text":"$8x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$48x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$16x^2+144$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=4x+12$, $v=4x-12$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(8x)(24)=192x$.
**Step 4:** Confirm by expanding both forms.

**Distractor analysis:**
- **B** ($8x^2$): Squares each binomial separately — wrong approach.
- **C** ($48x$): Uses $4b$ instead of $4ab$.
- **D** ($16x^2+144$): Adds squares; not equivalent.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_ai_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","model":"gemma-4-26b-a4b-it","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"a90486c6-41c6-45fd-bce8-bd540f9f62ba"}'::jsonb,
  updated_at = now()
WHERE id = 'a90486c6-41c6-45fd-bce8-bd540f9f62ba';

UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(3x+20)^2 - (3x-20)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$240x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=3x+20$, $v=3x-20$."},{"id":"B","text":"$6x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$80x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$9x^2+400$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=3x+20$, $v=3x-20$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(6x)(40)=240x$.
**Step 4:** Confirm by expanding both forms.

**Distractor analysis:**
- **B** ($6x^2$): Squares each binomial separately — wrong approach.
- **C** ($80x$): Uses $4b$ instead of $4ab$.
- **D** ($9x^2+400$): Adds squares; not equivalent.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"be090de2-89d3-4708-a371-6e76b76e21cd"}'::jsonb,
  updated_at = now()
WHERE id = 'be090de2-89d3-4708-a371-6e76b76e21cd';

UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(5x+43)^2 - (5x-43)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$860x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=5x+43$, $v=5x-43$."},{"id":"B","text":"$10x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$172x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$25x^2+1849$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=5x+43$, $v=5x-43$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(10x)(86)=860x$.
**Step 4:** Confirm by expanding both forms.

**Distractor analysis:**
- **B** ($10x^2$): Squares each binomial separately — wrong approach.
- **C** ($172x$): Uses $4b$ instead of $4ab$.
- **D** ($25x^2+1849$): Adds squares; not equivalent.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_ai_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","model":"gemma-4-26b-a4b-it","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"d31ceae3-24fd-4d4e-a771-2db0cf47266b"}'::jsonb,
  updated_at = now()
WHERE id = 'd31ceae3-24fd-4d4e-a771-2db0cf47266b';

UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(3x+17)^2 - (3x-17)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$204x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=3x+17$, $v=3x-17$."},{"id":"B","text":"$6x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$68x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$9x^2+289$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=3x+17$, $v=3x-17$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(6x)(34)=204x$.
**Step 4:** Confirm by expanding both forms.

**Distractor analysis:**
- **B** ($6x^2$): Squares each binomial separately — wrong approach.
- **C** ($68x$): Uses $4b$ instead of $4ab$.
- **D** ($9x^2+289$): Adds squares; not equivalent.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"d9f1bc01-bdce-43e6-91da-981b469fbc65"}'::jsonb,
  updated_at = now()
WHERE id = 'd9f1bc01-bdce-43e6-91da-981b469fbc65';

UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(4x+15)^2 - (4x-15)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$240x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=4x+15$, $v=4x-15$."},{"id":"B","text":"$8x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$60x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$16x^2+225$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=4x+15$, $v=4x-15$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(8x)(30)=240x$.
**Step 4:** Confirm by expanding both forms.

**Distractor analysis:**
- **B** ($8x^2$): Squares each binomial separately — wrong approach.
- **C** ($60x$): Uses $4b$ instead of $4ab$.
- **D** ($16x^2+225$): Adds squares; not equivalent.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"e0aba63e-acd2-4da5-bf26-ce4984d201ac"}'::jsonb,
  updated_at = now()
WHERE id = 'e0aba63e-acd2-4da5-bf26-ce4984d201ac';

UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(4x+45)^2 - (4x-45)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$720x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=4x+45$, $v=4x-45$."},{"id":"B","text":"$8x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$180x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$16x^2+2025$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=4x+45$, $v=4x-45$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(8x)(90)=720x$.
**Step 4:** Confirm by expanding both forms.

**Distractor analysis:**
- **B** ($8x^2$): Squares each binomial separately — wrong approach.
- **C** ($180x$): Uses $4b$ instead of $4ab$.
- **D** ($16x^2+2025$): Adds squares; not equivalent.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"e7a66733-b063-4fe1-801e-ba3509e68bb8"}'::jsonb,
  updated_at = now()
WHERE id = 'e7a66733-b063-4fe1-801e-ba3509e68bb8';

UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(4x+42)^2 - (4x-42)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$672x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=4x+42$, $v=4x-42$."},{"id":"B","text":"$8x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$168x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$16x^2+1764$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=4x+42$, $v=4x-42$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(8x)(84)=672x$.
**Step 4:** Confirm by expanding both forms.

**Distractor analysis:**
- **B** ($8x^2$): Squares each binomial separately — wrong approach.
- **C** ($168x$): Uses $4b$ instead of $4ab$.
- **D** ($16x^2+1764$): Adds squares; not equivalent.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_ai_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","model":"gemma-4-26b-a4b-it","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"e7d886a1-3523-4f17-9091-71c78423d992"}'::jsonb,
  updated_at = now()
WHERE id = 'e7d886a1-3523-4f17-9091-71c78423d992';

UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(5x+31)^2 - (5x-31)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$620x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=5x+31$, $v=5x-31$."},{"id":"B","text":"$10x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$124x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$25x^2+961$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=5x+31$, $v=5x-31$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(10x)(62)=620x$.
**Step 4:** Confirm by expanding both forms.

**Distractor analysis:**
- **B** ($10x^2$): Squares each binomial separately — wrong approach.
- **C** ($124x$): Uses $4b$ instead of $4ab$.
- **D** ($25x^2+961$): Adds squares; not equivalent.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"f744c07d-5350-4f1e-b465-4ce23e815c85"}'::jsonb,
  updated_at = now()
WHERE id = 'f744c07d-5350-4f1e-b465-4ce23e815c85';

UPDATE public.questions SET
  question_text = 'Which choice best evaluates the claim?',
  stimulus_text = 'A critic claims "nobody likes the new app" after surveying 297 followers who commented on one negative post.',
  options = '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"Correct (A). **Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because ${sample} responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.
**Step 4:** Larger convenience sample still biased.

**Distractor analysis:**
- **B** (The claim is valid because ${sample} responses is large): Size alone does not fix selection bias.
- **C** (The claim is valid because social media represents everyone): Platform users are not the entire population.
- **D** (The claim is valid because one post reflects all opinions): One thread is not representative.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"2d3102b4-3bda-4228-82cd-bd468750c27e"}'::jsonb,
  updated_at = now()
WHERE id = '2d3102b4-3bda-4228-82cd-bd468750c27e';

UPDATE public.questions SET
  question_text = 'Which choice best evaluates the claim?',
  stimulus_text = 'A critic claims "nobody likes the new app" after surveying 243 followers who commented on one negative post.',
  options = '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"Correct (A). **Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because ${sample} responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.
**Step 4:** Larger convenience sample still biased.

**Distractor analysis:**
- **B** (The claim is valid because ${sample} responses is large): Size alone does not fix selection bias.
- **C** (The claim is valid because social media represents everyone): Platform users are not the entire population.
- **D** (The claim is valid because one post reflects all opinions): One thread is not representative.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"3c968789-2251-4794-b6b5-052dbc1d4c8b"}'::jsonb,
  updated_at = now()
WHERE id = '3c968789-2251-4794-b6b5-052dbc1d4c8b';

UPDATE public.questions SET
  question_text = 'Which choice best evaluates the claim?',
  stimulus_text = 'A critic claims "nobody likes the new app" after surveying 99 followers who commented on one negative post.',
  options = '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"Correct (A). **Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because ${sample} responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.
**Step 4:** Larger convenience sample still biased.

**Distractor analysis:**
- **B** (The claim is valid because ${sample} responses is large): Size alone does not fix selection bias.
- **C** (The claim is valid because social media represents everyone): Platform users are not the entire population.
- **D** (The claim is valid because one post reflects all opinions): One thread is not representative.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"70582b13-07ea-4053-93b3-a18ca3735c21"}'::jsonb,
  updated_at = now()
WHERE id = '70582b13-07ea-4053-93b3-a18ca3735c21';

UPDATE public.questions SET
  question_text = 'Which choice best evaluates the claim?',
  stimulus_text = 'A critic claims "nobody likes the new app" after surveying 267 followers who commented on one negative post.',
  options = '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"Correct (A). **Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because ${sample} responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.
**Step 4:** Larger convenience sample still biased.

**Distractor analysis:**
- **B** (The claim is valid because ${sample} responses is large): Size alone does not fix selection bias.
- **C** (The claim is valid because social media represents everyone): Platform users are not the entire population.
- **D** (The claim is valid because one post reflects all opinions): One thread is not representative.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"eb666ec5-c475-4e1a-9286-d97bde6ff39f"}'::jsonb,
  updated_at = now()
WHERE id = 'eb666ec5-c475-4e1a-9286-d97bde6ff39f';

UPDATE public.questions SET
  question_text = 'Which choice best evaluates the claim?',
  stimulus_text = 'A critic claims "nobody likes the new app" after surveying 135 followers who commented on one negative post.',
  options = '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"Correct (A). **Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because ${sample} responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.
**Step 4:** Larger convenience sample still biased.

**Distractor analysis:**
- **B** (The claim is valid because ${sample} responses is large): Size alone does not fix selection bias.
- **C** (The claim is valid because social media represents everyone): Platform users are not the entire population.
- **D** (The claim is valid because one post reflects all opinions): One thread is not representative.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"f2947b54-7a1b-4e3d-92bc-c9e89e20ef44"}'::jsonb,
  updated_at = now()
WHERE id = 'f2947b54-7a1b-4e3d-92bc-c9e89e20ef44';

UPDATE public.questions SET
  question_text = 'Which choice best evaluates the claim?',
  stimulus_text = 'A critic claims "nobody likes the new app" after surveying 285 followers who commented on one negative post.',
  options = '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"Correct (A). **Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because ${sample} responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.
**Step 4:** Larger convenience sample still biased.

**Distractor analysis:**
- **B** (The claim is valid because ${sample} responses is large): Size alone does not fix selection bias.
- **C** (The claim is valid because social media represents everyone): Platform users are not the entire population.
- **D** (The claim is valid because one post reflects all opinions): One thread is not representative.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"fb99cbd2-acde-40f0-86fd-8221e191bec6"}'::jsonb,
  updated_at = now()
WHERE id = 'fb99cbd2-acde-40f0-86fd-8221e191bec6';

UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 59% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.',
  options = '[{"id":"A","text":"Exactly 59% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 55% and 63%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 55% to 63%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 55% to 63%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Distractor analysis:**
- **A** (Exactly 59% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"5868a85e-7309-4b5a-a289-a7d4beb5b91f"}'::jsonb,
  updated_at = now()
WHERE id = '5868a85e-7309-4b5a-a289-a7d4beb5b91f';

UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 68% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.',
  options = '[{"id":"A","text":"Exactly 68% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 64% and 72%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 64% to 72%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 64% to 72%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Distractor analysis:**
- **A** (Exactly 68% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"75d3e453-aa4d-4586-843b-23f14413a895"}'::jsonb,
  updated_at = now()
WHERE id = '75d3e453-aa4d-4586-843b-23f14413a895';

UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 59% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.',
  options = '[{"id":"A","text":"Exactly 59% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 55% and 63%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 55% to 63%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 55% to 63%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Distractor analysis:**
- **A** (Exactly 59% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"89a46d91-930a-4d54-91b3-01081b010bc3"}'::jsonb,
  updated_at = now()
WHERE id = '89a46d91-930a-4d54-91b3-01081b010bc3';

UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 56% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.',
  options = '[{"id":"A","text":"Exactly 56% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 52% and 60%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 52% to 60%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 52% to 60%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Distractor analysis:**
- **A** (Exactly 56% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"946fab21-ffdc-43d5-9611-034041b493b4"}'::jsonb,
  updated_at = now()
WHERE id = '946fab21-ffdc-43d5-9611-034041b493b4';

UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 65% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.',
  options = '[{"id":"A","text":"Exactly 65% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 61% and 69%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 61% to 69%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 61% to 69%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Distractor analysis:**
- **A** (Exactly 65% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"ad0fa41c-1a0e-4b66-9b7b-454aa4f0f224"}'::jsonb,
  updated_at = now()
WHERE id = 'ad0fa41c-1a0e-4b66-9b7b-454aa4f0f224';

UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 65% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.',
  options = '[{"id":"A","text":"Exactly 65% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 61% and 69%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 61% to 69%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 61% to 69%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Distractor analysis:**
- **A** (Exactly 65% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"fdf3d32e-5647-4388-8622-11354e31e527"}'::jsonb,
  updated_at = now()
WHERE id = 'fdf3d32e-5647-4388-8622-11354e31e527';

UPDATE public.questions SET
  question_text = 'Which integer value of $x$ satisfies $3x + 9 > 194$ and is the smallest feasible reading?',
  stimulus_text = 'A sensor reading $R=ax+b$ must exceed 194 but stay at most 210 to trigger an alert.',
  options = '[{"id":"A","text":"$60$","is_correct":false,"explanation":"Choice A ($60$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$61$","is_correct":false,"explanation":"Choice B ($61$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$62$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$63$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 61.67$. **Step 2:** Smallest integer: 63."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $3x > 185$.
**Step 2:** $x > 61.67$.
**Step 3:** Among choices, $63$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Distractor analysis:**
- **A** ($60$): Choice A ($60$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($61$): Choice B ($61$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($62$): Borderline; strict inequality requires the next integer up.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"3437398f-75ba-4c87-ae93-015f098dd038"}'::jsonb,
  updated_at = now()
WHERE id = '3437398f-75ba-4c87-ae93-015f098dd038';

UPDATE public.questions SET
  question_text = 'Which integer value of $x$ satisfies $5x + 9 > 230$ and is the smallest feasible reading?',
  stimulus_text = 'A sensor reading $R=ax+b$ must exceed 230 but stay at most 246 to trigger an alert.',
  options = '[{"id":"A","text":"$42$","is_correct":false,"explanation":"Choice A ($42$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$43$","is_correct":false,"explanation":"Choice B ($43$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$44$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$45$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 44.20$. **Step 2:** Smallest integer: 45."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $5x > 221$.
**Step 2:** $x > 44.20$.
**Step 3:** Among choices, $45$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Distractor analysis:**
- **A** ($42$): Choice A ($42$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($43$): Choice B ($43$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($44$): Borderline; strict inequality requires the next integer up.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_ai_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","model":"gemma-4-26b-a4b-it","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"460a17b0-9669-4339-8d1d-94c0ff501447"}'::jsonb,
  updated_at = now()
WHERE id = '460a17b0-9669-4339-8d1d-94c0ff501447';

UPDATE public.questions SET
  question_text = 'Which integer value of $x$ satisfies $4x + 8 > 228$ and is the smallest feasible reading?',
  stimulus_text = 'A sensor reading $R=ax+b$ must exceed 228 but stay at most 244 to trigger an alert.',
  options = '[{"id":"A","text":"$53$","is_correct":false,"explanation":"Choice A ($53$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$54$","is_correct":false,"explanation":"Choice B ($54$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$55$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$56$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 55.00$. **Step 2:** Smallest integer: 56."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $4x > 220$.
**Step 2:** $x > 55.00$.
**Step 3:** Among choices, $56$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Distractor analysis:**
- **A** ($53$): Choice A ($53$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($54$): Choice B ($54$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($55$): Borderline; strict inequality requires the next integer up.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_ai_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","model":"gemma-4-26b-a4b-it","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"560c69d5-7850-436b-8f19-f564273b31f5"}'::jsonb,
  updated_at = now()
WHERE id = '560c69d5-7850-436b-8f19-f564273b31f5';

UPDATE public.questions SET
  question_text = 'Which integer value of $x$ satisfies $5x + 5 > 266$ and is the smallest feasible reading?',
  stimulus_text = 'A sensor reading $R=ax+b$ must exceed 266 but stay at most 282 to trigger an alert.',
  options = '[{"id":"A","text":"$50$","is_correct":false,"explanation":"Choice A ($50$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$51$","is_correct":false,"explanation":"Choice B ($51$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$52$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$53$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 52.20$. **Step 2:** Smallest integer: 53."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $5x > 261$.
**Step 2:** $x > 52.20$.
**Step 3:** Among choices, $53$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Distractor analysis:**
- **A** ($50$): Choice A ($50$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($51$): Choice B ($51$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($52$): Borderline; strict inequality requires the next integer up.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"63f549d7-9033-4ae6-8ef6-94567f2c85ee"}'::jsonb,
  updated_at = now()
WHERE id = '63f549d7-9033-4ae6-8ef6-94567f2c85ee';

UPDATE public.questions SET
  question_text = 'Which integer value of $x$ satisfies $4x + 10 > 214$ and is the smallest feasible reading?',
  stimulus_text = 'A sensor reading $R=ax+b$ must exceed 214 but stay at most 230 to trigger an alert.',
  options = '[{"id":"A","text":"$49$","is_correct":false,"explanation":"Too small: $4(49)+10=206$."},{"id":"B","text":"$50$","is_correct":false,"explanation":"Choice B ($50$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$51$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$52$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 51.00$. **Step 2:** Smallest integer: 52."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $4x > 204$.
**Step 2:** $x > 51.00$.
**Step 3:** Among choices, $52$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Distractor analysis:**
- **A** ($49$): Too small: $4(49)+10=206$.
- **B** ($50$): Choice B ($50$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($51$): Borderline; strict inequality requires the next integer up.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"772ddb90-f484-4c28-97f7-9345d7cf7ab6"}'::jsonb,
  updated_at = now()
WHERE id = '772ddb90-f484-4c28-97f7-9345d7cf7ab6';

UPDATE public.questions SET
  question_text = 'Which integer value of $x$ satisfies $3x + 7 > 132$ and is the smallest feasible reading?',
  stimulus_text = 'A sensor reading $R=ax+b$ must exceed 132 but stay at most 148 to trigger an alert.',
  options = '[{"id":"A","text":"$40$","is_correct":false,"explanation":"Choice A ($40$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$41$","is_correct":false,"explanation":"Choice B ($41$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$42$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$43$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 41.67$. **Step 2:** Smallest integer: 43."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $3x > 125$.
**Step 2:** $x > 41.67$.
**Step 3:** Among choices, $43$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Distractor analysis:**
- **A** ($40$): Choice A ($40$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($41$): Choice B ($41$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($42$): Borderline; strict inequality requires the next integer up.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_ai_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","model":"gemma-4-26b-a4b-it","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"a1a452ec-a023-46c5-ba2b-b14f144c40c3"}'::jsonb,
  updated_at = now()
WHERE id = 'a1a452ec-a023-46c5-ba2b-b14f144c40c3';

UPDATE public.questions SET
  question_text = 'Which integer value of $x$ satisfies $4x + 8 > 180$ and is the smallest feasible reading?',
  stimulus_text = 'A sensor reading $R=ax+b$ must exceed 180 but stay at most 196 to trigger an alert.',
  options = '[{"id":"A","text":"$41$","is_correct":false,"explanation":"Choice A ($41$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$42$","is_correct":false,"explanation":"Choice B ($42$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$43$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$44$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 43.00$. **Step 2:** Smallest integer: 44."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $4x > 172$.
**Step 2:** $x > 43.00$.
**Step 3:** Among choices, $44$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Distractor analysis:**
- **A** ($41$): Choice A ($41$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($42$): Choice B ($42$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($43$): Borderline; strict inequality requires the next integer up.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_ai_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","model":"gemma-4-26b-a4b-it","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"aa9f12b9-435f-4b3d-b2dc-7e57c239d95f"}'::jsonb,
  updated_at = now()
WHERE id = 'aa9f12b9-435f-4b3d-b2dc-7e57c239d95f';

UPDATE public.questions SET
  question_text = 'Which integer value of $x$ satisfies $4x + 10 > 214$ and is the smallest feasible reading?',
  stimulus_text = 'A sensor reading $R=ax+b$ must exceed 214 but stay at most 230 to trigger an alert.',
  options = '[{"id":"A","text":"$49$","is_correct":false,"explanation":"Too small: $4(49)+10=206$."},{"id":"B","text":"$50$","is_correct":false,"explanation":"Choice B ($50$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$51$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$52$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 51.00$. **Step 2:** Smallest integer: 52."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $4x > 204$.
**Step 2:** $x > 51.00$.
**Step 3:** Among choices, $52$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Distractor analysis:**
- **A** ($49$): Too small: $4(49)+10=206$.
- **B** ($50$): Choice B ($50$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($51$): Borderline; strict inequality requires the next integer up.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_ai_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","model":"gemma-4-26b-a4b-it","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"d8f41b58-083a-4d0f-9964-84a79a9721b5"}'::jsonb,
  updated_at = now()
WHERE id = 'd8f41b58-083a-4d0f-9964-84a79a9721b5';

UPDATE public.questions SET
  question_text = 'Which integer value of $x$ satisfies $6x + 10 > 426$ and is the smallest feasible reading?',
  stimulus_text = 'A sensor reading $R=ax+b$ must exceed 426 but stay at most 442 to trigger an alert.',
  options = '[{"id":"A","text":"$67$","is_correct":false,"explanation":"Too small: $6(67)+10=412$."},{"id":"B","text":"$68$","is_correct":false,"explanation":"Choice B ($68$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$69$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$70$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 69.33$. **Step 2:** Smallest integer: 70."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $6x > 416$.
**Step 2:** $x > 69.33$.
**Step 3:** Among choices, $70$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Distractor analysis:**
- **A** ($67$): Too small: $6(67)+10=412$.
- **B** ($68$): Choice B ($68$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($69$): Borderline; strict inequality requires the next integer up.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"dfcfe4c3-8017-49dc-a41a-4c490bf0e39b"}'::jsonb,
  updated_at = now()
WHERE id = 'dfcfe4c3-8017-49dc-a41a-4c490bf0e39b';

UPDATE public.questions SET
  question_text = 'Which integer value of $x$ satisfies $6x + 8 > 232$ and is the smallest feasible reading?',
  stimulus_text = 'A sensor reading $R=ax+b$ must exceed 232 but stay at most 248 to trigger an alert.',
  options = '[{"id":"A","text":"$35$","is_correct":false,"explanation":"Choice A ($35$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$36$","is_correct":false,"explanation":"Choice B ($36$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$37$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$38$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 37.33$. **Step 2:** Smallest integer: 38."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $6x > 224$.
**Step 2:** $x > 37.33$.
**Step 3:** Among choices, $38$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Distractor analysis:**
- **A** ($35$): Choice A ($35$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($36$): Choice B ($36$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($37$): Borderline; strict inequality requires the next integer up.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"e1e5f322-186c-4473-9477-d768ac3ba78a"}'::jsonb,
  updated_at = now()
WHERE id = 'e1e5f322-186c-4473-9477-d768ac3ba78a';

UPDATE public.questions SET
  question_text = 'Which integer value of $x$ satisfies $3x + 5 > 178$ and is the smallest feasible reading?',
  stimulus_text = 'A sensor reading $R=ax+b$ must exceed 178 but stay at most 194 to trigger an alert.',
  options = '[{"id":"A","text":"$56$","is_correct":false,"explanation":"Choice A ($56$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$57$","is_correct":false,"explanation":"Choice B ($57$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$58$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$59$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 57.67$. **Step 2:** Smallest integer: 59."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $3x > 173$.
**Step 2:** $x > 57.67$.
**Step 3:** Among choices, $59$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Distractor analysis:**
- **A** ($56$): Choice A ($56$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($57$): Choice B ($57$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($58$): Borderline; strict inequality requires the next integer up.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"ea7c2e52-49c1-4f46-87fd-4a79769fc3e0"}'::jsonb,
  updated_at = now()
WHERE id = 'ea7c2e52-49c1-4f46-87fd-4a79769fc3e0';

UPDATE public.questions SET
  question_text = 'Which integer value of $x$ satisfies $5x + 5 > 146$ and is the smallest feasible reading?',
  stimulus_text = 'A sensor reading $R=ax+b$ must exceed 146 but stay at most 162 to trigger an alert.',
  options = '[{"id":"A","text":"$26$","is_correct":false,"explanation":"Choice A ($26$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$27$","is_correct":false,"explanation":"Choice B ($27$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$28$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$29$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 28.20$. **Step 2:** Smallest integer: 29."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $5x > 141$.
**Step 2:** $x > 28.20$.
**Step 3:** Among choices, $29$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Distractor analysis:**
- **A** ($26$): Choice A ($26$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($27$): Choice B ($27$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($28$): Borderline; strict inequality requires the next integer up.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_ai_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","model":"gemma-4-26b-a4b-it","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"f8b30c60-f29f-45d0-be44-c2c8cc061f51"}'::jsonb,
  updated_at = now()
WHERE id = 'f8b30c60-f29f-45d0-be44-c2c8cc061f51';

UPDATE public.questions SET
  question_text = 'If the vehicle continues at the same rate, what is $d$ when $t=64$?',
  stimulus_text = 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=3t+54$. At $t=56$, $d=222$.',
  options = '[{"id":"A","text":"$243$","is_correct":false,"explanation":"Choice A ($243$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$225$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=64$."},{"id":"C","text":"$246$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(64)+54$. **Step 2:** $d=246$."},{"id":"D","text":"$192$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rate is $3$ mi/h with intercept $54$.
**Step 2:** $d=3(64)+54=246$.
**Step 3:** Cross-check via $(64-56)×3+222=246$.

**Distractor analysis:**
- **A** ($243$): Choice A ($243$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($225$): Adds slope once instead of evaluating at $t=64$.
- **D** ($192$): Forgets the intercept $+${b}$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.057Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"0b9552c6-edb9-49e9-aa7f-6d0c5174a8a2"}'::jsonb,
  updated_at = now()
WHERE id = '0b9552c6-edb9-49e9-aa7f-6d0c5174a8a2';

UPDATE public.questions SET
  question_text = 'If the vehicle continues at the same rate, what is $d$ when $t=32$?',
  stimulus_text = 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=3t+22$. At $t=24$, $d=94$.',
  options = '[{"id":"A","text":"$115$","is_correct":false,"explanation":"Choice A ($115$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$97$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=32$."},{"id":"C","text":"$118$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(32)+22$. **Step 2:** $d=118$."},{"id":"D","text":"$96$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rate is $3$ mi/h with intercept $22$.
**Step 2:** $d=3(32)+22=118$.
**Step 3:** Cross-check via $(32-24)×3+94=118$.

**Distractor analysis:**
- **A** ($115$): Choice A ($115$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($97$): Adds slope once instead of evaluating at $t=32$.
- **D** ($96$): Forgets the intercept $+${b}$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"36896add-dd19-40bc-be68-cee2324c3de1"}'::jsonb,
  updated_at = now()
WHERE id = '36896add-dd19-40bc-be68-cee2324c3de1';

UPDATE public.questions SET
  question_text = 'If the vehicle continues at the same rate, what is $d$ when $t=40$?',
  stimulus_text = 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=3t+30$. At $t=32$, $d=126$.',
  options = '[{"id":"A","text":"$147$","is_correct":false,"explanation":"Choice A ($147$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$129$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=40$."},{"id":"C","text":"$150$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(40)+30$. **Step 2:** $d=150$."},{"id":"D","text":"$120$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rate is $3$ mi/h with intercept $30$.
**Step 2:** $d=3(40)+30=150$.
**Step 3:** Cross-check via $(40-32)×3+126=150$.

**Distractor analysis:**
- **A** ($147$): Choice A ($147$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($129$): Adds slope once instead of evaluating at $t=40$.
- **D** ($120$): Forgets the intercept $+${b}$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"74d1cefd-5beb-4cdf-b4d5-eb5da99fe55b"}'::jsonb,
  updated_at = now()
WHERE id = '74d1cefd-5beb-4cdf-b4d5-eb5da99fe55b';

UPDATE public.questions SET
  question_text = 'If the vehicle continues at the same rate, what is $d$ when $t=23$?',
  stimulus_text = 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=6t+13$. At $t=15$, $d=103$.',
  options = '[{"id":"A","text":"$145$","is_correct":false,"explanation":"Choice A ($145$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$109$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=23$."},{"id":"C","text":"$151$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=6(23)+13$. **Step 2:** $d=151$."},{"id":"D","text":"$138$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rate is $6$ mi/h with intercept $13$.
**Step 2:** $d=6(23)+13=151$.
**Step 3:** Cross-check via $(23-15)×6+103=151$.

**Distractor analysis:**
- **A** ($145$): Choice A ($145$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($109$): Adds slope once instead of evaluating at $t=23$.
- **D** ($138$): Forgets the intercept $+${b}$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"7a5702ed-b0c4-4c05-b273-c8fa330fc610"}'::jsonb,
  updated_at = now()
WHERE id = '7a5702ed-b0c4-4c05-b273-c8fa330fc610';

UPDATE public.questions SET
  question_text = 'If the vehicle continues at the same rate, what is $d$ when $t=43$?',
  stimulus_text = 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=6t+33$. At $t=35$, $d=243$.',
  options = '[{"id":"A","text":"$285$","is_correct":false,"explanation":"Choice A ($285$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$249$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=43$."},{"id":"C","text":"$291$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=6(43)+33$. **Step 2:** $d=291$."},{"id":"D","text":"$258$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rate is $6$ mi/h with intercept $33$.
**Step 2:** $d=6(43)+33=291$.
**Step 3:** Cross-check via $(43-35)×6+243=291$.

**Distractor analysis:**
- **A** ($285$): Choice A ($285$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($249$): Adds slope once instead of evaluating at $t=43$.
- **D** ($258$): Forgets the intercept $+${b}$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"835ba3b0-b86f-497d-825a-05dccb70a751"}'::jsonb,
  updated_at = now()
WHERE id = '835ba3b0-b86f-497d-825a-05dccb70a751';

UPDATE public.questions SET
  question_text = 'If the vehicle continues at the same rate, what is $d$ when $t=68$?',
  stimulus_text = 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=3t+58$. At $t=60$, $d=238$.',
  options = '[{"id":"A","text":"$259$","is_correct":false,"explanation":"Choice A ($259$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$241$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=68$."},{"id":"C","text":"$262$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(68)+58$. **Step 2:** $d=262$."},{"id":"D","text":"$204$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rate is $3$ mi/h with intercept $58$.
**Step 2:** $d=3(68)+58=262$.
**Step 3:** Cross-check via $(68-60)×3+238=262$.

**Distractor analysis:**
- **A** ($259$): Choice A ($259$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($241$): Adds slope once instead of evaluating at $t=68$.
- **D** ($204$): Forgets the intercept $+${b}$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"b5eb1bf7-47c6-4ea1-bbed-957464f7d231"}'::jsonb,
  updated_at = now()
WHERE id = 'b5eb1bf7-47c6-4ea1-bbed-957464f7d231';

UPDATE public.questions SET
  question_text = 'If the vehicle continues at the same rate, what is $d$ when $t=37$?',
  stimulus_text = 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=4t+27$. At $t=29$, $d=143$.',
  options = '[{"id":"A","text":"$171$","is_correct":false,"explanation":"Choice A ($171$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$147$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=37$."},{"id":"C","text":"$175$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=4(37)+27$. **Step 2:** $d=175$."},{"id":"D","text":"$148$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rate is $4$ mi/h with intercept $27$.
**Step 2:** $d=4(37)+27=175$.
**Step 3:** Cross-check via $(37-29)×4+143=175$.

**Distractor analysis:**
- **A** ($171$): Choice A ($171$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($147$): Adds slope once instead of evaluating at $t=37$.
- **D** ($148$): Forgets the intercept $+${b}$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"bbcee4f1-0772-4f23-bdf1-3d4c7e6dcbbd"}'::jsonb,
  updated_at = now()
WHERE id = 'bbcee4f1-0772-4f23-bdf1-3d4c7e6dcbbd';

UPDATE public.questions SET
  question_text = 'If the vehicle continues at the same rate, what is $d$ when $t=42$?',
  stimulus_text = 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=5t+32$. At $t=34$, $d=202$.',
  options = '[{"id":"A","text":"$237$","is_correct":false,"explanation":"Choice A ($237$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$207$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=42$."},{"id":"C","text":"$242$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(42)+32$. **Step 2:** $d=242$."},{"id":"D","text":"$210$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rate is $5$ mi/h with intercept $32$.
**Step 2:** $d=5(42)+32=242$.
**Step 3:** Cross-check via $(42-34)×5+202=242$.

**Distractor analysis:**
- **A** ($237$): Choice A ($237$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($207$): Adds slope once instead of evaluating at $t=42$.
- **D** ($210$): Forgets the intercept $+${b}$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"e1c29918-bd76-43f7-bf7e-76551ec4094d"}'::jsonb,
  updated_at = now()
WHERE id = 'e1c29918-bd76-43f7-bf7e-76551ec4094d';

UPDATE public.questions SET
  question_text = 'If the vehicle continues at the same rate, what is $d$ when $t=46$?',
  stimulus_text = 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=5t+36$. At $t=38$, $d=226$.',
  options = '[{"id":"A","text":"$261$","is_correct":false,"explanation":"Choice A ($261$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$231$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=46$."},{"id":"C","text":"$266$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(46)+36$. **Step 2:** $d=266$."},{"id":"D","text":"$230$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rate is $5$ mi/h with intercept $36$.
**Step 2:** $d=5(46)+36=266$.
**Step 3:** Cross-check via $(46-38)×5+226=266$.

**Distractor analysis:**
- **A** ($261$): Choice A ($261$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($231$): Adds slope once instead of evaluating at $t=46$.
- **D** ($230$): Forgets the intercept $+${b}$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"f2cb2fb7-0a76-446b-a54f-d671ba7ef088"}'::jsonb,
  updated_at = now()
WHERE id = 'f2cb2fb7-0a76-446b-a54f-d671ba7ef088';

UPDATE public.questions SET
  question_text = 'If the vehicle continues at the same rate, what is $d$ when $t=28$?',
  stimulus_text = 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=3t+18$. At $t=20$, $d=78$.',
  options = '[{"id":"A","text":"$99$","is_correct":false,"explanation":"Choice A ($99$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$81$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=28$."},{"id":"C","text":"$102$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(28)+18$. **Step 2:** $d=102$."},{"id":"D","text":"$84$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rate is $3$ mi/h with intercept $18$.
**Step 2:** $d=3(28)+18=102$.
**Step 3:** Cross-check via $(28-20)×3+78=102$.

**Distractor analysis:**
- **A** ($99$): Choice A ($99$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($81$): Adds slope once instead of evaluating at $t=28$.
- **D** ($84$): Forgets the intercept $+${b}$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"f48157be-0dc2-43dc-a181-0ed86f8059c9"}'::jsonb,
  updated_at = now()
WHERE id = 'f48157be-0dc2-43dc-a181-0ed86f8059c9';

UPDATE public.questions SET
  question_text = 'Linear function $f$ models temperature. $f(42)=36$ and $f(48)=54$. What is $f(-44)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-219$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-226$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-222$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-44)=-222$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Slope $m=\frac{54-36}{48-42}=3$.
**Step 2:** Point-slope: $f(-44)=3(-44-42)+(36)$.
**Step 3:** $f(-44)=-222$.
**Step 4:** Verify with second point.

**Distractor analysis:**
- **A** ($-219$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-226$): Arithmetic slip in point-slope form.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"168af500-2051-47fd-aef4-ab0972429c99"}'::jsonb,
  updated_at = now()
WHERE id = '168af500-2051-47fd-aef4-ab0972429c99';

UPDATE public.questions SET
  question_text = 'Linear function $f$ models temperature. $f(8)=2$ and $f(14)=32$. What is $f(-10)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-83$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-92$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-88$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-10)=-88$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Slope $m=\frac{32-2}{14-8}=5$.
**Step 2:** Point-slope: $f(-10)=5(-10-8)+(2)$.
**Step 3:** $f(-10)=-88$.
**Step 4:** Verify with second point.

**Distractor analysis:**
- **A** ($-83$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-92$): Arithmetic slip in point-slope form.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_ai_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","model":"gemma-4-26b-a4b-it","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"18b1f8ab-c4d6-42c8-bf02-9210a6611997"}'::jsonb,
  updated_at = now()
WHERE id = '18b1f8ab-c4d6-42c8-bf02-9210a6611997';

UPDATE public.questions SET
  question_text = 'Linear function $f$ models temperature. $f(59)=53$ and $f(65)=83$. What is $f(-61)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-542$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-551$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-547$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-61)=-547$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Slope $m=\frac{83-53}{65-59}=5$.
**Step 2:** Point-slope: $f(-61)=5(-61-59)+(53)$.
**Step 3:** $f(-61)=-547$.
**Step 4:** Verify with second point.

**Distractor analysis:**
- **A** ($-542$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-551$): Arithmetic slip in point-slope form.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_ai_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","model":"gemma-4-26b-a4b-it","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"2df01079-8d82-4a13-9e01-d71c21bd2408"}'::jsonb,
  updated_at = now()
WHERE id = '2df01079-8d82-4a13-9e01-d71c21bd2408';

UPDATE public.questions SET
  question_text = 'Linear function $f$ models temperature. $f(59)=53$ and $f(65)=83$. What is $f(-61)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-542$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-551$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-547$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-61)=-547$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Slope $m=\frac{83-53}{65-59}=5$.
**Step 2:** Point-slope: $f(-61)=5(-61-59)+(53)$.
**Step 3:** $f(-61)=-547$.
**Step 4:** Verify with second point.

**Distractor analysis:**
- **A** ($-542$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-551$): Arithmetic slip in point-slope form.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_ai_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","model":"gemma-4-26b-a4b-it","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"31a42728-b9c4-4836-aa6f-0fdbe8a36b85"}'::jsonb,
  updated_at = now()
WHERE id = '31a42728-b9c4-4836-aa6f-0fdbe8a36b85';

UPDATE public.questions SET
  question_text = 'Linear function $f$ models temperature. $f(38)=32$ and $f(44)=62$. What is $f(-40)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-353$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-362$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-358$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-40)=-358$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Slope $m=\frac{62-32}{44-38}=5$.
**Step 2:** Point-slope: $f(-40)=5(-40-38)+(32)$.
**Step 3:** $f(-40)=-358$.
**Step 4:** Verify with second point.

**Distractor analysis:**
- **A** ($-353$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-362$): Arithmetic slip in point-slope form.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_ai_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","model":"gemma-4-26b-a4b-it","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"32a061f4-ce1a-4dcd-9d35-55cd7999c9c3"}'::jsonb,
  updated_at = now()
WHERE id = '32a061f4-ce1a-4dcd-9d35-55cd7999c9c3';

UPDATE public.questions SET
  question_text = 'Linear function $f$ models temperature. $f(45)=39$ and $f(51)=57$. What is $f(-47)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-234$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-241$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-237$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-47)=-237$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Slope $m=\frac{57-39}{51-45}=3$.
**Step 2:** Point-slope: $f(-47)=3(-47-45)+(39)$.
**Step 3:** $f(-47)=-237$.
**Step 4:** Verify with second point.

**Distractor analysis:**
- **A** ($-234$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-241$): Arithmetic slip in point-slope form.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"3c58ba73-2878-4e5a-bf4f-404f60422b41"}'::jsonb,
  updated_at = now()
WHERE id = '3c58ba73-2878-4e5a-bf4f-404f60422b41';

UPDATE public.questions SET
  question_text = 'Linear function $f$ models temperature. $f(21)=15$ and $f(27)=33$. What is $f(-23)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-114$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-121$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-117$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-23)=-117$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Slope $m=\frac{33-15}{27-21}=3$.
**Step 2:** Point-slope: $f(-23)=3(-23-21)+(15)$.
**Step 3:** $f(-23)=-117$.
**Step 4:** Verify with second point.

**Distractor analysis:**
- **A** ($-114$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-121$): Arithmetic slip in point-slope form.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_ai_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","model":"gemma-4-26b-a4b-it","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"6d923da3-0126-49c9-b0ff-771b1f3a355b"}'::jsonb,
  updated_at = now()
WHERE id = '6d923da3-0126-49c9-b0ff-771b1f3a355b';

UPDATE public.questions SET
  question_text = 'Linear function $f$ models temperature. $f(41)=35$ and $f(47)=65$. What is $f(-43)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-380$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-389$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-385$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-43)=-385$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Slope $m=\frac{65-35}{47-41}=5$.
**Step 2:** Point-slope: $f(-43)=5(-43-41)+(35)$.
**Step 3:** $f(-43)=-385$.
**Step 4:** Verify with second point.

**Distractor analysis:**
- **A** ($-380$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-389$): Arithmetic slip in point-slope form.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_ai_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","model":"gemma-4-26b-a4b-it","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"6e25d053-224a-4fc1-8a92-7056c34fcbe3"}'::jsonb,
  updated_at = now()
WHERE id = '6e25d053-224a-4fc1-8a92-7056c34fcbe3';

UPDATE public.questions SET
  question_text = 'Linear function $f$ models temperature. $f(42)=36$ and $f(48)=54$. What is $f(-44)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-219$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-226$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-222$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-44)=-222$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Slope $m=\frac{54-36}{48-42}=3$.
**Step 2:** Point-slope: $f(-44)=3(-44-42)+(36)$.
**Step 3:** $f(-44)=-222$.
**Step 4:** Verify with second point.

**Distractor analysis:**
- **A** ($-219$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-226$): Arithmetic slip in point-slope form.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"7586a349-9200-4019-b68f-48f422b4d3bf"}'::jsonb,
  updated_at = now()
WHERE id = '7586a349-9200-4019-b68f-48f422b4d3bf';

UPDATE public.questions SET
  question_text = 'Linear function $f$ models temperature. $f(46)=40$ and $f(52)=64$. What is $f(-48)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-332$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-340$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-336$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=4$. **Step 2:** $f(-48)=-336$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Slope $m=\frac{64-40}{52-46}=4$.
**Step 2:** Point-slope: $f(-48)=4(-48-46)+(40)$.
**Step 3:** $f(-48)=-336$.
**Step 4:** Verify with second point.

**Distractor analysis:**
- **A** ($-332$): Adds slope once too many after point-slope setup.
- **B** ($4$): That is the rate of change, not $f(${x3})$.
- **C** ($-340$): Arithmetic slip in point-slope form.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_ai_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","model":"gemma-4-26b-a4b-it","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"92f8109a-23d2-439f-a2e9-d044e1d09ec0"}'::jsonb,
  updated_at = now()
WHERE id = '92f8109a-23d2-439f-a2e9-d044e1d09ec0';

UPDATE public.questions SET
  question_text = 'Linear function $f$ models temperature. $f(18)=12$ and $f(24)=30$. What is $f(-20)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-99$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-106$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-102$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-20)=-102$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Slope $m=\frac{30-12}{24-18}=3$.
**Step 2:** Point-slope: $f(-20)=3(-20-18)+(12)$.
**Step 3:** $f(-20)=-102$.
**Step 4:** Verify with second point.

**Distractor analysis:**
- **A** ($-99$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-106$): Arithmetic slip in point-slope form.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_ai_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","model":"gemma-4-26b-a4b-it","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"c00683e0-673d-4f3e-9b2a-b11afa45a122"}'::jsonb,
  updated_at = now()
WHERE id = 'c00683e0-673d-4f3e-9b2a-b11afa45a122';

UPDATE public.questions SET
  question_text = 'Linear function $f$ models temperature. $f(56)=50$ and $f(62)=80$. What is $f(-58)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-515$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-524$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-520$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-58)=-520$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Slope $m=\frac{80-50}{62-56}=5$.
**Step 2:** Point-slope: $f(-58)=5(-58-56)+(50)$.
**Step 3:** $f(-58)=-520$.
**Step 4:** Verify with second point.

**Distractor analysis:**
- **A** ($-515$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-524$): Arithmetic slip in point-slope form.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"c383fd22-ec02-4666-aafb-6e76caef7aad"}'::jsonb,
  updated_at = now()
WHERE id = 'c383fd22-ec02-4666-aafb-6e76caef7aad';

UPDATE public.questions SET
  question_text = 'For what value of $k$ does $8(x-3)+2k = 214$ have solution $x=29$?',
  stimulus_text = 'A calibration device applies scale factor 8, then adds a correction term involving parameter $k$.',
  options = '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=29$. **Step 2:** Solve for $k=3$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$29$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=29$: $8(29-k)+2k=214$.
**Step 2:** Expand: $232-8k+2k=214$ → $232+-6k=214$.
**Step 3:** Isolate: $-6k=-18$ → $k=3$.
**Step 4:** Verify by substituting $k=3$ back.

**Distractor analysis:**
- **A** ($1$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($4$): Too large; re-check the linear equation in $k$.
- **D** ($29$): That is the given solution for $x$, not the parameter $k$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"1bb3c3d4-99ab-4d69-a674-bc8de7720a66"}'::jsonb,
  updated_at = now()
WHERE id = '1bb3c3d4-99ab-4d69-a674-bc8de7720a66';

UPDATE public.questions SET
  question_text = 'For what value of $k$ does $5(x-8)+2k = 56$ have solution $x=16$?',
  stimulus_text = 'A calibration device applies scale factor 5, then adds a correction term involving parameter $k$.',
  options = '[{"id":"A","text":"$6$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$8$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=16$. **Step 2:** Solve for $k=8$."},{"id":"C","text":"$9$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$16$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=16$: $5(16-k)+2k=56$.
**Step 2:** Expand: $80-5k+2k=56$ → $80+-3k=56$.
**Step 3:** Isolate: $-3k=-24$ → $k=8$.
**Step 4:** Verify by substituting $k=8$ back.

**Distractor analysis:**
- **A** ($6$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($9$): Too large; re-check the linear equation in $k$.
- **D** ($16$): That is the given solution for $x$, not the parameter $k$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"5fe4cdc8-d841-4e33-a3c4-e991aa37ece2"}'::jsonb,
  updated_at = now()
WHERE id = '5fe4cdc8-d841-4e33-a3c4-e991aa37ece2';

UPDATE public.questions SET
  question_text = 'For what value of $k$ does $5(x-8)+2k = 56$ have solution $x=16$?',
  stimulus_text = 'A calibration device applies scale factor 5, then adds a correction term involving parameter $k$.',
  options = '[{"id":"A","text":"$6$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$8$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=16$. **Step 2:** Solve for $k=8$."},{"id":"C","text":"$9$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$16$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=16$: $5(16-k)+2k=56$.
**Step 2:** Expand: $80-5k+2k=56$ → $80+-3k=56$.
**Step 3:** Isolate: $-3k=-24$ → $k=8$.
**Step 4:** Verify by substituting $k=8$ back.

**Distractor analysis:**
- **A** ($6$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($9$): Too large; re-check the linear equation in $k$.
- **D** ($16$): That is the given solution for $x$, not the parameter $k$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"7546ea23-7a70-477c-9148-a554525cc93f"}'::jsonb,
  updated_at = now()
WHERE id = '7546ea23-7a70-477c-9148-a554525cc93f';

UPDATE public.questions SET
  question_text = 'For what value of $k$ does $8(x-5)+2k = 122$ have solution $x=19$?',
  stimulus_text = 'A calibration device applies scale factor 8, then adds a correction term involving parameter $k$.',
  options = '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$5$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=19$. **Step 2:** Solve for $k=5$."},{"id":"C","text":"$6$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$19$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=19$: $8(19-k)+2k=122$.
**Step 2:** Expand: $152-8k+2k=122$ → $152+-6k=122$.
**Step 3:** Isolate: $-6k=-30$ → $k=5$.
**Step 4:** Verify by substituting $k=5$ back.

**Distractor analysis:**
- **A** ($3$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($6$): Too large; re-check the linear equation in $k$.
- **D** ($19$): That is the given solution for $x$, not the parameter $k$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"7a58df60-0d86-4d5d-9a80-c6a3b815037b"}'::jsonb,
  updated_at = now()
WHERE id = '7a58df60-0d86-4d5d-9a80-c6a3b815037b';

UPDATE public.questions SET
  question_text = 'For what value of $k$ does $8(x-3)+2k = 214$ have solution $x=29$?',
  stimulus_text = 'A calibration device applies scale factor 8, then adds a correction term involving parameter $k$.',
  options = '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=29$. **Step 2:** Solve for $k=3$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$29$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=29$: $8(29-k)+2k=214$.
**Step 2:** Expand: $232-8k+2k=214$ → $232+-6k=214$.
**Step 3:** Isolate: $-6k=-18$ → $k=3$.
**Step 4:** Verify by substituting $k=3$ back.

**Distractor analysis:**
- **A** ($1$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($4$): Too large; re-check the linear equation in $k$.
- **D** ($29$): That is the given solution for $x$, not the parameter $k$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"7fc84ecb-f780-472d-9369-3500f4232bf7"}'::jsonb,
  updated_at = now()
WHERE id = '7fc84ecb-f780-472d-9369-3500f4232bf7';

UPDATE public.questions SET
  question_text = 'For what value of $k$ does $7(x-5)+2k = 276$ have solution $x=43$?',
  stimulus_text = 'A calibration device applies scale factor 7, then adds a correction term involving parameter $k$.',
  options = '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$5$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=43$. **Step 2:** Solve for $k=5$."},{"id":"C","text":"$6$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$43$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=43$: $7(43-k)+2k=276$.
**Step 2:** Expand: $301-7k+2k=276$ → $301+-5k=276$.
**Step 3:** Isolate: $-5k=-25$ → $k=5$.
**Step 4:** Verify by substituting $k=5$ back.

**Distractor analysis:**
- **A** ($3$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($6$): Too large; re-check the linear equation in $k$.
- **D** ($43$): That is the given solution for $x$, not the parameter $k$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"a9750eea-f4b0-4e54-a8d6-492077c4de95"}'::jsonb,
  updated_at = now()
WHERE id = 'a9750eea-f4b0-4e54-a8d6-492077c4de95';

UPDATE public.questions SET
  question_text = 'For what value of $k$ does $4(x-8)+2k = 24$ have solution $x=10$?',
  stimulus_text = 'A calibration device applies scale factor 4, then adds a correction term involving parameter $k$.',
  options = '[{"id":"A","text":"$6$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$8$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=10$. **Step 2:** Solve for $k=8$."},{"id":"C","text":"$9$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$10$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=10$: $4(10-k)+2k=24$.
**Step 2:** Expand: $40-4k+2k=24$ → $40+-2k=24$.
**Step 3:** Isolate: $-2k=-16$ → $k=8$.
**Step 4:** Verify by substituting $k=8$ back.

**Distractor analysis:**
- **A** ($6$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($9$): Too large; re-check the linear equation in $k$.
- **D** ($10$): That is the given solution for $x$, not the parameter $k$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"c5d93507-9663-4854-be3b-ed214e3e23c0"}'::jsonb,
  updated_at = now()
WHERE id = 'c5d93507-9663-4854-be3b-ed214e3e23c0';

UPDATE public.questions SET
  question_text = 'What is $m\angle C$?',
  stimulus_text = 'In triangle $ABC$, $m\angle A = 88°$ and $m\angle B = 56°$. Line through $C$ forms exterior angle 144° with side $AB$.',
  options = '[{"id":"A","text":"$88°$","is_correct":false,"explanation":"Choice A ($88°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$56°$","is_correct":false,"explanation":"Choice B ($56°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$46°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$36°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 36°$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 88 - 56 = 36°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 88° + 56° + 36° = 180°.

**Distractor analysis:**
- **A** ($88°$): Choice A ($88°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($56°$): Choice B ($56°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($46°$): Too large for the triangle angle sum.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.055Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"033c19e6-a1e1-49cb-aad9-e3f811a6e484"}'::jsonb,
  updated_at = now()
WHERE id = '033c19e6-a1e1-49cb-aad9-e3f811a6e484';

UPDATE public.questions SET
  question_text = 'What is $m\angle C$?',
  stimulus_text = 'In triangle $ABC$, $m\angle A = 58°$ and $m\angle B = 52°$. Line through $C$ forms exterior angle 110° with side $AB$.',
  options = '[{"id":"A","text":"$58°$","is_correct":false,"explanation":"Choice A ($58°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$52°$","is_correct":false,"explanation":"Choice B ($52°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$80°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$70°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 70°$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 58 - 52 = 70°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 58° + 52° + 70° = 180°.

**Distractor analysis:**
- **A** ($58°$): Choice A ($58°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($52°$): Choice B ($52°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($80°$): Too large for the triangle angle sum.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"589569eb-4ddc-4ba2-8c17-a8d9d46d699f"}'::jsonb,
  updated_at = now()
WHERE id = '589569eb-4ddc-4ba2-8c17-a8d9d46d699f';

UPDATE public.questions SET
  question_text = 'What is $m\angle C$?',
  stimulus_text = 'In triangle $ABC$, $m\angle A = 76°$ and $m\angle B = 56°$. Line through $C$ forms exterior angle 132° with side $AB$.',
  options = '[{"id":"A","text":"$76°$","is_correct":false,"explanation":"Choice A ($76°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$56°$","is_correct":false,"explanation":"Choice B ($56°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$58°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$48°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 48°$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 76 - 56 = 48°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 76° + 56° + 48° = 180°.

**Distractor analysis:**
- **A** ($76°$): Choice A ($76°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($56°$): Choice B ($56°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($58°$): Too large for the triangle angle sum.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"76fc7465-61d1-4753-b573-eb0391ad16dd"}'::jsonb,
  updated_at = now()
WHERE id = '76fc7465-61d1-4753-b573-eb0391ad16dd';

UPDATE public.questions SET
  question_text = 'What is $m\angle C$?',
  stimulus_text = 'In triangle $ABC$, $m\angle A = 64°$ and $m\angle B = 52°$. Line through $C$ forms exterior angle 116° with side $AB$.',
  options = '[{"id":"A","text":"$64°$","is_correct":false,"explanation":"Choice A ($64°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$52°$","is_correct":false,"explanation":"Choice B ($52°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$74°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$64°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 64°$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 64 - 52 = 64°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 64° + 52° + 64° = 180°.

**Distractor analysis:**
- **A** ($64°$): Choice A ($64°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($52°$): Choice B ($52°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($74°$): Too large for the triangle angle sum.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"814cc53f-b827-4781-b017-59711a6d2c19"}'::jsonb,
  updated_at = now()
WHERE id = '814cc53f-b827-4781-b017-59711a6d2c19';

UPDATE public.questions SET
  question_text = 'What is $m\angle C$?',
  stimulus_text = 'In triangle $ABC$, $m\angle A = 76°$ and $m\angle B = 52°$. Line through $C$ forms exterior angle 128° with side $AB$.',
  options = '[{"id":"A","text":"$76°$","is_correct":false,"explanation":"Choice A ($76°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$52°$","is_correct":false,"explanation":"Choice B ($52°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$62°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$52°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 52°$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 76 - 52 = 52°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 76° + 52° + 52° = 180°.

**Distractor analysis:**
- **A** ($76°$): Choice A ($76°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($52°$): Choice B ($52°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($62°$): Too large for the triangle angle sum.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"9435e200-2890-44f6-9fb9-373bd27e688c"}'::jsonb,
  updated_at = now()
WHERE id = '9435e200-2890-44f6-9fb9-373bd27e688c';

UPDATE public.questions SET
  question_text = 'What is $m\angle C$?',
  stimulus_text = 'In triangle $ABC$, $m\angle A = 64°$ and $m\angle B = 60°$. Line through $C$ forms exterior angle 124° with side $AB$.',
  options = '[{"id":"A","text":"$64°$","is_correct":false,"explanation":"Choice A ($64°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$60°$","is_correct":false,"explanation":"Choice B ($60°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$66°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$56°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 56°$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 64 - 60 = 56°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 64° + 60° + 56° = 180°.

**Distractor analysis:**
- **A** ($64°$): Choice A ($64°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($60°$): Choice B ($60°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($66°$): Too large for the triangle angle sum.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"ba95c195-91f4-4d0a-bece-4edcb72c8c7e"}'::jsonb,
  updated_at = now()
WHERE id = 'ba95c195-91f4-4d0a-bece-4edcb72c8c7e';

UPDATE public.questions SET
  question_text = 'What is $m\angle C$?',
  stimulus_text = 'In triangle $ABC$, $m\angle A = 76°$ and $m\angle B = 52°$. Line through $C$ forms exterior angle 128° with side $AB$.',
  options = '[{"id":"A","text":"$76°$","is_correct":false,"explanation":"Choice A ($76°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$52°$","is_correct":false,"explanation":"Choice B ($52°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$62°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$52°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 52°$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 76 - 52 = 52°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 76° + 52° + 52° = 180°.

**Distractor analysis:**
- **A** ($76°$): Choice A ($76°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($52°$): Choice B ($52°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($62°$): Too large for the triangle angle sum.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"bc857c4d-8a27-4ab0-9c7a-55e543e02933"}'::jsonb,
  updated_at = now()
WHERE id = 'bc857c4d-8a27-4ab0-9c7a-55e543e02933';

UPDATE public.questions SET
  question_text = 'What is $m\angle C$?',
  stimulus_text = 'In triangle $ABC$, $m\angle A = 82°$ and $m\angle B = 48°$. Line through $C$ forms exterior angle 130° with side $AB$.',
  options = '[{"id":"A","text":"$82°$","is_correct":false,"explanation":"Choice A ($82°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$48°$","is_correct":false,"explanation":"Choice B ($48°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$60°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$50°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 50°$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 82 - 48 = 50°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 82° + 48° + 50° = 180°.

**Distractor analysis:**
- **A** ($82°$): Choice A ($82°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($48°$): Choice B ($48°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($60°$): Too large for the triangle angle sum.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"c42aa453-cdfa-4445-ae14-8791e826644d"}'::jsonb,
  updated_at = now()
WHERE id = 'c42aa453-cdfa-4445-ae14-8791e826644d';

UPDATE public.questions SET
  question_text = 'For $x^2 - 15x + 54 = 0$, what is the positive solution? (Discriminant $=9$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$15$","is_correct":false,"explanation":"Choice B ($15$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$9$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-6)(x-9)=0$. **Step 2:** Positive root $9$."},{"id":"D","text":"$17$","is_correct":false,"explanation":"Choice D ($17$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-6)(x-9)=0$.
**Step 2:** Roots $x=6$ and $x=9$.
**Step 3:** Positive solution: $9$.
**Step 4:** Quadratic formula confirms discriminant $9$.

**Distractor analysis:**
- **A** ($5$): Not a root of the quadratic.
- **B** ($15$): Choice B ($15$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($17$): Choice D ($17$…) reflects a common misread or arithmetic slip — re-check each operation.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.056Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"070c1b63-b402-45b7-8fdf-5837d58b81df"}'::jsonb,
  updated_at = now()
WHERE id = '070c1b63-b402-45b7-8fdf-5837d58b81df';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.621Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"7a670401-e36a-42f5-b6b8-ae09a0776129"}'::jsonb,
  updated_at = now()
WHERE id = '7a670401-e36a-42f5-b6b8-ae09a0776129';

UPDATE public.questions SET
  question_text = 'For $x^2 - 16x + 64 = 0$, what is the positive solution? (Discriminant $=0$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$7$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$16$","is_correct":false,"explanation":"Choice B ($16$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$8$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-8)(x-8)=0$. **Step 2:** Positive root $8$."},{"id":"D","text":"$18$","is_correct":false,"explanation":"Choice D ($18$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-8)(x-8)=0$.
**Step 2:** Roots $x=8$ and $x=8$.
**Step 3:** Positive solution: $8$.
**Step 4:** Quadratic formula confirms discriminant $0$.

**Distractor analysis:**
- **A** ($7$): Not a root of the quadratic.
- **B** ($16$): Choice B ($16$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($18$): Choice D ($18$…) reflects a common misread or arithmetic slip — re-check each operation.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.621Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"98ac4658-822d-4fd9-80aa-8e0d1ac8ff28"}'::jsonb,
  updated_at = now()
WHERE id = '98ac4658-822d-4fd9-80aa-8e0d1ac8ff28';

UPDATE public.questions SET
  question_text = 'For $x^2 - 14x + 45 = 0$, what is the positive solution? (Discriminant $=16$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$14$","is_correct":false,"explanation":"Choice B ($14$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$9$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-5)(x-9)=0$. **Step 2:** Positive root $9$."},{"id":"D","text":"$16$","is_correct":false,"explanation":"Choice D ($16$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-5)(x-9)=0$.
**Step 2:** Roots $x=5$ and $x=9$.
**Step 3:** Positive solution: $9$.
**Step 4:** Quadratic formula confirms discriminant $16$.

**Distractor analysis:**
- **A** ($4$): Not a root of the quadratic.
- **B** ($14$): Choice B ($14$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($16$): Choice D ($16$…) reflects a common misread or arithmetic slip — re-check each operation.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.621Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"bc1ee049-0f30-4049-8f44-6d4b810f1417"}'::jsonb,
  updated_at = now()
WHERE id = 'bc1ee049-0f30-4049-8f44-6d4b810f1417';

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

UPDATE public.questions SET
  question_text = 'What is the missing score $x$?',
  stimulus_text = 'Five test scores: 51, 55, 59, 63, and one score $x$ is unknown. The mean is 55.2.',
  options = '[{"id":"A","text":"$45$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$48$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=55.2×5=276$. **Step 2:** $x=48$."},{"id":"C","text":"$51$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$55$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Total sum $=55.2×5=276$.
**Step 2:** Known sum $=228$.
**Step 3:** $x=276-228=48$.
**Step 4:** Verify mean.

**Distractor analysis:**
- **A** ($45$): Pulls the mean down too far.
- **C** ($51$): Too high for the given mean.
- **D** ($55$): Confuses mean with the missing value.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_ai_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","model":"gemma-4-26b-a4b-it","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"d99d3345-2df6-4b74-b585-6373380dcb51"}'::jsonb,
  updated_at = now()
WHERE id = 'd99d3345-2df6-4b74-b585-6373380dcb51';

UPDATE public.questions SET
  question_text = 'What is the missing score $x$?',
  stimulus_text = 'Five test scores: 51, 55, 59, 63, and one score $x$ is unknown. The mean is 55.2.',
  options = '[{"id":"A","text":"$45$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$48$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=55.2×5=276$. **Step 2:** $x=48$."},{"id":"C","text":"$51$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$55$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Total sum $=55.2×5=276$.
**Step 2:** Known sum $=228$.
**Step 3:** $x=276-228=48$.
**Step 4:** Verify mean.

**Distractor analysis:**
- **A** ($45$): Pulls the mean down too far.
- **C** ($51$): Too high for the given mean.
- **D** ($55$): Confuses mean with the missing value.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_ai_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","model":"gemma-4-26b-a4b-it","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"fbdd8058-bab5-42c0-94f3-1e6c841ac459"}'::jsonb,
  updated_at = now()
WHERE id = 'fbdd8058-bab5-42c0-94f3-1e6c841ac459';

UPDATE public.questions SET
  question_text = 'If the original price is $705$, what is the final price after both changes?',
  stimulus_text = 'A price is marked up 40%, then discounted 15% on the new price.',
  options = '[{"id":"A","text":"$839$","is_correct":true,"explanation":"Correct (A). **Step 1:** $705×1.4=987$. **Step 2:** $987×0.85=839$."},{"id":"B","text":"$705$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$987$","is_correct":false,"explanation":"Choice C ($987$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$881$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $705×(1+40/100)=987$.
**Step 2:** Discount on new price: $987×(1-15/100)=839$.
**Step 3:** Do not net the percents — order matters.

**Distractor analysis:**
- **B** ($705$): Ignores both percent changes.
- **C** ($987$): Choice C ($987$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($881$): Subtracting percentages directly is invalid for sequential changes.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"1defe636-e0a9-4adf-b264-be2273c313df"}'::jsonb,
  updated_at = now()
WHERE id = '1defe636-e0a9-4adf-b264-be2273c313df';

UPDATE public.questions SET
  question_text = 'If the original price is $900$, what is the final price after both changes?',
  stimulus_text = 'A price is marked up 25%, then discounted 20% on the new price.',
  options = '[{"id":"A","text":"$900$","is_correct":true,"explanation":"Correct (A). **Step 1:** $900×1.25=1125$. **Step 2:** $1125×0.8=900$."},{"id":"B","text":"$900$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1125$","is_correct":false,"explanation":"Choice C ($1125$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$945$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $900×(1+25/100)=1125$.
**Step 2:** Discount on new price: $1125×(1-20/100)=900$.
**Step 3:** Do not net the percents — order matters.

**Distractor analysis:**
- **B** ($900$): Ignores both percent changes.
- **C** ($1125$): Choice C ($1125$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($945$): Subtracting percentages directly is invalid for sequential changes.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"2dd05475-9215-4b7c-9fe7-9957cdf0edb3"}'::jsonb,
  updated_at = now()
WHERE id = '2dd05475-9215-4b7c-9fe7-9957cdf0edb3';

UPDATE public.questions SET
  question_text = 'If the original price is $885$, what is the final price after both changes?',
  stimulus_text = 'A price is marked up 40%, then discounted 15% on the new price.',
  options = '[{"id":"A","text":"$1053$","is_correct":true,"explanation":"Correct (A). **Step 1:** $885×1.4=1239$. **Step 2:** $1239×0.85=1053$."},{"id":"B","text":"$885$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1239$","is_correct":false,"explanation":"Choice C ($1239$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$1106$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $885×(1+40/100)=1239$.
**Step 2:** Discount on new price: $1239×(1-15/100)=1053$.
**Step 3:** Do not net the percents — order matters.

**Distractor analysis:**
- **B** ($885$): Ignores both percent changes.
- **C** ($1239$): Choice C ($1239$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($1106$): Subtracting percentages directly is invalid for sequential changes.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"3273b42c-7435-4372-9433-e94aaf5a05eb"}'::jsonb,
  updated_at = now()
WHERE id = '3273b42c-7435-4372-9433-e94aaf5a05eb';

UPDATE public.questions SET
  question_text = 'If the original price is $210$, what is the final price after both changes?',
  stimulus_text = 'A price is marked up 35%, then discounted 15% on the new price.',
  options = '[{"id":"A","text":"$241$","is_correct":true,"explanation":"Correct (A). **Step 1:** $210×1.35=284$. **Step 2:** $284×0.85=241$."},{"id":"B","text":"$210$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$284$","is_correct":false,"explanation":"Choice C ($284$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$252$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $210×(1+35/100)=284$.
**Step 2:** Discount on new price: $284×(1-15/100)=241$.
**Step 3:** Do not net the percents — order matters.

**Distractor analysis:**
- **B** ($210$): Ignores both percent changes.
- **C** ($284$): Choice C ($284$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($252$): Subtracting percentages directly is invalid for sequential changes.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"6136877f-d80e-4ab0-a265-8b8d57d588a2"}'::jsonb,
  updated_at = now()
WHERE id = '6136877f-d80e-4ab0-a265-8b8d57d588a2';

UPDATE public.questions SET
  question_text = 'If the original price is $360$, what is the final price after both changes?',
  stimulus_text = 'A price is marked up 25%, then discounted 20% on the new price.',
  options = '[{"id":"A","text":"$360$","is_correct":true,"explanation":"Correct (A). **Step 1:** $360×1.25=450$. **Step 2:** $450×0.8=360$."},{"id":"B","text":"$360$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$450$","is_correct":false,"explanation":"Choice C ($450$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$378$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $360×(1+25/100)=450$.
**Step 2:** Discount on new price: $450×(1-20/100)=360$.
**Step 3:** Do not net the percents — order matters.

**Distractor analysis:**
- **B** ($360$): Ignores both percent changes.
- **C** ($450$): Choice C ($450$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($378$): Subtracting percentages directly is invalid for sequential changes.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"6bdb9969-52f1-4d7c-b851-a8224ea6cf19"}'::jsonb,
  updated_at = now()
WHERE id = '6bdb9969-52f1-4d7c-b851-a8224ea6cf19';

UPDATE public.questions SET
  question_text = 'If the original price is $765$, what is the final price after both changes?',
  stimulus_text = 'A price is marked up 40%, then discounted 20% on the new price.',
  options = '[{"id":"A","text":"$857$","is_correct":true,"explanation":"Correct (A). **Step 1:** $765×1.4=1071$. **Step 2:** $1071×0.8=857$."},{"id":"B","text":"$765$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1071$","is_correct":false,"explanation":"Choice C ($1071$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$918$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $765×(1+40/100)=1071$.
**Step 2:** Discount on new price: $1071×(1-20/100)=857$.
**Step 3:** Do not net the percents — order matters.

**Distractor analysis:**
- **B** ($765$): Ignores both percent changes.
- **C** ($1071$): Choice C ($1071$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($918$): Subtracting percentages directly is invalid for sequential changes.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"76a60ccb-6d04-4151-aa51-231acc53eaae"}'::jsonb,
  updated_at = now()
WHERE id = '76a60ccb-6d04-4151-aa51-231acc53eaae';

UPDATE public.questions SET
  question_text = 'If the original price is $780$, what is the final price after both changes?',
  stimulus_text = 'A price is marked up 25%, then discounted 25% on the new price.',
  options = '[{"id":"A","text":"$731$","is_correct":true,"explanation":"Correct (A). **Step 1:** $780×1.25=975$. **Step 2:** $975×0.75=731$."},{"id":"B","text":"$780$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$975$","is_correct":false,"explanation":"Choice C ($975$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$780$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $780×(1+25/100)=975$.
**Step 2:** Discount on new price: $975×(1-25/100)=731$.
**Step 3:** Do not net the percents — order matters.

**Distractor analysis:**
- **B** ($780$): Ignores both percent changes.
- **C** ($975$): Choice C ($975$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($780$): Subtracting percentages directly is invalid for sequential changes.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"a21b6230-1ff3-4201-8807-a428ac5b91ac"}'::jsonb,
  updated_at = now()
WHERE id = 'a21b6230-1ff3-4201-8807-a428ac5b91ac';

UPDATE public.questions SET
  question_text = 'If the original price is $510$, what is the final price after both changes?',
  stimulus_text = 'A price is marked up 35%, then discounted 25% on the new price.',
  options = '[{"id":"A","text":"$517$","is_correct":true,"explanation":"Correct (A). **Step 1:** $510×1.35=689$. **Step 2:** $689×0.75=517$."},{"id":"B","text":"$510$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$689$","is_correct":false,"explanation":"Choice C ($689$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$561$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $510×(1+35/100)=689$.
**Step 2:** Discount on new price: $689×(1-25/100)=517$.
**Step 3:** Do not net the percents — order matters.

**Distractor analysis:**
- **B** ($510$): Ignores both percent changes.
- **C** ($689$): Choice C ($689$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($561$): Subtracting percentages directly is invalid for sequential changes.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"ce4dea7f-b99f-4d5f-a748-4521d091eb75"}'::jsonb,
  updated_at = now()
WHERE id = 'ce4dea7f-b99f-4d5f-a748-4521d091eb75';

UPDATE public.questions SET
  question_text = 'If the original price is $960$, what is the final price after both changes?',
  stimulus_text = 'A price is marked up 25%, then discounted 25% on the new price.',
  options = '[{"id":"A","text":"$900$","is_correct":true,"explanation":"Correct (A). **Step 1:** $960×1.25=1200$. **Step 2:** $1200×0.75=900$."},{"id":"B","text":"$960$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1200$","is_correct":false,"explanation":"Choice C ($1200$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$960$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $960×(1+25/100)=1200$.
**Step 2:** Discount on new price: $1200×(1-25/100)=900$.
**Step 3:** Do not net the percents — order matters.

**Distractor analysis:**
- **B** ($960$): Ignores both percent changes.
- **C** ($1200$): Choice C ($1200$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($960$): Subtracting percentages directly is invalid for sequential changes.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"db776fc0-c574-4b96-80dc-85b2629ec1bb"}'::jsonb,
  updated_at = now()
WHERE id = 'db776fc0-c574-4b96-80dc-85b2629ec1bb';

UPDATE public.questions SET
  question_text = 'If the original price is $810$, what is the final price after both changes?',
  stimulus_text = 'A price is marked up 35%, then discounted 20% on the new price.',
  options = '[{"id":"A","text":"$875$","is_correct":true,"explanation":"Correct (A). **Step 1:** $810×1.35=1094$. **Step 2:** $1094×0.8=875$."},{"id":"B","text":"$810$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1094$","is_correct":false,"explanation":"Choice C ($1094$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$931$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $810×(1+35/100)=1094$.
**Step 2:** Discount on new price: $1094×(1-20/100)=875$.
**Step 3:** Do not net the percents — order matters.

**Distractor analysis:**
- **B** ($810$): Ignores both percent changes.
- **C** ($1094$): Choice C ($1094$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($931$): Subtracting percentages directly is invalid for sequential changes.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"ea50249b-c7d9-4cd1-912a-3578f9e7cddf"}'::jsonb,
  updated_at = now()
WHERE id = 'ea50249b-c7d9-4cd1-912a-3578f9e7cddf';

UPDATE public.questions SET
  question_text = 'If the original price is $900$, what is the final price after both changes?',
  stimulus_text = 'A price is marked up 25%, then discounted 20% on the new price.',
  options = '[{"id":"A","text":"$900$","is_correct":true,"explanation":"Correct (A). **Step 1:** $900×1.25=1125$. **Step 2:** $1125×0.8=900$."},{"id":"B","text":"$900$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1125$","is_correct":false,"explanation":"Choice C ($1125$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$945$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $900×(1+25/100)=1125$.
**Step 2:** Discount on new price: $1125×(1-20/100)=900$.
**Step 3:** Do not net the percents — order matters.

**Distractor analysis:**
- **B** ($900$): Ignores both percent changes.
- **C** ($1125$): Choice C ($1125$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($945$): Subtracting percentages directly is invalid for sequential changes.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"f8b84b43-9a63-4e5a-9def-eaf575f4b1c1"}'::jsonb,
  updated_at = now()
WHERE id = 'f8b84b43-9a63-4e5a-9def-eaf575f4b1c1';

UPDATE public.questions SET
  question_text = 'Given the first chip is red, what is the probability the second is also red?',
  stimulus_text = 'A bag has 5 red and 24 blue chips. Two chips drawn without replacement; first is red.',
  options = '[{"id":"A","text":"$\\frac{5}{29}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{5}{28}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{5}{29}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{4}{28}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 4 red remain of 28. **Step 2:** P $=\\frac{4}{28}$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** First chip red → 4 red left, 28 total.
**Step 2:** Conditional probability $=\frac{4}{28}$.
**Step 3:** Do not use $\frac{5}{29}$ — that ignores the first draw.

**Distractor analysis:**
- **A** ($\frac{5}{29}$): Ignores that one red chip was removed.
- **B** ($\frac{5}{28}$): Uses original count in numerator.
- **C** ($\frac{5}{29}$): Wrong numerator after first draw.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"20cd06a1-700d-4721-b6fd-04cff04664b5"}'::jsonb,
  updated_at = now()
WHERE id = '20cd06a1-700d-4721-b6fd-04cff04664b5';

UPDATE public.questions SET
  question_text = 'Given the first chip is red, what is the probability the second is also red?',
  stimulus_text = 'A bag has 6 red and 9 blue chips. Two chips drawn without replacement; first is red.',
  options = '[{"id":"A","text":"$\\frac{6}{15}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{14}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{15}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{14}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 5 red remain of 14. **Step 2:** P $=\\frac{5}{14}$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** First chip red → 5 red left, 14 total.
**Step 2:** Conditional probability $=\frac{5}{14}$.
**Step 3:** Do not use $\frac{6}{15}$ — that ignores the first draw.

**Distractor analysis:**
- **A** ($\frac{6}{15}$): Ignores that one red chip was removed.
- **B** ($\frac{6}{14}$): Uses original count in numerator.
- **C** ($\frac{6}{15}$): Wrong numerator after first draw.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"30f53983-2819-49c6-a519-8cdb23103abc"}'::jsonb,
  updated_at = now()
WHERE id = '30f53983-2819-49c6-a519-8cdb23103abc';

UPDATE public.questions SET
  question_text = 'Given the first chip is red, what is the probability the second is also red?',
  stimulus_text = 'A bag has 6 red and 57 blue chips. Two chips drawn without replacement; first is red.',
  options = '[{"id":"A","text":"$\\frac{6}{63}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{62}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{63}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{62}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 5 red remain of 62. **Step 2:** P $=\\frac{5}{62}$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** First chip red → 5 red left, 62 total.
**Step 2:** Conditional probability $=\frac{5}{62}$.
**Step 3:** Do not use $\frac{6}{63}$ — that ignores the first draw.

**Distractor analysis:**
- **A** ($\frac{6}{63}$): Ignores that one red chip was removed.
- **B** ($\frac{6}{62}$): Uses original count in numerator.
- **C** ($\frac{6}{63}$): Wrong numerator after first draw.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"9344db67-a46c-4aab-80c0-bacb120920dc"}'::jsonb,
  updated_at = now()
WHERE id = '9344db67-a46c-4aab-80c0-bacb120920dc';

UPDATE public.questions SET
  question_text = 'Given the first chip is red, what is the probability the second is also red?',
  stimulus_text = 'A bag has 7 red and 66 blue chips. Two chips drawn without replacement; first is red.',
  options = '[{"id":"A","text":"$\\frac{7}{73}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{7}{72}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{7}{73}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{6}{72}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 6 red remain of 72. **Step 2:** P $=\\frac{6}{72}$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** First chip red → 6 red left, 72 total.
**Step 2:** Conditional probability $=\frac{6}{72}$.
**Step 3:** Do not use $\frac{7}{73}$ — that ignores the first draw.

**Distractor analysis:**
- **A** ($\frac{7}{73}$): Ignores that one red chip was removed.
- **B** ($\frac{7}{72}$): Uses original count in numerator.
- **C** ($\frac{7}{73}$): Wrong numerator after first draw.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"bb7ed5cc-69d2-4a29-9eb5-f1f7010026fe"}'::jsonb,
  updated_at = now()
WHERE id = 'bb7ed5cc-69d2-4a29-9eb5-f1f7010026fe';

UPDATE public.questions SET
  question_text = 'Given the first chip is red, what is the probability the second is also red?',
  stimulus_text = 'A bag has 8 red and 39 blue chips. Two chips drawn without replacement; first is red.',
  options = '[{"id":"A","text":"$\\frac{8}{47}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{8}{46}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{8}{47}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{7}{46}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 7 red remain of 46. **Step 2:** P $=\\frac{7}{46}$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** First chip red → 7 red left, 46 total.
**Step 2:** Conditional probability $=\frac{7}{46}$.
**Step 3:** Do not use $\frac{8}{47}$ — that ignores the first draw.

**Distractor analysis:**
- **A** ($\frac{8}{47}$): Ignores that one red chip was removed.
- **B** ($\frac{8}{46}$): Uses original count in numerator.
- **C** ($\frac{8}{47}$): Wrong numerator after first draw.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"bc85fe8d-3f2a-4c2f-8227-9ca3d6719296"}'::jsonb,
  updated_at = now()
WHERE id = 'bc85fe8d-3f2a-4c2f-8227-9ca3d6719296';

UPDATE public.questions SET
  question_text = 'Given the first chip is red, what is the probability the second is also red?',
  stimulus_text = 'A bag has 5 red and 40 blue chips. Two chips drawn without replacement; first is red.',
  options = '[{"id":"A","text":"$\\frac{5}{45}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{5}{44}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{5}{45}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{4}{44}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 4 red remain of 44. **Step 2:** P $=\\frac{4}{44}$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** First chip red → 4 red left, 44 total.
**Step 2:** Conditional probability $=\frac{4}{44}$.
**Step 3:** Do not use $\frac{5}{45}$ — that ignores the first draw.

**Distractor analysis:**
- **A** ($\frac{5}{45}$): Ignores that one red chip was removed.
- **B** ($\frac{5}{44}$): Uses original count in numerator.
- **C** ($\frac{5}{45}$): Wrong numerator after first draw.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"c5e81b64-2311-405b-b449-f1c3a4d68d97"}'::jsonb,
  updated_at = now()
WHERE id = 'c5e81b64-2311-405b-b449-f1c3a4d68d97';

UPDATE public.questions SET
  question_text = 'Given the first chip is red, what is the probability the second is also red?',
  stimulus_text = 'A bag has 7 red and 58 blue chips. Two chips drawn without replacement; first is red.',
  options = '[{"id":"A","text":"$\\frac{7}{65}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{7}{64}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{7}{65}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{6}{64}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 6 red remain of 64. **Step 2:** P $=\\frac{6}{64}$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** First chip red → 6 red left, 64 total.
**Step 2:** Conditional probability $=\frac{6}{64}$.
**Step 3:** Do not use $\frac{7}{65}$ — that ignores the first draw.

**Distractor analysis:**
- **A** ($\frac{7}{65}$): Ignores that one red chip was removed.
- **B** ($\frac{7}{64}$): Uses original count in numerator.
- **C** ($\frac{7}{65}$): Wrong numerator after first draw.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"c8b12cf1-b32e-4a0b-a99b-de94615e60dd"}'::jsonb,
  updated_at = now()
WHERE id = 'c8b12cf1-b32e-4a0b-a99b-de94615e60dd';

UPDATE public.questions SET
  question_text = 'Given the first chip is red, what is the probability the second is also red?',
  stimulus_text = 'A bag has 8 red and 67 blue chips. Two chips drawn without replacement; first is red.',
  options = '[{"id":"A","text":"$\\frac{8}{75}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{8}{74}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{8}{75}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{7}{74}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 7 red remain of 74. **Step 2:** P $=\\frac{7}{74}$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** First chip red → 7 red left, 74 total.
**Step 2:** Conditional probability $=\frac{7}{74}$.
**Step 3:** Do not use $\frac{8}{75}$ — that ignores the first draw.

**Distractor analysis:**
- **A** ($\frac{8}{75}$): Ignores that one red chip was removed.
- **B** ($\frac{8}{74}$): Uses original count in numerator.
- **C** ($\frac{8}{75}$): Wrong numerator after first draw.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"cb310b27-d7a4-48f2-8569-3d0a642236fb"}'::jsonb,
  updated_at = now()
WHERE id = 'cb310b27-d7a4-48f2-8569-3d0a642236fb';

UPDATE public.questions SET
  question_text = 'Given the first chip is red, what is the probability the second is also red?',
  stimulus_text = 'A bag has 5 red and 12 blue chips. Two chips drawn without replacement; first is red.',
  options = '[{"id":"A","text":"$\\frac{5}{17}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{5}{16}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{5}{17}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{4}{16}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 4 red remain of 16. **Step 2:** P $=\\frac{4}{16}$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** First chip red → 4 red left, 16 total.
**Step 2:** Conditional probability $=\frac{4}{16}$.
**Step 3:** Do not use $\frac{5}{17}$ — that ignores the first draw.

**Distractor analysis:**
- **A** ($\frac{5}{17}$): Ignores that one red chip was removed.
- **B** ($\frac{5}{16}$): Uses original count in numerator.
- **C** ($\frac{5}{17}$): Wrong numerator after first draw.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"da32a04a-3154-4447-af8a-55fbbf71569b"}'::jsonb,
  updated_at = now()
WHERE id = 'da32a04a-3154-4447-af8a-55fbbf71569b';

UPDATE public.questions SET
  question_text = 'Given the first chip is red, what is the probability the second is also red?',
  stimulus_text = 'A bag has 6 red and 9 blue chips. Two chips drawn without replacement; first is red.',
  options = '[{"id":"A","text":"$\\frac{6}{15}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{14}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{15}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{14}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 5 red remain of 14. **Step 2:** P $=\\frac{5}{14}$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** First chip red → 5 red left, 14 total.
**Step 2:** Conditional probability $=\frac{5}{14}$.
**Step 3:** Do not use $\frac{6}{15}$ — that ignores the first draw.

**Distractor analysis:**
- **A** ($\frac{6}{15}$): Ignores that one red chip was removed.
- **B** ($\frac{6}{14}$): Uses original count in numerator.
- **C** ($\frac{6}{15}$): Wrong numerator after first draw.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"de8f7745-2957-4f29-9a91-ed39dad51a10"}'::jsonb,
  updated_at = now()
WHERE id = 'de8f7745-2957-4f29-9a91-ed39dad51a10';

UPDATE public.questions SET
  question_text = 'How many tasks did the first worker complete?',
  stimulus_text = 'Two workers split tasks in ratio $4:11$ over 48 hours at 5 tasks/hour combined.',
  options = '[{"id":"A","text":"$955$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$958$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$960$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=5×48×(4+11)=3600$. **Step 2:** A''s share $\\frac{4}{15}×3600=960$."},{"id":"D","text":"$3600$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Combined output $=5×48×(4+11)=3600$ tasks.
**Step 2:** A''s fraction $\frac{4}{15}$.
**Step 3:** $\frac{4}{15}×3600=960$ tasks.

**Distractor analysis:**
- **A** ($955$): Underestimates A''s share of the total.
- **B** ($958$): Close but ratio arithmetic is off.
- **D** ($3600$): That is the combined total, not worker A''s count.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"17adc1f6-afdf-4248-8bc7-772969dec7d3"}'::jsonb,
  updated_at = now()
WHERE id = '17adc1f6-afdf-4248-8bc7-772969dec7d3';

UPDATE public.questions SET
  question_text = 'How many tasks did the first worker complete?',
  stimulus_text = 'Two workers split tasks in ratio $5:9$ over 21 hours at 5 tasks/hour combined.',
  options = '[{"id":"A","text":"$520$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$523$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$525$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=5×21×(5+9)=1470$. **Step 2:** A''s share $\\frac{5}{14}×1470=525$."},{"id":"D","text":"$1470$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Combined output $=5×21×(5+9)=1470$ tasks.
**Step 2:** A''s fraction $\frac{5}{14}$.
**Step 3:** $\frac{5}{14}×1470=525$ tasks.

**Distractor analysis:**
- **A** ($520$): Underestimates A''s share of the total.
- **B** ($523$): Close but ratio arithmetic is off.
- **D** ($1470$): That is the combined total, not worker A''s count.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"799103fa-ac05-4307-ac28-187d3b94b596"}'::jsonb,
  updated_at = now()
WHERE id = '799103fa-ac05-4307-ac28-187d3b94b596';

UPDATE public.questions SET
  question_text = 'How many tasks did the first worker complete?',
  stimulus_text = 'Two workers split tasks in ratio $7:8$ over 55 hours at 3 tasks/hour combined.',
  options = '[{"id":"A","text":"$1150$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$1153$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$1155$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=3×55×(7+8)=2475$. **Step 2:** A''s share $\\frac{7}{15}×2475=1155$."},{"id":"D","text":"$2475$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Combined output $=3×55×(7+8)=2475$ tasks.
**Step 2:** A''s fraction $\frac{7}{15}$.
**Step 3:** $\frac{7}{15}×2475=1155$ tasks.

**Distractor analysis:**
- **A** ($1150$): Underestimates A''s share of the total.
- **B** ($1153$): Close but ratio arithmetic is off.
- **D** ($2475$): That is the combined total, not worker A''s count.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"8d54f8a3-72d4-44c1-92e0-ebaf85accbe7"}'::jsonb,
  updated_at = now()
WHERE id = '8d54f8a3-72d4-44c1-92e0-ebaf85accbe7';

UPDATE public.questions SET
  question_text = 'How many tasks did the first worker complete?',
  stimulus_text = 'Two workers split tasks in ratio $5:9$ over 41 hours at 4 tasks/hour combined.',
  options = '[{"id":"A","text":"$815$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$818$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$820$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=4×41×(5+9)=2296$. **Step 2:** A''s share $\\frac{5}{14}×2296=820$."},{"id":"D","text":"$2296$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Combined output $=4×41×(5+9)=2296$ tasks.
**Step 2:** A''s fraction $\frac{5}{14}$.
**Step 3:** $\frac{5}{14}×2296=820$ tasks.

**Distractor analysis:**
- **A** ($815$): Underestimates A''s share of the total.
- **B** ($818$): Close but ratio arithmetic is off.
- **D** ($2296$): That is the combined total, not worker A''s count.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"d6dfaf4f-5445-49d4-8450-2fada97e0372"}'::jsonb,
  updated_at = now()
WHERE id = 'd6dfaf4f-5445-49d4-8450-2fada97e0372';

UPDATE public.questions SET
  question_text = 'How many tasks did the first worker complete?',
  stimulus_text = 'Two workers split tasks in ratio $4:11$ over 48 hours at 5 tasks/hour combined.',
  options = '[{"id":"A","text":"$955$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$958$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$960$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=5×48×(4+11)=3600$. **Step 2:** A''s share $\\frac{4}{15}×3600=960$."},{"id":"D","text":"$3600$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Combined output $=5×48×(4+11)=3600$ tasks.
**Step 2:** A''s fraction $\frac{4}{15}$.
**Step 3:** $\frac{4}{15}×3600=960$ tasks.

**Distractor analysis:**
- **A** ($955$): Underestimates A''s share of the total.
- **B** ($958$): Close but ratio arithmetic is off.
- **D** ($3600$): That is the combined total, not worker A''s count.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"e662258e-5cf6-4387-8d92-fb2307f1542a"}'::jsonb,
  updated_at = now()
WHERE id = 'e662258e-5cf6-4387-8d92-fb2307f1542a';

UPDATE public.questions SET
  question_text = 'How many tasks did the first worker complete?',
  stimulus_text = 'Two workers split tasks in ratio $4:7$ over 4 hours at 3 tasks/hour combined.',
  options = '[{"id":"A","text":"$43$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$46$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$48$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=3×4×(4+7)=132$. **Step 2:** A''s share $\\frac{4}{11}×132=48$."},{"id":"D","text":"$132$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Combined output $=3×4×(4+7)=132$ tasks.
**Step 2:** A''s fraction $\frac{4}{11}$.
**Step 3:** $\frac{4}{11}×132=48$ tasks.

**Distractor analysis:**
- **A** ($43$): Underestimates A''s share of the total.
- **B** ($46$): Close but ratio arithmetic is off.
- **D** ($132$): That is the combined total, not worker A''s count.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"e8554860-0579-452b-9da3-21d940d089f9"}'::jsonb,
  updated_at = now()
WHERE id = 'e8554860-0579-452b-9da3-21d940d089f9';

UPDATE public.questions SET
  question_text = 'How many tasks did the first worker complete?',
  stimulus_text = 'Two workers split tasks in ratio $7:10$ over 47 hours at 4 tasks/hour combined.',
  options = '[{"id":"A","text":"$1311$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$1314$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$1316$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=4×47×(7+10)=3196$. **Step 2:** A''s share $\\frac{7}{17}×3196=1316$."},{"id":"D","text":"$3196$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Combined output $=4×47×(7+10)=3196$ tasks.
**Step 2:** A''s fraction $\frac{7}{17}$.
**Step 3:** $\frac{7}{17}×3196=1316$ tasks.

**Distractor analysis:**
- **A** ($1311$): Underestimates A''s share of the total.
- **B** ($1314$): Close but ratio arithmetic is off.
- **D** ($3196$): That is the combined total, not worker A''s count.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"fd5fcbb2-c541-493e-b0cd-5b23bb00786f"}'::jsonb,
  updated_at = now()
WHERE id = 'fd5fcbb2-c541-493e-b0cd-5b23bb00786f';

UPDATE public.questions SET
  question_text = 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?',
  stimulus_text = 'A ladder''s foot is 6 ft from a wall; the top is 13 ft high. The ladder length is 14 ft.',
  options = '[{"id":"A","text":"$\\frac{6}{14}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{13}{14}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=13$, hypotenuse $=14$. **Step 2:** $\\sin\\theta=\\frac{13}{14}≈0.929$."},{"id":"C","text":"$\\frac{14}{13}$","is_correct":false,"explanation":"Choice C ($\\frac{14}{13}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{6}{13}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Right triangle: opposite $=13$, hypotenuse $=14$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{13}{14}$.
**Step 3:** Pythagorean check: $6^2+13^2=14^2$.
**Step 4:** $\cos\theta=\frac{6}{14}$, not the answer.

**Distractor analysis:**
- **A** ($\frac{6}{14}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{14}{13}$): Choice C ($\frac{14}{13}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{6}{13}$): Uses a leg ratio, not sine.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"49af7d1d-50f0-4606-bdcf-a43721e36064"}'::jsonb,
  updated_at = now()
WHERE id = '49af7d1d-50f0-4606-bdcf-a43721e36064';

UPDATE public.questions SET
  question_text = 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?',
  stimulus_text = 'A ladder''s foot is 17 ft from a wall; the top is 24 ft high. The ladder length is 29 ft.',
  options = '[{"id":"A","text":"$\\frac{17}{29}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{24}{29}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=24$, hypotenuse $=29$. **Step 2:** $\\sin\\theta=\\frac{24}{29}≈0.828$."},{"id":"C","text":"$\\frac{29}{24}$","is_correct":false,"explanation":"Choice C ($\\frac{29}{24}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{17}{24}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Right triangle: opposite $=24$, hypotenuse $=29$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{24}{29}$.
**Step 3:** Pythagorean check: $17^2+24^2=29^2$.
**Step 4:** $\cos\theta=\frac{17}{29}$, not the answer.

**Distractor analysis:**
- **A** ($\frac{17}{29}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{29}{24}$): Choice C ($\frac{29}{24}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{17}{24}$): Uses a leg ratio, not sine.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"6efcb2d4-4dcf-4092-adb2-089040bf0eb4"}'::jsonb,
  updated_at = now()
WHERE id = '6efcb2d4-4dcf-4092-adb2-089040bf0eb4';

UPDATE public.questions SET
  question_text = 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?',
  stimulus_text = 'A ladder''s foot is 39 ft from a wall; the top is 46 ft high. The ladder length is 60 ft.',
  options = '[{"id":"A","text":"$\\frac{39}{60}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{46}{60}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=46$, hypotenuse $=60$. **Step 2:** $\\sin\\theta=\\frac{46}{60}≈0.767$."},{"id":"C","text":"$\\frac{60}{46}$","is_correct":false,"explanation":"Choice C ($\\frac{60}{46}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{39}{46}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Right triangle: opposite $=46$, hypotenuse $=60$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{46}{60}$.
**Step 3:** Pythagorean check: $39^2+46^2=60^2$.
**Step 4:** $\cos\theta=\frac{39}{60}$, not the answer.

**Distractor analysis:**
- **A** ($\frac{39}{60}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{60}{46}$): Choice C ($\frac{60}{46}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{39}{46}$): Uses a leg ratio, not sine.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"7f2e119c-4e0c-4dcc-9ad5-777c715898ba"}'::jsonb,
  updated_at = now()
WHERE id = '7f2e119c-4e0c-4dcc-9ad5-777c715898ba';

UPDATE public.questions SET
  question_text = 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?',
  stimulus_text = 'A ladder''s foot is 12 ft from a wall; the top is 19 ft high. The ladder length is 22 ft.',
  options = '[{"id":"A","text":"$\\frac{12}{22}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{19}{22}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=19$, hypotenuse $=22$. **Step 2:** $\\sin\\theta=\\frac{19}{22}≈0.864$."},{"id":"C","text":"$\\frac{22}{19}$","is_correct":false,"explanation":"Choice C ($\\frac{22}{19}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{12}{19}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Right triangle: opposite $=19$, hypotenuse $=22$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{19}{22}$.
**Step 3:** Pythagorean check: $12^2+19^2=22^2$.
**Step 4:** $\cos\theta=\frac{12}{22}$, not the answer.

**Distractor analysis:**
- **A** ($\frac{12}{22}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{22}{19}$): Choice C ($\frac{22}{19}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{12}{19}$): Uses a leg ratio, not sine.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"919c4e79-a6a7-4e64-9d3f-63bf96540bb2"}'::jsonb,
  updated_at = now()
WHERE id = '919c4e79-a6a7-4e64-9d3f-63bf96540bb2';

UPDATE public.questions SET
  question_text = 'Given $x+y=26$ and $4x-y=22$, what is $x$?',
  stimulus_text = 'At an event, 26 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=22$.',
  options = '[{"id":"A","text":"$16$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=80$. **Step 2:** $x=16$."},{"id":"B","text":"$15$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$10$","is_correct":false,"explanation":"Choice C ($10$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$17$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(4x-y)=26+22$ → $5x=80$.
**Step 2:** $x=16$.
**Step 3:** Back-substitute: $y=10$.
**Step 4:** Verify both equations.

**Distractor analysis:**
- **B** ($15$): One less than the solution.
- **C** ($10$): Choice C ($10$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($17$): One more than the solution.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"1769e153-7e33-48ff-90fd-6aebd076801f"}'::jsonb,
  updated_at = now()
WHERE id = '1769e153-7e33-48ff-90fd-6aebd076801f';

UPDATE public.questions SET
  question_text = 'Given $x+y=46$ and $4x-y=32$, what is $x$?',
  stimulus_text = 'At an event, 46 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=32$.',
  options = '[{"id":"A","text":"$26$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=130$. **Step 2:** $x=26$."},{"id":"B","text":"$25$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$20$","is_correct":false,"explanation":"Choice C ($20$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$27$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(4x-y)=46+32$ → $5x=130$.
**Step 2:** $x=26$.
**Step 3:** Back-substitute: $y=20$.
**Step 4:** Verify both equations.

**Distractor analysis:**
- **B** ($25$): One less than the solution.
- **C** ($20$): Choice C ($20$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($27$): One more than the solution.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"19844a77-30be-4e0c-9f38-f7652f637c4b"}'::jsonb,
  updated_at = now()
WHERE id = '19844a77-30be-4e0c-9f38-f7652f637c4b';

UPDATE public.questions SET
  question_text = 'Given $x+y=72$ and $3x-y=45$, what is $x$?',
  stimulus_text = 'At an event, 72 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=45$.',
  options = '[{"id":"A","text":"$39$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=156$. **Step 2:** $x=39$."},{"id":"B","text":"$38$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$33$","is_correct":false,"explanation":"Choice C ($33$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$40$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(3x-y)=72+45$ → $4x=156$.
**Step 2:** $x=39$.
**Step 3:** Back-substitute: $y=33$.
**Step 4:** Verify both equations.

**Distractor analysis:**
- **B** ($38$): One less than the solution.
- **C** ($33$): Choice C ($33$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($40$): One more than the solution.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"3af893b1-6ca4-4e09-8d2e-f3186d0a3acc"}'::jsonb,
  updated_at = now()
WHERE id = '3af893b1-6ca4-4e09-8d2e-f3186d0a3acc';

UPDATE public.questions SET
  question_text = 'Given $x+y=26$ and $4x-y=22$, what is $x$?',
  stimulus_text = 'At an event, 26 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=22$.',
  options = '[{"id":"A","text":"$16$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=80$. **Step 2:** $x=16$."},{"id":"B","text":"$15$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$10$","is_correct":false,"explanation":"Choice C ($10$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$17$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(4x-y)=26+22$ → $5x=80$.
**Step 2:** $x=16$.
**Step 3:** Back-substitute: $y=10$.
**Step 4:** Verify both equations.

**Distractor analysis:**
- **B** ($15$): One less than the solution.
- **C** ($10$): Choice C ($10$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($17$): One more than the solution.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"3fce8be2-a073-4881-ab74-4817e4c4374b"}'::jsonb,
  updated_at = now()
WHERE id = '3fce8be2-a073-4881-ab74-4817e4c4374b';

UPDATE public.questions SET
  question_text = 'Given $x+y=64$ and $3x-y=41$, what is $x$?',
  stimulus_text = 'At an event, 64 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=41$.',
  options = '[{"id":"A","text":"$35$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=140$. **Step 2:** $x=35$."},{"id":"B","text":"$34$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$29$","is_correct":false,"explanation":"Choice C ($29$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$36$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(3x-y)=64+41$ → $4x=140$.
**Step 2:** $x=35$.
**Step 3:** Back-substitute: $y=29$.
**Step 4:** Verify both equations.

**Distractor analysis:**
- **B** ($34$): One less than the solution.
- **C** ($29$): Choice C ($29$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($36$): One more than the solution.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"656d4afd-aacb-4b44-9ae6-85302298ff12"}'::jsonb,
  updated_at = now()
WHERE id = '656d4afd-aacb-4b44-9ae6-85302298ff12';

UPDATE public.questions SET
  question_text = 'Given $x+y=40$ and $3x-y=29$, what is $x$?',
  stimulus_text = 'At an event, 40 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=29$.',
  options = '[{"id":"A","text":"$23$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=92$. **Step 2:** $x=23$."},{"id":"B","text":"$22$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$17$","is_correct":false,"explanation":"Choice C ($17$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$24$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(3x-y)=40+29$ → $4x=92$.
**Step 2:** $x=23$.
**Step 3:** Back-substitute: $y=17$.
**Step 4:** Verify both equations.

**Distractor analysis:**
- **B** ($22$): One less than the solution.
- **C** ($17$): Choice C ($17$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($24$): One more than the solution.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"7156ce00-6441-4147-9f02-42db1324da0f"}'::jsonb,
  updated_at = now()
WHERE id = '7156ce00-6441-4147-9f02-42db1324da0f';

UPDATE public.questions SET
  question_text = 'Given $x+y=64$ and $3x-y=41$, what is $x$?',
  stimulus_text = 'At an event, 64 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=41$.',
  options = '[{"id":"A","text":"$35$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=140$. **Step 2:** $x=35$."},{"id":"B","text":"$34$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$29$","is_correct":false,"explanation":"Choice C ($29$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$36$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(3x-y)=64+41$ → $4x=140$.
**Step 2:** $x=35$.
**Step 3:** Back-substitute: $y=29$.
**Step 4:** Verify both equations.

**Distractor analysis:**
- **B** ($34$): One less than the solution.
- **C** ($29$): Choice C ($29$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($36$): One more than the solution.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"82b146d8-01b0-4a80-ac0f-207c99a89412"}'::jsonb,
  updated_at = now()
WHERE id = '82b146d8-01b0-4a80-ac0f-207c99a89412';

UPDATE public.questions SET
  question_text = 'Given $x+y=84$ and $3x-y=51$, what is $x$?',
  stimulus_text = 'At an event, 84 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=51$.',
  options = '[{"id":"A","text":"$45$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=180$. **Step 2:** $x=45$."},{"id":"B","text":"$44$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$39$","is_correct":false,"explanation":"Choice C ($39$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$46$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(3x-y)=84+51$ → $4x=180$.
**Step 2:** $x=45$.
**Step 3:** Back-substitute: $y=39$.
**Step 4:** Verify both equations.

**Distractor analysis:**
- **B** ($44$): One less than the solution.
- **C** ($39$): Choice C ($39$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($46$): One more than the solution.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"9fc585b6-832c-423c-ac08-2aecf20bab7a"}'::jsonb,
  updated_at = now()
WHERE id = '9fc585b6-832c-423c-ac08-2aecf20bab7a';

UPDATE public.questions SET
  question_text = 'Given $x+y=94$ and $4x-y=56$, what is $x$?',
  stimulus_text = 'At an event, 94 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=56$.',
  options = '[{"id":"A","text":"$50$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=250$. **Step 2:** $x=50$."},{"id":"B","text":"$49$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$44$","is_correct":false,"explanation":"Choice C ($44$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$51$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(4x-y)=94+56$ → $5x=250$.
**Step 2:** $x=50$.
**Step 3:** Back-substitute: $y=44$.
**Step 4:** Verify both equations.

**Distractor analysis:**
- **B** ($49$): One less than the solution.
- **C** ($44$): Choice C ($44$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($51$): One more than the solution.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"cb3f991f-7b3d-4099-89fc-a8bd34bb58fe"}'::jsonb,
  updated_at = now()
WHERE id = 'cb3f991f-7b3d-4099-89fc-a8bd34bb58fe';

UPDATE public.questions SET
  question_text = 'Given $x+y=60$ and $3x-y=39$, what is $x$?',
  stimulus_text = 'At an event, 60 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=39$.',
  options = '[{"id":"A","text":"$33$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=132$. **Step 2:** $x=33$."},{"id":"B","text":"$32$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$27$","is_correct":false,"explanation":"Choice C ($27$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$34$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(3x-y)=60+39$ → $4x=132$.
**Step 2:** $x=33$.
**Step 3:** Back-substitute: $y=27$.
**Step 4:** Verify both equations.

**Distractor analysis:**
- **B** ($32$): One less than the solution.
- **C** ($27$): Choice C ($27$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($34$): One more than the solution.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"ffcc25c0-4817-45be-9dd6-5e6b6bdd1893"}'::jsonb,
  updated_at = now()
WHERE id = 'ffcc25c0-4817-45be-9dd6-5e6b6bdd1893';

UPDATE public.questions SET
  question_text = 'Which equation models the line, and what does the slope represent?',
  stimulus_text = 'A line models cost vs. units, passing through $(13,50)$ and $(21,82)$.',
  options = '[{"id":"A","text":"$y=4x-2$; cost increases $4$ per unit","is_correct":true,"explanation":"Correct (A). **Step 1:** Slope $=\\frac{82-50}{21-13}=4$. **Step 2:** $y=4x-2$."},{"id":"B","text":"$y=3x+-2$; cost decreases per unit","is_correct":false,"explanation":"Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$y=82$; fixed total cost","is_correct":false,"explanation":"That is a single point''s $y$-value, not the line."},{"id":"D","text":"$y=\\frac{82}{21}x$; average cost per unit from origin","is_correct":false,"explanation":"Slope from origin is not the line''s slope."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Slope $=\frac{32}{8}=4$.
**Step 2:** $y=4x-2$.
**Step 3:** Slope $4$ = dollars per additional unit.
**Step 4:** Check both points.

**Distractor analysis:**
- **B** ($y=3x+-2$; cost decreases per unit): Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($y=82$; fixed total cost): That is a single point''s $y$-value, not the line.
- **D** ($y=\frac{82}{21}x$; average cost per unit from origin): Slope from origin is not the line''s slope.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"5d78b6d6-d8aa-47c8-aa9d-94b81b199909"}'::jsonb,
  updated_at = now()
WHERE id = '5d78b6d6-d8aa-47c8-aa9d-94b81b199909';

UPDATE public.questions SET
  question_text = 'Which equation models the line, and what does the slope represent?',
  stimulus_text = 'A line models cost vs. units, passing through $(35,138)$ and $(43,170)$.',
  options = '[{"id":"A","text":"$y=4x-2$; cost increases $4$ per unit","is_correct":true,"explanation":"Correct (A). **Step 1:** Slope $=\\frac{170-138}{43-35}=4$. **Step 2:** $y=4x-2$."},{"id":"B","text":"$y=3x+-2$; cost decreases per unit","is_correct":false,"explanation":"Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$y=170$; fixed total cost","is_correct":false,"explanation":"That is a single point''s $y$-value, not the line."},{"id":"D","text":"$y=\\frac{170}{43}x$; average cost per unit from origin","is_correct":false,"explanation":"Slope from origin is not the line''s slope."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Slope $=\frac{32}{8}=4$.
**Step 2:** $y=4x-2$.
**Step 3:** Slope $4$ = dollars per additional unit.
**Step 4:** Check both points.

**Distractor analysis:**
- **B** ($y=3x+-2$; cost decreases per unit): Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($y=170$; fixed total cost): That is a single point''s $y$-value, not the line.
- **D** ($y=\frac{170}{43}x$; average cost per unit from origin): Slope from origin is not the line''s slope.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"6ecee29e-0cc3-4b00-a93e-28596c38d4d8"}'::jsonb,
  updated_at = now()
WHERE id = '6ecee29e-0cc3-4b00-a93e-28596c38d4d8';

UPDATE public.questions SET
  question_text = 'Which equation models the line, and what does the slope represent?',
  stimulus_text = 'A line models cost vs. units, passing through $(46,182)$ and $(54,214)$.',
  options = '[{"id":"A","text":"$y=4x-2$; cost increases $4$ per unit","is_correct":true,"explanation":"Correct (A). **Step 1:** Slope $=\\frac{214-182}{54-46}=4$. **Step 2:** $y=4x-2$."},{"id":"B","text":"$y=3x+-2$; cost decreases per unit","is_correct":false,"explanation":"Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$y=214$; fixed total cost","is_correct":false,"explanation":"That is a single point''s $y$-value, not the line."},{"id":"D","text":"$y=\\frac{214}{54}x$; average cost per unit from origin","is_correct":false,"explanation":"Slope from origin is not the line''s slope."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Slope $=\frac{32}{8}=4$.
**Step 2:** $y=4x-2$.
**Step 3:** Slope $4$ = dollars per additional unit.
**Step 4:** Check both points.

**Distractor analysis:**
- **B** ($y=3x+-2$; cost decreases per unit): Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($y=214$; fixed total cost): That is a single point''s $y$-value, not the line.
- **D** ($y=\frac{214}{54}x$; average cost per unit from origin): Slope from origin is not the line''s slope.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"6f8df9e3-03c7-456c-9651-2667a01fb901"}'::jsonb,
  updated_at = now()
WHERE id = '6f8df9e3-03c7-456c-9651-2667a01fb901';

UPDATE public.questions SET
  question_text = 'Which equation models the line, and what does the slope represent?',
  stimulus_text = 'A line models cost vs. units, passing through $(42,166)$ and $(50,198)$.',
  options = '[{"id":"A","text":"$y=4x-2$; cost increases $4$ per unit","is_correct":true,"explanation":"Correct (A). **Step 1:** Slope $=\\frac{198-166}{50-42}=4$. **Step 2:** $y=4x-2$."},{"id":"B","text":"$y=3x+-2$; cost decreases per unit","is_correct":false,"explanation":"Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$y=198$; fixed total cost","is_correct":false,"explanation":"That is a single point''s $y$-value, not the line."},{"id":"D","text":"$y=\\frac{198}{50}x$; average cost per unit from origin","is_correct":false,"explanation":"Slope from origin is not the line''s slope."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Slope $=\frac{32}{8}=4$.
**Step 2:** $y=4x-2$.
**Step 3:** Slope $4$ = dollars per additional unit.
**Step 4:** Check both points.

**Distractor analysis:**
- **B** ($y=3x+-2$; cost decreases per unit): Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($y=198$; fixed total cost): That is a single point''s $y$-value, not the line.
- **D** ($y=\frac{198}{50}x$; average cost per unit from origin): Slope from origin is not the line''s slope.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"81c2999e-754a-4964-9b25-85541ce57458"}'::jsonb,
  updated_at = now()
WHERE id = '81c2999e-754a-4964-9b25-85541ce57458';

UPDATE public.questions SET
  question_text = 'Which equation models the line, and what does the slope represent?',
  stimulus_text = 'A line models cost vs. units, passing through $(23,90)$ and $(31,122)$.',
  options = '[{"id":"A","text":"$y=4x-2$; cost increases $4$ per unit","is_correct":true,"explanation":"Correct (A). **Step 1:** Slope $=\\frac{122-90}{31-23}=4$. **Step 2:** $y=4x-2$."},{"id":"B","text":"$y=3x+-2$; cost decreases per unit","is_correct":false,"explanation":"Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$y=122$; fixed total cost","is_correct":false,"explanation":"That is a single point''s $y$-value, not the line."},{"id":"D","text":"$y=\\frac{122}{31}x$; average cost per unit from origin","is_correct":false,"explanation":"Slope from origin is not the line''s slope."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Slope $=\frac{32}{8}=4$.
**Step 2:** $y=4x-2$.
**Step 3:** Slope $4$ = dollars per additional unit.
**Step 4:** Check both points.

**Distractor analysis:**
- **B** ($y=3x+-2$; cost decreases per unit): Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($y=122$; fixed total cost): That is a single point''s $y$-value, not the line.
- **D** ($y=\frac{122}{31}x$; average cost per unit from origin): Slope from origin is not the line''s slope.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"9a80002c-39b5-4194-9595-a8c14fce8538"}'::jsonb,
  updated_at = now()
WHERE id = '9a80002c-39b5-4194-9595-a8c14fce8538';

UPDATE public.questions SET
  question_text = 'Which equation models the line, and what does the slope represent?',
  stimulus_text = 'A line models cost vs. units, passing through $(45,178)$ and $(53,210)$.',
  options = '[{"id":"A","text":"$y=4x-2$; cost increases $4$ per unit","is_correct":true,"explanation":"Correct (A). **Step 1:** Slope $=\\frac{210-178}{53-45}=4$. **Step 2:** $y=4x-2$."},{"id":"B","text":"$y=3x+-2$; cost decreases per unit","is_correct":false,"explanation":"Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$y=210$; fixed total cost","is_correct":false,"explanation":"That is a single point''s $y$-value, not the line."},{"id":"D","text":"$y=\\frac{210}{53}x$; average cost per unit from origin","is_correct":false,"explanation":"Slope from origin is not the line''s slope."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Slope $=\frac{32}{8}=4$.
**Step 2:** $y=4x-2$.
**Step 3:** Slope $4$ = dollars per additional unit.
**Step 4:** Check both points.

**Distractor analysis:**
- **B** ($y=3x+-2$; cost decreases per unit): Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($y=210$; fixed total cost): That is a single point''s $y$-value, not the line.
- **D** ($y=\frac{210}{53}x$; average cost per unit from origin): Slope from origin is not the line''s slope.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"f9d960c4-d34b-4285-adb8-9e2a062b40d0"}'::jsonb,
  updated_at = now()
WHERE id = 'f9d960c4-d34b-4285-adb8-9e2a062b40d0';

UPDATE public.questions SET
  question_text = 'What is the volume of the box, in cubic inches?',
  stimulus_text = 'A rectangular sheet is 22 by 21 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.',
  options = '[{"id":"A","text":"$462$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$453$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$906$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $462-3^2=453$. **Step 2:** Volume $=453×2=906$."},{"id":"D","text":"$909$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $22×21=462$.
**Step 2:** Remove corner: $3^2=9$ → base $453$.
**Step 3:** Volume $=453×2=906$ cu in.

**Distractor analysis:**
- **A** ($462$): Forgot to subtract the removed corner.
- **B** ($453$): Area of base only, not volume.
- **D** ($909$): Adds corner length instead of using height.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":259,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"a232ac8e","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.056Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"08d1122a-9015-48b0-80d0-735bd134935d"}'::jsonb,
  updated_at = now()
WHERE id = '08d1122a-9015-48b0-80d0-735bd134935d';

UPDATE public.questions SET
  question_text = 'What is the volume of the box, in cubic inches?',
  stimulus_text = 'A rectangular sheet is 47 by 46 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.',
  options = '[{"id":"A","text":"$2162$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$2153$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$4306$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $2162-3^2=2153$. **Step 2:** Volume $=2153×2=4306$."},{"id":"D","text":"$4309$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $47×46=2162$.
**Step 2:** Remove corner: $3^2=9$ → base $2153$.
**Step 3:** Volume $=2153×2=4306$ cu in.

**Distractor analysis:**
- **A** ($2162$): Forgot to subtract the removed corner.
- **B** ($2153$): Area of base only, not volume.
- **D** ($4309$): Adds corner length instead of using height.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":529,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_b8","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"31cf220f-7552-4092-b574-32c83b07496d"}'::jsonb,
  updated_at = now()
WHERE id = '31cf220f-7552-4092-b574-32c83b07496d';

UPDATE public.questions SET
  question_text = 'What is the volume of the box, in cubic inches?',
  stimulus_text = 'A rectangular sheet is 48 by 47 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.',
  options = '[{"id":"A","text":"$2256$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$2247$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$4494$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $2256-3^2=2247$. **Step 2:** Volume $=2247×2=4494$."},{"id":"D","text":"$4497$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $48×47=2256$.
**Step 2:** Remove corner: $3^2=9$ → base $2247$.
**Step 3:** Volume $=2247×2=4494$ cu in.

**Distractor analysis:**
- **A** ($2256$): Forgot to subtract the removed corner.
- **B** ($2247$): Area of base only, not volume.
- **D** ($4497$): Adds corner length instead of using height.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":992,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"1453c4d6","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"57dbc0f7-beb9-4ff9-b397-ba31a1301780"}'::jsonb,
  updated_at = now()
WHERE id = '57dbc0f7-beb9-4ff9-b397-ba31a1301780';

UPDATE public.questions SET
  question_text = 'What is the volume of the box, in cubic inches?',
  stimulus_text = 'A rectangular sheet is 6 by 5 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.',
  options = '[{"id":"A","text":"$30$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$21$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$42$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $30-3^2=21$. **Step 2:** Volume $=21×2=42$."},{"id":"D","text":"$45$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $6×5=30$.
**Step 2:** Remove corner: $3^2=9$ → base $21$.
**Step 3:** Volume $=21×2=42$ cu in.

**Distractor analysis:**
- **A** ($30$): Forgot to subtract the removed corner.
- **B** ($21$): Area of base only, not volume.
- **D** ($45$): Adds corner length instead of using height.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":807,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a3","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"c5467bf8-b1c0-47f1-aee6-0ab9d4020f31"}'::jsonb,
  updated_at = now()
WHERE id = 'c5467bf8-b1c0-47f1-aee6-0ab9d4020f31';

UPDATE public.questions SET
  question_text = 'How far is half the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 12 meters. A runner completes half the circumference.',
  options = '[{"id":"A","text":"$37.68$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈75.36$. **Step 2:** Half $≈37.68$ m."},{"id":"B","text":"$452.16$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$75.36$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$37.68$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** $C=2\pi r≈2(3.14)(12)=75.36$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈37.68$ m.
**Step 3:** Do not confuse with area $πr^2≈452.16$.

**Distractor analysis:**
- **B** ($452.16$): Area formula $\pi r^2$, not arc length.
- **C** ($75.36$): Full circumference, not half.
- **D** ($37.68$): Half of $\pi r$, not half of $2\pi r$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":726,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a10","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.055Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"0105225e-2343-4276-86c1-a8929331470d"}'::jsonb,
  updated_at = now()
WHERE id = '0105225e-2343-4276-86c1-a8929331470d';

UPDATE public.questions SET
  question_text = 'How far is half the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 14 meters. A runner completes half the circumference.',
  options = '[{"id":"A","text":"$43.96$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈87.92$. **Step 2:** Half $≈43.96$ m."},{"id":"B","text":"$615.44$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$87.92$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$43.96$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** $C=2\pi r≈2(3.14)(14)=87.92$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈43.96$ m.
**Step 3:** Do not confuse with area $πr^2≈615.44$.

**Distractor analysis:**
- **B** ($615.44$): Area formula $\pi r^2$, not arc length.
- **C** ($87.92$): Full circumference, not half.
- **D** ($43.96$): Half of $\pi r$, not half of $2\pi r$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":383,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a1","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.055Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"0140f2cd-046a-47b4-9a0e-a36d72821da0"}'::jsonb,
  updated_at = now()
WHERE id = '0140f2cd-046a-47b4-9a0e-a36d72821da0';

UPDATE public.questions SET
  question_text = 'How far is half the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 8 meters. A runner completes half the circumference.',
  options = '[{"id":"A","text":"$25.12$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈50.24$. **Step 2:** Half $≈25.12$ m."},{"id":"B","text":"$200.96$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$50.24$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$25.12$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** $C=2\pi r≈2(3.14)(8)=50.24$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈25.12$ m.
**Step 3:** Do not confuse with area $πr^2≈200.96$.

**Distractor analysis:**
- **B** ($200.96$): Area formula $\pi r^2$, not arc length.
- **C** ($50.24$): Full circumference, not half.
- **D** ($25.12$): Half of $\pi r$, not half of $2\pi r$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":845,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a9","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.055Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"018d947f-4bb6-4851-acab-91d11ceb1bf9"}'::jsonb,
  updated_at = now()
WHERE id = '018d947f-4bb6-4851-acab-91d11ceb1bf9';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":737,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c2","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.056Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"03903c52-942a-42db-8466-d94b219d28cc"}'::jsonb,
  updated_at = now()
WHERE id = '03903c52-942a-42db-8466-d94b219d28cc';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.623Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":678,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"b61e7b1d","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.056Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"0931182b-5580-4426-941a-cff8e5041b52"}'::jsonb,
  updated_at = now()
WHERE id = '0931182b-5580-4426-941a-cff8e5041b52';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.623Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":707,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a8","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.056Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"09cd058d-0dd8-433f-9b3d-f33929e3d9eb"}'::jsonb,
  updated_at = now()
WHERE id = '09cd058d-0dd8-433f-9b3d-f33929e3d9eb';

UPDATE public.questions SET
  question_text = 'How far is half the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 12 meters. A runner completes half the circumference.',
  options = '[{"id":"A","text":"$37.68$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈75.36$. **Step 2:** Half $≈37.68$ m."},{"id":"B","text":"$452.16$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$75.36$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$37.68$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** $C=2\pi r≈2(3.14)(12)=75.36$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈37.68$ m.
**Step 3:** Do not confuse with area $πr^2≈452.16$.

**Distractor analysis:**
- **B** ($452.16$): Area formula $\pi r^2$, not arc length.
- **C** ($75.36$): Full circumference, not half.
- **D** ($37.68$): Half of $\pi r$, not half of $2\pi r$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.623Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":805,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a2","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.056Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"09dda101-77d1-4084-8ca4-712862ab4da4"}'::jsonb,
  updated_at = now()
WHERE id = '09dda101-77d1-4084-8ca4-712862ab4da4';

UPDATE public.questions SET
  question_text = 'How far is half the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 14 meters. A runner completes half the circumference.',
  options = '[{"id":"A","text":"$43.96$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈87.92$. **Step 2:** Half $≈43.96$ m."},{"id":"B","text":"$615.44$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$87.92$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$43.96$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** $C=2\pi r≈2(3.14)(14)=87.92$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈43.96$ m.
**Step 3:** Do not confuse with area $πr^2≈615.44$.

**Distractor analysis:**
- **B** ($615.44$): Area formula $\pi r^2$, not arc length.
- **C** ($87.92$): Full circumference, not half.
- **D** ($43.96$): Half of $\pi r$, not half of $2\pi r$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.623Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":567,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"f21b71c2","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.056Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"0ab23cb9-75fa-459e-ac75-a4281571cbed"}'::jsonb,
  updated_at = now()
WHERE id = '0ab23cb9-75fa-459e-ac75-a4281571cbed';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.623Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":450,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c1","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.057Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"0c99e0d3-bd48-4d2a-9689-8f5562eedace"}'::jsonb,
  updated_at = now()
WHERE id = '0c99e0d3-bd48-4d2a-9689-8f5562eedace';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.623Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":618,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a7","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.057Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"0f2b5217-2bf6-4b20-bbd5-c11b628dfd62"}'::jsonb,
  updated_at = now()
WHERE id = '0f2b5217-2bf6-4b20-bbd5-c11b628dfd62';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.623Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":345,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_b6","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.058Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"103a53d3-a873-482d-80b9-8c98e1ad3514"}'::jsonb,
  updated_at = now()
WHERE id = '103a53d3-a873-482d-80b9-8c98e1ad3514';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.623Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":203,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c3","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"15caefad-0b46-452b-a2a7-4679ba176099"}'::jsonb,
  updated_at = now()
WHERE id = '15caefad-0b46-452b-a2a7-4679ba176099';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.623Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":722,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a2","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"1a16d135-4b71-44c0-9662-e709456dad60"}'::jsonb,
  updated_at = now()
WHERE id = '1a16d135-4b71-44c0-9662-e709456dad60';

UPDATE public.questions SET
  question_text = 'How far is half the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 12 meters. A runner completes half the circumference.',
  options = '[{"id":"A","text":"$37.68$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈75.36$. **Step 2:** Half $≈37.68$ m."},{"id":"B","text":"$452.16$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$75.36$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$37.68$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** $C=2\pi r≈2(3.14)(12)=75.36$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈37.68$ m.
**Step 3:** Do not confuse with area $πr^2≈452.16$.

**Distractor analysis:**
- **B** ($452.16$): Area formula $\pi r^2$, not arc length.
- **C** ($75.36$): Full circumference, not half.
- **D** ($37.68$): Half of $\pi r$, not half of $2\pi r$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.623Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":908,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_b8","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"1a88f730-762d-45b0-8723-7021e03074e3"}'::jsonb,
  updated_at = now()
WHERE id = '1a88f730-762d-45b0-8723-7021e03074e3';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.623Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":419,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c8","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"1c89f36d-6acc-403f-9dfd-30247a7c07a0"}'::jsonb,
  updated_at = now()
WHERE id = '1c89f36d-6acc-403f-9dfd-30247a7c07a0';

UPDATE public.questions SET
  question_text = 'How far is half the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 12 meters. A runner completes half the circumference.',
  options = '[{"id":"A","text":"$37.68$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈75.36$. **Step 2:** Half $≈37.68$ m."},{"id":"B","text":"$452.16$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$75.36$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$37.68$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** $C=2\pi r≈2(3.14)(12)=75.36$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈37.68$ m.
**Step 3:** Do not confuse with area $πr^2≈452.16$.

**Distractor analysis:**
- **B** ($452.16$): Area formula $\pi r^2$, not arc length.
- **C** ($75.36$): Full circumference, not half.
- **D** ($37.68$): Half of $\pi r$, not half of $2\pi r$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.623Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":105,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a9","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"1cdae017-c15a-43d8-9a24-750f1221cbf0"}'::jsonb,
  updated_at = now()
WHERE id = '1cdae017-c15a-43d8-9a24-750f1221cbf0';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.623Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":1015,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_12","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"1fdf2666-f639-479e-a083-d7cf5dcbbc1f"}'::jsonb,
  updated_at = now()
WHERE id = '1fdf2666-f639-479e-a083-d7cf5dcbbc1f';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.623Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":578,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a2","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"1fe84ef4-9597-44e9-8c8e-e19262cc3ad6"}'::jsonb,
  updated_at = now()
WHERE id = '1fe84ef4-9597-44e9-8c8e-e19262cc3ad6';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.623Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":229,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_d2","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"2e210755-86eb-4899-a005-787d2c93fddb"}'::jsonb,
  updated_at = now()
WHERE id = '2e210755-86eb-4899-a005-787d2c93fddb';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.623Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":325,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"9389fa32","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"2e52b9de-b777-4725-bb2a-cfcb7f086b92"}'::jsonb,
  updated_at = now()
WHERE id = '2e52b9de-b777-4725-bb2a-cfcb7f086b92';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.623Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":352,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c1","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"2f85d30a-c79f-4c08-9455-8da52d787b84"}'::jsonb,
  updated_at = now()
WHERE id = '2f85d30a-c79f-4c08-9455-8da52d787b84';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.623Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":424,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c4","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"30b1ef7c-821d-4222-ba5b-66411bf4c62f"}'::jsonb,
  updated_at = now()
WHERE id = '30b1ef7c-821d-4222-ba5b-66411bf4c62f';

UPDATE public.questions SET
  question_text = 'How far is half the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 12 meters. A runner completes half the circumference.',
  options = '[{"id":"A","text":"$37.68$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈75.36$. **Step 2:** Half $≈37.68$ m."},{"id":"B","text":"$452.16$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$75.36$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$37.68$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** $C=2\pi r≈2(3.14)(12)=75.36$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈37.68$ m.
**Step 3:** Do not confuse with area $πr^2≈452.16$.

**Distractor analysis:**
- **B** ($452.16$): Area formula $\pi r^2$, not arc length.
- **C** ($75.36$): Full circumference, not half.
- **D** ($37.68$): Half of $\pi r$, not half of $2\pi r$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.623Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":782,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_f8","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"32ad689a-5ee7-4459-8a9e-df7df3ffff8e"}'::jsonb,
  updated_at = now()
WHERE id = '32ad689a-5ee7-4459-8a9e-df7df3ffff8e';

UPDATE public.questions SET
  question_text = 'How far is half the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 18 meters. A runner completes half the circumference.',
  options = '[{"id":"A","text":"$56.52$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈113.04$. **Step 2:** Half $≈56.52$ m."},{"id":"B","text":"$1017.36$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$113.04$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$56.52$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** $C=2\pi r≈2(3.14)(18)=113.04$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈56.52$ m.
**Step 3:** Do not confuse with area $πr^2≈1017.36$.

**Distractor analysis:**
- **B** ($1017.36$): Area formula $\pi r^2$, not arc length.
- **C** ($113.04$): Full circumference, not half.
- **D** ($56.52$): Half of $\pi r$, not half of $2\pi r$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.623Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":875,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_d5","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"351b4fab-efb4-41e8-8350-180bbb9796f6"}'::jsonb,
  updated_at = now()
WHERE id = '351b4fab-efb4-41e8-8350-180bbb9796f6';

UPDATE public.questions SET
  question_text = 'How far is half the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 6 meters. A runner completes half the circumference.',
  options = '[{"id":"A","text":"$18.84$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈37.68$. **Step 2:** Half $≈18.84$ m."},{"id":"B","text":"$113.04$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$37.68$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$18.84$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** $C=2\pi r≈2(3.14)(6)=37.68$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈18.84$ m.
**Step 3:** Do not confuse with area $πr^2≈113.04$.

**Distractor analysis:**
- **B** ($113.04$): Area formula $\pi r^2$, not arc length.
- **C** ($37.68$): Full circumference, not half.
- **D** ($18.84$): Half of $\pi r$, not half of $2\pi r$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.623Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":967,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_b8","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"3920ed28-333d-4dd5-afdb-aca3fd6f5404"}'::jsonb,
  updated_at = now()
WHERE id = '3920ed28-333d-4dd5-afdb-aca3fd6f5404';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.623Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":531,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"45763892","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"3a78d90f-485e-4d79-be60-c3d2a5ec4edc"}'::jsonb,
  updated_at = now()
WHERE id = '3a78d90f-485e-4d79-be60-c3d2a5ec4edc';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.623Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":307,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"3d892d23","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"3c8997a1-29c9-4173-a9cc-747b60e64b79"}'::jsonb,
  updated_at = now()
WHERE id = '3c8997a1-29c9-4173-a9cc-747b60e64b79';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.623Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":463,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_d8","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"3dc4d1d9-2de7-4589-b253-11f87adf2761"}'::jsonb,
  updated_at = now()
WHERE id = '3dc4d1d9-2de7-4589-b253-11f87adf2761';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.623Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":145,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a8","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"3fcf9fb0-e195-4c20-a0d6-7544dc4516ec"}'::jsonb,
  updated_at = now()
WHERE id = '3fcf9fb0-e195-4c20-a0d6-7544dc4516ec';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.623Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":944,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"b881f345","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"41321628-6aaf-4b76-b584-8863ae9fefde"}'::jsonb,
  updated_at = now()
WHERE id = '41321628-6aaf-4b76-b584-8863ae9fefde';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.623Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":364,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c1","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"4271d3e6-2284-440f-b7d4-9b1ffa0610dd"}'::jsonb,
  updated_at = now()
WHERE id = '4271d3e6-2284-440f-b7d4-9b1ffa0610dd';

UPDATE public.questions SET
  question_text = 'How far is half the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 8 meters. A runner completes half the circumference.',
  options = '[{"id":"A","text":"$25.12$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈50.24$. **Step 2:** Half $≈25.12$ m."},{"id":"B","text":"$200.96$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$50.24$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$25.12$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** $C=2\pi r≈2(3.14)(8)=50.24$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈25.12$ m.
**Step 3:** Do not confuse with area $πr^2≈200.96$.

**Distractor analysis:**
- **B** ($200.96$): Area formula $\pi r^2$, not arc length.
- **C** ($50.24$): Full circumference, not half.
- **D** ($25.12$): Half of $\pi r$, not half of $2\pi r$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.623Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":540,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_e8","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"45692433-0caa-47ca-a431-87a82bcd4b82"}'::jsonb,
  updated_at = now()
WHERE id = '45692433-0caa-47ca-a431-87a82bcd4b82';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.623Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":189,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_b8","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"469a719f-02f8-4fb9-aaa3-83ab90270708"}'::jsonb,
  updated_at = now()
WHERE id = '469a719f-02f8-4fb9-aaa3-83ab90270708';

UPDATE public.questions SET
  question_text = 'How far is half the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 18 meters. A runner completes half the circumference.',
  options = '[{"id":"A","text":"$56.52$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈113.04$. **Step 2:** Half $≈56.52$ m."},{"id":"B","text":"$1017.36$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$113.04$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$56.52$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** $C=2\pi r≈2(3.14)(18)=113.04$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈56.52$ m.
**Step 3:** Do not confuse with area $πr^2≈1017.36$.

**Distractor analysis:**
- **B** ($1017.36$): Area formula $\pi r^2$, not arc length.
- **C** ($113.04$): Full circumference, not half.
- **D** ($56.52$): Half of $\pi r$, not half of $2\pi r$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.623Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":779,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c8","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"47aa4885-e162-4b27-abcf-eb115d92a38a"}'::jsonb,
  updated_at = now()
WHERE id = '47aa4885-e162-4b27-abcf-eb115d92a38a';

UPDATE public.questions SET
  question_text = 'How far is half the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 8 meters. A runner completes half the circumference.',
  options = '[{"id":"A","text":"$25.12$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈50.24$. **Step 2:** Half $≈25.12$ m."},{"id":"B","text":"$200.96$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$50.24$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$25.12$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** $C=2\pi r≈2(3.14)(8)=50.24$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈25.12$ m.
**Step 3:** Do not confuse with area $πr^2≈200.96$.

**Distractor analysis:**
- **B** ($200.96$): Area formula $\pi r^2$, not arc length.
- **C** ($50.24$): Full circumference, not half.
- **D** ($25.12$): Half of $\pi r$, not half of $2\pi r$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.623Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":564,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a4","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"4833d581-6989-4c7b-88ae-a8e3ee4a9dbb"}'::jsonb,
  updated_at = now()
WHERE id = '4833d581-6989-4c7b-88ae-a8e3ee4a9dbb';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.623Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":856,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_b2","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"4af8eeba-39af-4405-8008-81284a648561"}'::jsonb,
  updated_at = now()
WHERE id = '4af8eeba-39af-4405-8008-81284a648561';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.623Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":394,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"e9ff8933","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"5306b990-2ee5-4903-8088-f5baded07209"}'::jsonb,
  updated_at = now()
WHERE id = '5306b990-2ee5-4903-8088-f5baded07209';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.623Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":942,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c7","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"580b0fec-28f6-4b99-a848-bf53574202fb"}'::jsonb,
  updated_at = now()
WHERE id = '580b0fec-28f6-4b99-a848-bf53574202fb';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.623Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":39,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c2","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"5bfd4396-b0a0-4a59-90b2-4e5edfef3c4d"}'::jsonb,
  updated_at = now()
WHERE id = '5bfd4396-b0a0-4a59-90b2-4e5edfef3c4d';

UPDATE public.questions SET
  question_text = 'How far is half the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 14 meters. A runner completes half the circumference.',
  options = '[{"id":"A","text":"$43.96$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈87.92$. **Step 2:** Half $≈43.96$ m."},{"id":"B","text":"$615.44$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$87.92$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$43.96$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** $C=2\pi r≈2(3.14)(14)=87.92$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈43.96$ m.
**Step 3:** Do not confuse with area $πr^2≈615.44$.

**Distractor analysis:**
- **B** ($615.44$): Area formula $\pi r^2$, not arc length.
- **C** ($87.92$): Full circumference, not half.
- **D** ($43.96$): Half of $\pi r$, not half of $2\pi r$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.623Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":530,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_e4","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"60a5bd7e-cb30-411f-90f3-da95e089fccd"}'::jsonb,
  updated_at = now()
WHERE id = '60a5bd7e-cb30-411f-90f3-da95e089fccd';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.623Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":815,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_b8","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"629776aa-4c95-4c47-b5b2-8266e05501a7"}'::jsonb,
  updated_at = now()
WHERE id = '629776aa-4c95-4c47-b5b2-8266e05501a7';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.623Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":235,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_d5","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"62d52d89-ffa6-44d2-88e1-1d85f5003ebe"}'::jsonb,
  updated_at = now()
WHERE id = '62d52d89-ffa6-44d2-88e1-1d85f5003ebe';

UPDATE public.questions SET
  question_text = 'How far is half the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 6 meters. A runner completes half the circumference.',
  options = '[{"id":"A","text":"$18.84$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈37.68$. **Step 2:** Half $≈18.84$ m."},{"id":"B","text":"$113.04$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$37.68$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$18.84$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** $C=2\pi r≈2(3.14)(6)=37.68$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈18.84$ m.
**Step 3:** Do not confuse with area $πr^2≈113.04$.

**Distractor analysis:**
- **B** ($113.04$): Area formula $\pi r^2$, not arc length.
- **C** ($37.68$): Full circumference, not half.
- **D** ($18.84$): Half of $\pi r$, not half of $2\pi r$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.623Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":416,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"12d8c11f","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"63e14c57-e500-4a05-90b3-d59512d24c9c"}'::jsonb,
  updated_at = now()
WHERE id = '63e14c57-e500-4a05-90b3-d59512d24c9c';

UPDATE public.questions SET
  question_text = 'How far is half the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 14 meters. A runner completes half the circumference.',
  options = '[{"id":"A","text":"$43.96$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈87.92$. **Step 2:** Half $≈43.96$ m."},{"id":"B","text":"$615.44$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$87.92$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$43.96$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** $C=2\pi r≈2(3.14)(14)=87.92$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈43.96$ m.
**Step 3:** Do not confuse with area $πr^2≈615.44$.

**Distractor analysis:**
- **B** ($615.44$): Area formula $\pi r^2$, not arc length.
- **C** ($87.92$): Full circumference, not half.
- **D** ($43.96$): Half of $\pi r$, not half of $2\pi r$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.623Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":708,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"75288e9f","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"6b8bc6d7-9031-47fb-b792-acf5cde42311"}'::jsonb,
  updated_at = now()
WHERE id = '6b8bc6d7-9031-47fb-b792-acf5cde42311';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.623Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":809,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"849804c5","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"6c64dd53-4397-412b-9465-7699481c21ad"}'::jsonb,
  updated_at = now()
WHERE id = '6c64dd53-4397-412b-9465-7699481c21ad';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.623Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":160,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"67d896a1","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"6ee74764-0142-4e0f-8952-c269c8064c33"}'::jsonb,
  updated_at = now()
WHERE id = '6ee74764-0142-4e0f-8952-c269c8064c33';

UPDATE public.questions SET
  question_text = 'How far is half the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 14 meters. A runner completes half the circumference.',
  options = '[{"id":"A","text":"$43.96$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈87.92$. **Step 2:** Half $≈43.96$ m."},{"id":"B","text":"$615.44$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$87.92$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$43.96$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** $C=2\pi r≈2(3.14)(14)=87.92$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈43.96$ m.
**Step 3:** Do not confuse with area $πr^2≈615.44$.

**Distractor analysis:**
- **B** ($615.44$): Area formula $\pi r^2$, not arc length.
- **C** ($87.92$): Full circumference, not half.
- **D** ($43.96$): Half of $\pi r$, not half of $2\pi r$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.623Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":389,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"8976e141","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"70203653-eb13-4b2c-82f0-8f4ca9953a6c"}'::jsonb,
  updated_at = now()
WHERE id = '70203653-eb13-4b2c-82f0-8f4ca9953a6c';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.623Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":240,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c8","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"727857ce-110e-47b1-b4c9-9935b2bef88b"}'::jsonb,
  updated_at = now()
WHERE id = '727857ce-110e-47b1-b4c9-9935b2bef88b';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.623Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":527,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a1","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"760cc568-fb6d-4bd7-91c8-3b560bc0494a"}'::jsonb,
  updated_at = now()
WHERE id = '760cc568-fb6d-4bd7-91c8-3b560bc0494a';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.623Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":372,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_e3","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"76761afb-e091-4d3d-8935-1fca1fa54d21"}'::jsonb,
  updated_at = now()
WHERE id = '76761afb-e091-4d3d-8935-1fca1fa54d21';

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

UPDATE public.questions SET
  question_text = 'How far is half the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 8 meters. A runner completes half the circumference.',
  options = '[{"id":"A","text":"$25.12$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈50.24$. **Step 2:** Half $≈25.12$ m."},{"id":"B","text":"$200.96$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$50.24$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$25.12$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** $C=2\pi r≈2(3.14)(8)=50.24$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈25.12$ m.
**Step 3:** Do not confuse with area $πr^2≈200.96$.

**Distractor analysis:**
- **B** ($200.96$): Area formula $\pi r^2$, not arc length.
- **C** ($50.24$): Full circumference, not half.
- **D** ($25.12$): Half of $\pi r$, not half of $2\pi r$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":406,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_d4","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"9526a082-3b90-45bd-a890-216f33bc3ad2"}'::jsonb,
  updated_at = now()
WHERE id = '9526a082-3b90-45bd-a890-216f33bc3ad2';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":489,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a3","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"9b5c30ce-53e0-449e-a69d-183634a2083d"}'::jsonb,
  updated_at = now()
WHERE id = '9b5c30ce-53e0-449e-a69d-183634a2083d';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":981,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a9","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"9e7ce4a5-7da8-44ee-84a0-bf6ee1799eec"}'::jsonb,
  updated_at = now()
WHERE id = '9e7ce4a5-7da8-44ee-84a0-bf6ee1799eec';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":205,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_42","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"a0703928-38a1-409b-9271-8a0ca0ad7129"}'::jsonb,
  updated_at = now()
WHERE id = 'a0703928-38a1-409b-9271-8a0ca0ad7129';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":654,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_9","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"a31a5d66-bfb8-4724-b636-d2b63f415557"}'::jsonb,
  updated_at = now()
WHERE id = 'a31a5d66-bfb8-4724-b636-d2b63f415557';

UPDATE public.questions SET
  question_text = 'How far is half the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 8 meters. A runner completes half the circumference.',
  options = '[{"id":"A","text":"$25.12$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈50.24$. **Step 2:** Half $≈25.12$ m."},{"id":"B","text":"$200.96$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$50.24$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$25.12$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** $C=2\pi r≈2(3.14)(8)=50.24$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈25.12$ m.
**Step 3:** Do not confuse with area $πr^2≈200.96$.

**Distractor analysis:**
- **B** ($200.96$): Area formula $\pi r^2$, not arc length.
- **C** ($50.24$): Full circumference, not half.
- **D** ($25.12$): Half of $\pi r$, not half of $2\pi r$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":814,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_b8","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"a6a7ab9c-b941-4dc4-a2bf-cd968d69e153"}'::jsonb,
  updated_at = now()
WHERE id = 'a6a7ab9c-b941-4dc4-a2bf-cd968d69e153';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":534,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_d7","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"a6b9fd09-461b-4742-b12e-2bc71fa44e8d"}'::jsonb,
  updated_at = now()
WHERE id = 'a6b9fd09-461b-4742-b12e-2bc71fa44e8d';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":1001,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_29","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"aa0af0c2-16bb-4f46-a622-d0ccc79ea251"}'::jsonb,
  updated_at = now()
WHERE id = 'aa0af0c2-16bb-4f46-a622-d0ccc79ea251';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":626,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_b8","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"ba095814-c4ec-449f-aa41-add1bce89084"}'::jsonb,
  updated_at = now()
WHERE id = 'ba095814-c4ec-449f-aa41-add1bce89084';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":238,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a5","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"ba9cb6c0-a2d2-42b5-9d0b-1709a95176fe"}'::jsonb,
  updated_at = now()
WHERE id = 'ba9cb6c0-a2d2-42b5-9d0b-1709a95176fe';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":928,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c6","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"bdbd5634-1872-466f-9679-31762c49f876"}'::jsonb,
  updated_at = now()
WHERE id = 'bdbd5634-1872-466f-9679-31762c49f876';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":294,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c1","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"bef4b6ff-ffbb-4cc1-bc6c-2a64fbda159f"}'::jsonb,
  updated_at = now()
WHERE id = 'bef4b6ff-ffbb-4cc1-bc6c-2a64fbda159f';

UPDATE public.questions SET
  question_text = 'How far is half the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 14 meters. A runner completes half the circumference.',
  options = '[{"id":"A","text":"$43.96$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈87.92$. **Step 2:** Half $≈43.96$ m."},{"id":"B","text":"$615.44$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$87.92$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$43.96$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** $C=2\pi r≈2(3.14)(14)=87.92$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈43.96$ m.
**Step 3:** Do not confuse with area $πr^2≈615.44$.

**Distractor analysis:**
- **B** ($615.44$): Area formula $\pi r^2$, not arc length.
- **C** ($87.92$): Full circumference, not half.
- **D** ($43.96$): Half of $\pi r$, not half of $2\pi r$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":502,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"a12f3478","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"bf6a21d0-a6c8-41d1-81d8-156f853e5a8c"}'::jsonb,
  updated_at = now()
WHERE id = 'bf6a21d0-a6c8-41d1-81d8-156f853e5a8c';

UPDATE public.questions SET
  question_text = 'How far is half the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 6 meters. A runner completes half the circumference.',
  options = '[{"id":"A","text":"$18.84$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈37.68$. **Step 2:** Half $≈18.84$ m."},{"id":"B","text":"$113.04$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$37.68$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$18.84$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** $C=2\pi r≈2(3.14)(6)=37.68$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈18.84$ m.
**Step 3:** Do not confuse with area $πr^2≈113.04$.

**Distractor analysis:**
- **B** ($113.04$): Area formula $\pi r^2$, not arc length.
- **C** ($37.68$): Full circumference, not half.
- **D** ($18.84$): Half of $\pi r$, not half of $2\pi r$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":403,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a11","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"c0d5c966-c623-4a3f-baba-93b9aa02ccfd"}'::jsonb,
  updated_at = now()
WHERE id = 'c0d5c966-c623-4a3f-baba-93b9aa02ccfd';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":842,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a4","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"c3b4cf6c-1ce3-430c-8d8a-a23626fedb2d"}'::jsonb,
  updated_at = now()
WHERE id = 'c3b4cf6c-1ce3-430c-8d8a-a23626fedb2d';

UPDATE public.questions SET
  question_text = 'How far is half the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 12 meters. A runner completes half the circumference.',
  options = '[{"id":"A","text":"$37.68$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈75.36$. **Step 2:** Half $≈37.68$ m."},{"id":"B","text":"$452.16$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$75.36$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$37.68$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** $C=2\pi r≈2(3.14)(12)=75.36$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈37.68$ m.
**Step 3:** Do not confuse with area $πr^2≈452.16$.

**Distractor analysis:**
- **B** ($452.16$): Area formula $\pi r^2$, not arc length.
- **C** ($75.36$): Full circumference, not half.
- **D** ($37.68$): Half of $\pi r$, not half of $2\pi r$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":153,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c1","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"c4806e8f-bc7f-4e25-97d7-bd4bbb7649d8"}'::jsonb,
  updated_at = now()
WHERE id = 'c4806e8f-bc7f-4e25-97d7-bd4bbb7649d8';

UPDATE public.questions SET
  question_text = 'How far is half the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 18 meters. A runner completes half the circumference.',
  options = '[{"id":"A","text":"$56.52$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈113.04$. **Step 2:** Half $≈56.52$ m."},{"id":"B","text":"$1017.36$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$113.04$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$56.52$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** $C=2\pi r≈2(3.14)(18)=113.04$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈56.52$ m.
**Step 3:** Do not confuse with area $πr^2≈1017.36$.

**Distractor analysis:**
- **B** ($1017.36$): Area formula $\pi r^2$, not arc length.
- **C** ($113.04$): Full circumference, not half.
- **D** ($56.52$): Half of $\pi r$, not half of $2\pi r$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":52,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c5","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"ca886cc9-2e43-4423-80a8-64146808edb4"}'::jsonb,
  updated_at = now()
WHERE id = 'ca886cc9-2e43-4423-80a8-64146808edb4';

UPDATE public.questions SET
  question_text = 'How far is half the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 6 meters. A runner completes half the circumference.',
  options = '[{"id":"A","text":"$18.84$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈37.68$. **Step 2:** Half $≈18.84$ m."},{"id":"B","text":"$113.04$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$37.68$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$18.84$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** $C=2\pi r≈2(3.14)(6)=37.68$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈18.84$ m.
**Step 3:** Do not confuse with area $πr^2≈113.04$.

**Distractor analysis:**
- **B** ($113.04$): Area formula $\pi r^2$, not arc length.
- **C** ($37.68$): Full circumference, not half.
- **D** ($18.84$): Half of $\pi r$, not half of $2\pi r$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":497,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a8","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"cb5680e3-4b66-45e5-a607-0c5fca19c0ef"}'::jsonb,
  updated_at = now()
WHERE id = 'cb5680e3-4b66-45e5-a607-0c5fca19c0ef';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":647,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c9","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"ccf905e6-a32e-475d-b4ae-47bb57a8ccae"}'::jsonb,
  updated_at = now()
WHERE id = 'ccf905e6-a32e-475d-b4ae-47bb57a8ccae';

UPDATE public.questions SET
  question_text = 'How far is half the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 18 meters. A runner completes half the circumference.',
  options = '[{"id":"A","text":"$56.52$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈113.04$. **Step 2:** Half $≈56.52$ m."},{"id":"B","text":"$1017.36$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$113.04$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$56.52$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** $C=2\pi r≈2(3.14)(18)=113.04$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈56.52$ m.
**Step 3:** Do not confuse with area $πr^2≈1017.36$.

**Distractor analysis:**
- **B** ($1017.36$): Area formula $\pi r^2$, not arc length.
- **C** ($113.04$): Full circumference, not half.
- **D** ($56.52$): Half of $\pi r$, not half of $2\pi r$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":38,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c4","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"d3389491-8bae-4c62-acdc-f7ee053a23f3"}'::jsonb,
  updated_at = now()
WHERE id = 'd3389491-8bae-4c62-acdc-f7ee053a23f3';

UPDATE public.questions SET
  question_text = 'How far is half the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 14 meters. A runner completes half the circumference.',
  options = '[{"id":"A","text":"$43.96$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈87.92$. **Step 2:** Half $≈43.96$ m."},{"id":"B","text":"$615.44$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$87.92$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$43.96$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** $C=2\pi r≈2(3.14)(14)=87.92$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈43.96$ m.
**Step 3:** Do not confuse with area $πr^2≈615.44$.

**Distractor analysis:**
- **B** ($615.44$): Area formula $\pi r^2$, not arc length.
- **C** ($87.92$): Full circumference, not half.
- **D** ($43.96$): Half of $\pi r$, not half of $2\pi r$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":58,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c8","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"d7faa0b0-7fd6-46fc-8c0d-5d1be8c3e0f1"}'::jsonb,
  updated_at = now()
WHERE id = 'd7faa0b0-7fd6-46fc-8c0d-5d1be8c3e0f1';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":361,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"f711e94e","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"dd36835b-259d-40a4-9040-cec33487da12"}'::jsonb,
  updated_at = now()
WHERE id = 'dd36835b-259d-40a4-9040-cec33487da12';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":94,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a3","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"df013e3a-dfb5-4b35-8a48-6877fd7cf51c"}'::jsonb,
  updated_at = now()
WHERE id = 'df013e3a-dfb5-4b35-8a48-6877fd7cf51c';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":256,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"e51f3a8c","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"dffe944a-34a8-4930-a072-f90ebcce8808"}'::jsonb,
  updated_at = now()
WHERE id = 'dffe944a-34a8-4930-a072-f90ebcce8808';

UPDATE public.questions SET
  question_text = 'How far is half the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 8 meters. A runner completes half the circumference.',
  options = '[{"id":"A","text":"$25.12$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈50.24$. **Step 2:** Half $≈25.12$ m."},{"id":"B","text":"$200.96$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$50.24$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$25.12$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** $C=2\pi r≈2(3.14)(8)=50.24$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈25.12$ m.
**Step 3:** Do not confuse with area $πr^2≈200.96$.

**Distractor analysis:**
- **B** ($200.96$): Area formula $\pi r^2$, not arc length.
- **C** ($50.24$): Full circumference, not half.
- **D** ($25.12$): Half of $\pi r$, not half of $2\pi r$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":508,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_e4","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"e263e068-f5e8-4596-a3a4-ba58d21452e9"}'::jsonb,
  updated_at = now()
WHERE id = 'e263e068-f5e8-4596-a3a4-ba58d21452e9';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":619,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_12","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"e316a77c-c034-4a9b-a1de-07ed77113c40"}'::jsonb,
  updated_at = now()
WHERE id = 'e316a77c-c034-4a9b-a1de-07ed77113c40';

UPDATE public.questions SET
  question_text = 'How far is half the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 8 meters. A runner completes half the circumference.',
  options = '[{"id":"A","text":"$25.12$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈50.24$. **Step 2:** Half $≈25.12$ m."},{"id":"B","text":"$200.96$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$50.24$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$25.12$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** $C=2\pi r≈2(3.14)(8)=50.24$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈25.12$ m.
**Step 3:** Do not confuse with area $πr^2≈200.96$.

**Distractor analysis:**
- **B** ($200.96$): Area formula $\pi r^2$, not arc length.
- **C** ($50.24$): Full circumference, not half.
- **D** ($25.12$): Half of $\pi r$, not half of $2\pi r$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":257,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_b8","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"e7570fe9-7b06-43cf-87f6-3267755117fc"}'::jsonb,
  updated_at = now()
WHERE id = 'e7570fe9-7b06-43cf-87f6-3267755117fc';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":724,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a8","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"ea783fcb-56ce-4faf-b43e-791af27b7116"}'::jsonb,
  updated_at = now()
WHERE id = 'ea783fcb-56ce-4faf-b43e-791af27b7116';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":260,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_47","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"eae0a996-b022-423c-aefe-a43821f3e507"}'::jsonb,
  updated_at = now()
WHERE id = 'eae0a996-b022-423c-aefe-a43821f3e507';

UPDATE public.questions SET
  question_text = 'How far is half the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 8 meters. A runner completes half the circumference.',
  options = '[{"id":"A","text":"$25.12$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈50.24$. **Step 2:** Half $≈25.12$ m."},{"id":"B","text":"$200.96$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$50.24$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$25.12$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** $C=2\pi r≈2(3.14)(8)=50.24$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈25.12$ m.
**Step 3:** Do not confuse with area $πr^2≈200.96$.

**Distractor analysis:**
- **B** ($200.96$): Area formula $\pi r^2$, not arc length.
- **C** ($50.24$): Full circumference, not half.
- **D** ($25.12$): Half of $\pi r$, not half of $2\pi r$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":774,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c9","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"ebcb2a2b-d6ca-49e3-867f-1bc10439c111"}'::jsonb,
  updated_at = now()
WHERE id = 'ebcb2a2b-d6ca-49e3-867f-1bc10439c111';

UPDATE public.questions SET
  question_text = 'How far is half the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 18 meters. A runner completes half the circumference.',
  options = '[{"id":"A","text":"$56.52$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈113.04$. **Step 2:** Half $≈56.52$ m."},{"id":"B","text":"$1017.36$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$113.04$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$56.52$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** $C=2\pi r≈2(3.14)(18)=113.04$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈56.52$ m.
**Step 3:** Do not confuse with area $πr^2≈1017.36$.

**Distractor analysis:**
- **B** ($1017.36$): Area formula $\pi r^2$, not arc length.
- **C** ($113.04$): Full circumference, not half.
- **D** ($56.52$): Half of $\pi r$, not half of $2\pi r$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":322,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c8","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"ec937356-77c8-466b-b05a-5d21ff30e7ff"}'::jsonb,
  updated_at = now()
WHERE id = 'ec937356-77c8-466b-b05a-5d21ff30e7ff';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":232,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"45e13b6a","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"ee4ce1b5-8920-44d8-8dcd-85d52c7d88a3"}'::jsonb,
  updated_at = now()
WHERE id = 'ee4ce1b5-8920-44d8-8dcd-85d52c7d88a3';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":402,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c1","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"f0b46463-8455-4e34-8a6b-7979cecdfa59"}'::jsonb,
  updated_at = now()
WHERE id = 'f0b46463-8455-4e34-8a6b-7979cecdfa59';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":278,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a2","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"f35403f8-7973-43b1-9d43-59357f522104"}'::jsonb,
  updated_at = now()
WHERE id = 'f35403f8-7973-43b1-9d43-59357f522104';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":7,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c1","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"f3f07283-e7e7-4bb2-9617-1c21d527c253"}'::jsonb,
  updated_at = now()
WHERE id = 'f3f07283-e7e7-4bb2-9617-1c21d527c253';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":823,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"9284ac76","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"f4a1a7bb-6389-4a9c-8219-fd92ff9304e7"}'::jsonb,
  updated_at = now()
WHERE id = 'f4a1a7bb-6389-4a9c-8219-fd92ff9304e7';

UPDATE public.questions SET
  question_text = 'How far is half the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 14 meters. A runner completes half the circumference.',
  options = '[{"id":"A","text":"$43.96$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈87.92$. **Step 2:** Half $≈43.96$ m."},{"id":"B","text":"$615.44$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$87.92$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$43.96$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** $C=2\pi r≈2(3.14)(14)=87.92$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈43.96$ m.
**Step 3:** Do not confuse with area $πr^2≈615.44$.

**Distractor analysis:**
- **B** ($615.44$): Area formula $\pi r^2$, not arc length.
- **C** ($87.92$): Full circumference, not half.
- **D** ($43.96$): Half of $\pi r$, not half of $2\pi r$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":995,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c2","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"f90ce93d-d5b3-4c73-aa53-0b50f7516e84"}'::jsonb,
  updated_at = now()
WHERE id = 'f90ce93d-d5b3-4c73-aa53-0b50f7516e84';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":1017,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a1","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"f92d8d2f-831b-4f8f-9c55-76c5a3cccdc4"}'::jsonb,
  updated_at = now()
WHERE id = 'f92d8d2f-831b-4f8f-9c55-76c5a3cccdc4';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":832,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c6","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"fb22ede9-8377-446c-a8c6-e1c49eaf2ce7"}'::jsonb,
  updated_at = now()
WHERE id = 'fb22ede9-8377-446c-a8c6-e1c49eaf2ce7';

UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(4x+12)^2 - (4x-12)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$192x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=4x+12$, $v=4x-12$."},{"id":"B","text":"$8x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$48x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$16x^2+144$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=4x+12$, $v=4x-12$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(8x)(24)=192x$.
**Step 4:** Confirm by expanding both forms.

**Distractor analysis:**
- **B** ($8x^2$): Squares each binomial separately — wrong approach.
- **C** ($48x$): Uses $4b$ instead of $4ab$.
- **D** ($16x^2+144$): Adds squares; not equivalent.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"EQS","domain_id":"advanced","opensat_index":111,"opensat_domain":"Advanced Math","opensat_raw_id":"6b2173d9","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"1ff9fc1e-a6ff-4a01-9b86-fbd23b8cd078"}'::jsonb,
  updated_at = now()
WHERE id = '1ff9fc1e-a6ff-4a01-9b86-fbd23b8cd078';

UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(3x+35)^2 - (3x-35)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$420x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=3x+35$, $v=3x-35$."},{"id":"B","text":"$6x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$140x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$9x^2+1225$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=3x+35$, $v=3x-35$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(6x)(70)=420x$.
**Step 4:** Confirm by expanding both forms.

**Distractor analysis:**
- **B** ($6x^2$): Squares each binomial separately — wrong approach.
- **C** ($140x$): Uses $4b$ instead of $4ab$.
- **D** ($9x^2+1225$): Adds squares; not equivalent.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"EQS","domain_id":"advanced","opensat_index":658,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_b6","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"45dcc60c-0c26-46e0-adec-887af76804fa"}'::jsonb,
  updated_at = now()
WHERE id = '45dcc60c-0c26-46e0-adec-887af76804fa';

UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(5x+10)^2 - (5x-10)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$200x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=5x+10$, $v=5x-10$."},{"id":"B","text":"$10x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$40x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$25x^2+100$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=5x+10$, $v=5x-10$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(10x)(20)=200x$.
**Step 4:** Confirm by expanding both forms.

**Distractor analysis:**
- **B** ($10x^2$): Squares each binomial separately — wrong approach.
- **C** ($40x$): Uses $4b$ instead of $4ab$.
- **D** ($25x^2+100$): Adds squares; not equivalent.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"EQS","domain_id":"advanced","opensat_index":533,"opensat_domain":"Advanced Math","opensat_raw_id":"84977e3c","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"a7657468-b9cb-4281-a385-7e97cf90817d"}'::jsonb,
  updated_at = now()
WHERE id = 'a7657468-b9cb-4281-a385-7e97cf90817d';

UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(5x+31)^2 - (5x-31)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$620x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=5x+31$, $v=5x-31$."},{"id":"B","text":"$10x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$124x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$25x^2+961$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=5x+31$, $v=5x-31$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(10x)(62)=620x$.
**Step 4:** Confirm by expanding both forms.

**Distractor analysis:**
- **B** ($10x^2$): Squares each binomial separately — wrong approach.
- **C** ($124x$): Uses $4b$ instead of $4ab$.
- **D** ($25x^2+961$): Adds squares; not equivalent.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"EQS","domain_id":"advanced","opensat_index":937,"opensat_domain":"Advanced Math","opensat_raw_id":"a94182ab","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"b51594ba-5ea6-411e-b303-e18a3fb4e05b"}'::jsonb,
  updated_at = now()
WHERE id = 'b51594ba-5ea6-411e-b303-e18a3fb4e05b';

UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(3x+8)^2 - (3x-8)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$96x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=3x+8$, $v=3x-8$."},{"id":"B","text":"$6x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$32x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$9x^2+64$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=3x+8$, $v=3x-8$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(6x)(16)=96x$.
**Step 4:** Confirm by expanding both forms.

**Distractor analysis:**
- **B** ($6x^2$): Squares each binomial separately — wrong approach.
- **C** ($32x$): Uses $4b$ instead of $4ab$.
- **D** ($9x^2+64$): Adds squares; not equivalent.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"EQS","domain_id":"advanced","opensat_index":408,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c8","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"da50dfd1-9b3a-4ba8-bd62-44c7a2ca984e"}'::jsonb,
  updated_at = now()
WHERE id = 'da50dfd1-9b3a-4ba8-bd62-44c7a2ca984e';

UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 59% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.',
  options = '[{"id":"A","text":"Exactly 59% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 55% and 63%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 55% to 63%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 55% to 63%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Distractor analysis:**
- **A** (Exactly 59% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":231,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"9b262b21","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.057Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"0d07c1d9-1bba-4008-93a5-7b028475ea22"}'::jsonb,
  updated_at = now()
WHERE id = '0d07c1d9-1bba-4008-93a5-7b028475ea22';

UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 61% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.',
  options = '[{"id":"A","text":"Exactly 61% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 57% and 65%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 57% to 65%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 57% to 65%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Distractor analysis:**
- **A** (Exactly 61% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":749,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"6a12b9d6","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.058Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"10941e80-c8f3-488b-9d2b-56d531887e33"}'::jsonb,
  updated_at = now()
WHERE id = '10941e80-c8f3-488b-9d2b-56d531887e33';

UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 54% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.',
  options = '[{"id":"A","text":"Exactly 54% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 50% and 58%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 50% to 58%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 50% to 58%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Distractor analysis:**
- **A** (Exactly 54% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":1024,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c4","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"24556fc7-02b4-4a58-ab94-0b9a39e6f39e"}'::jsonb,
  updated_at = now()
WHERE id = '24556fc7-02b4-4a58-ab94-0b9a39e6f39e';

UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 66% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.',
  options = '[{"id":"A","text":"Exactly 66% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 62% and 70%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 62% to 70%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 62% to 70%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Distractor analysis:**
- **A** (Exactly 66% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":126,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_d4","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"40623429-3457-4697-8bbd-4ad85b2cebf8"}'::jsonb,
  updated_at = now()
WHERE id = '40623429-3457-4697-8bbd-4ad85b2cebf8';

UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 59% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.',
  options = '[{"id":"A","text":"Exactly 59% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 55% and 63%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 55% to 63%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 55% to 63%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Distractor analysis:**
- **A** (Exactly 59% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":964,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_a4","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"6a2db9c0-7149-43b7-ab3c-fd1ced1476e1"}'::jsonb,
  updated_at = now()
WHERE id = '6a2db9c0-7149-43b7-ab3c-fd1ced1476e1';

UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 61% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.',
  options = '[{"id":"A","text":"Exactly 61% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 57% and 65%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 57% to 65%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 57% to 65%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Distractor analysis:**
- **A** (Exactly 61% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":612,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c3","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"75403c40-21ab-4e08-ab56-689291dda951"}'::jsonb,
  updated_at = now()
WHERE id = '75403c40-21ab-4e08-ab56-689291dda951';

UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 69% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.',
  options = '[{"id":"A","text":"Exactly 69% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 65% and 73%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 65% to 73%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 65% to 73%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Distractor analysis:**
- **A** (Exactly 69% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":62,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_21","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"7f74a51d-d012-4ddb-b34c-2abcb144606b"}'::jsonb,
  updated_at = now()
WHERE id = '7f74a51d-d012-4ddb-b34c-2abcb144606b';

UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 61% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.',
  options = '[{"id":"A","text":"Exactly 61% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 57% and 65%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 57% to 65%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 57% to 65%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Distractor analysis:**
- **A** (Exactly 61% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":277,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c1","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"b8d35e0a-edbd-41d6-a034-d2be75afc3ff"}'::jsonb,
  updated_at = now()
WHERE id = 'b8d35e0a-edbd-41d6-a034-d2be75afc3ff';

UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 66% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.',
  options = '[{"id":"A","text":"Exactly 66% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 62% and 70%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 62% to 70%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 62% to 70%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Distractor analysis:**
- **A** (Exactly 66% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":577,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"e8a7453f","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"e289cfcd-2e05-48cf-b640-c5c4f3417e42"}'::jsonb,
  updated_at = now()
WHERE id = 'e289cfcd-2e05-48cf-b640-c5c4f3417e42';

UPDATE public.questions SET
  question_text = 'If the vehicle continues at the same rate, what is $d$ when $t=67$?',
  stimulus_text = 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=6t+57$. At $t=59$, $d=411$.',
  options = '[{"id":"A","text":"$453$","is_correct":false,"explanation":"Choice A ($453$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$417$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=67$."},{"id":"C","text":"$459$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=6(67)+57$. **Step 2:** $d=459$."},{"id":"D","text":"$402$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rate is $6$ mi/h with intercept $57$.
**Step 2:** $d=6(67)+57=459$.
**Step 3:** Cross-check via $(67-59)×6+411=459$.

**Distractor analysis:**
- **A** ($453$): Choice A ($453$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($417$): Adds slope once instead of evaluating at $t=67$.
- **D** ($402$): Forgets the intercept $+${b}$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LEQ","domain_id":"algebra","opensat_index":833,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c9","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"1903e8c2-ec42-4fbe-8543-d9c03cc7cffb"}'::jsonb,
  updated_at = now()
WHERE id = '1903e8c2-ec42-4fbe-8543-d9c03cc7cffb';

UPDATE public.questions SET
  question_text = 'If the vehicle continues at the same rate, what is $d$ when $t=62$?',
  stimulus_text = 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=5t+52$. At $t=54$, $d=322$.',
  options = '[{"id":"A","text":"$357$","is_correct":false,"explanation":"Choice A ($357$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$327$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=62$."},{"id":"C","text":"$362$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(62)+52$. **Step 2:** $d=362$."},{"id":"D","text":"$310$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rate is $5$ mi/h with intercept $52$.
**Step 2:** $d=5(62)+52=362$.
**Step 3:** Cross-check via $(62-54)×5+322=362$.

**Distractor analysis:**
- **A** ($357$): Choice A ($357$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($327$): Adds slope once instead of evaluating at $t=62$.
- **D** ($310$): Forgets the intercept $+${b}$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LEQ","domain_id":"algebra","opensat_index":432,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c9","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"d1b2c5f5-d3de-4772-b3fe-78ed012bf273"}'::jsonb,
  updated_at = now()
WHERE id = 'd1b2c5f5-d3de-4772-b3fe-78ed012bf273';

UPDATE public.questions SET
  question_text = 'If the vehicle continues at the same rate, what is $d$ when $t=57$?',
  stimulus_text = 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=4t+47$. At $t=49$, $d=243$.',
  options = '[{"id":"A","text":"$271$","is_correct":false,"explanation":"Choice A ($271$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$247$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=57$."},{"id":"C","text":"$275$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=4(57)+47$. **Step 2:** $d=275$."},{"id":"D","text":"$228$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rate is $4$ mi/h with intercept $47$.
**Step 2:** $d=4(57)+47=275$.
**Step 3:** Cross-check via $(57-49)×4+243=275$.

**Distractor analysis:**
- **A** ($271$): Choice A ($271$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($247$): Adds slope once instead of evaluating at $t=57$.
- **D** ($228$): Forgets the intercept $+${b}$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LEQ","domain_id":"algebra","opensat_index":356,"opensat_domain":"Algebra","opensat_raw_id":"f5c91883","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"f63d18bd-0f5d-4513-aed9-89f05aefe9dc"}'::jsonb,
  updated_at = now()
WHERE id = 'f63d18bd-0f5d-4513-aed9-89f05aefe9dc';

UPDATE public.questions SET
  question_text = 'For what value of $k$ does $5(x-8)+2k = 56$ have solution $x=16$?',
  stimulus_text = 'A calibration device applies scale factor 5, then adds a correction term involving parameter $k$.',
  options = '[{"id":"A","text":"$6$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$8$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=16$. **Step 2:** Solve for $k=8$."},{"id":"C","text":"$9$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$16$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=16$: $5(16-k)+2k=56$.
**Step 2:** Expand: $80-5k+2k=56$ → $80+-3k=56$.
**Step 3:** Isolate: $-3k=-24$ → $k=8$.
**Step 4:** Verify by substituting $k=8$ back.

**Distractor analysis:**
- **A** ($6$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($9$): Too large; re-check the linear equation in $k$.
- **D** ($16$): That is the given solution for $x$, not the parameter $k$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":989,"opensat_domain":"Algebra","opensat_raw_id":"13b8a32c","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.056Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"0a308946-d110-43e0-8ccb-62c8932ad4b9"}'::jsonb,
  updated_at = now()
WHERE id = '0a308946-d110-43e0-8ccb-62c8932ad4b9';

UPDATE public.questions SET
  question_text = 'For what value of $k$ does $5(x-5)+2k = 140$ have solution $x=31$?',
  stimulus_text = 'A calibration device applies scale factor 5, then adds a correction term involving parameter $k$.',
  options = '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$5$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=31$. **Step 2:** Solve for $k=5$."},{"id":"C","text":"$6$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$31$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=31$: $5(31-k)+2k=140$.
**Step 2:** Expand: $155-5k+2k=140$ → $155+-3k=140$.
**Step 3:** Isolate: $-3k=-15$ → $k=5$.
**Step 4:** Verify by substituting $k=5$ back.

**Distractor analysis:**
- **A** ($3$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($6$): Too large; re-check the linear equation in $k$.
- **D** ($31$): That is the given solution for $x$, not the parameter $k$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":602,"opensat_domain":"Algebra","opensat_raw_id":"random_id_d3","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.058Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"10f29039-321d-472b-9320-898c063e944e"}'::jsonb,
  updated_at = now()
WHERE id = '10f29039-321d-472b-9320-898c063e944e';

UPDATE public.questions SET
  question_text = 'For what value of $k$ does $7(x-7)+2k = 196$ have solution $x=33$?',
  stimulus_text = 'A calibration device applies scale factor 7, then adds a correction term involving parameter $k$.',
  options = '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$7$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=33$. **Step 2:** Solve for $k=7$."},{"id":"C","text":"$8$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$33$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=33$: $7(33-k)+2k=196$.
**Step 2:** Expand: $231-7k+2k=196$ → $231+-5k=196$.
**Step 3:** Isolate: $-5k=-35$ → $k=7$.
**Step 4:** Verify by substituting $k=7$ back.

**Distractor analysis:**
- **A** ($5$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($8$): Too large; re-check the linear equation in $k$.
- **D** ($33$): That is the given solution for $x$, not the parameter $k$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":478,"opensat_domain":"Algebra","opensat_raw_id":"a3d227c8","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"15c24b12-e2b4-44ff-b702-a57c688c51cc"}'::jsonb,
  updated_at = now()
WHERE id = '15c24b12-e2b4-44ff-b702-a57c688c51cc';

UPDATE public.questions SET
  question_text = 'For what value of $k$ does $7(x-4)+2k = 106$ have solution $x=18$?',
  stimulus_text = 'A calibration device applies scale factor 7, then adds a correction term involving parameter $k$.',
  options = '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=18$. **Step 2:** Solve for $k=4$."},{"id":"C","text":"$5$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$18$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=18$: $7(18-k)+2k=106$.
**Step 2:** Expand: $126-7k+2k=106$ → $126+-5k=106$.
**Step 3:** Isolate: $-5k=-20$ → $k=4$.
**Step 4:** Verify by substituting $k=4$ back.

**Distractor analysis:**
- **A** ($2$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($5$): Too large; re-check the linear equation in $k$.
- **D** ($18$): That is the given solution for $x$, not the parameter $k$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":657,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a8","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"23d3c984-8967-4522-b574-f72d1352cce3"}'::jsonb,
  updated_at = now()
WHERE id = '23d3c984-8967-4522-b574-f72d1352cce3';

UPDATE public.questions SET
  question_text = 'For what value of $k$ does $7(x-7)+2k = 196$ have solution $x=33$?',
  stimulus_text = 'A calibration device applies scale factor 7, then adds a correction term involving parameter $k$.',
  options = '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$7$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=33$. **Step 2:** Solve for $k=7$."},{"id":"C","text":"$8$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$33$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=33$: $7(33-k)+2k=196$.
**Step 2:** Expand: $231-7k+2k=196$ → $231+-5k=196$.
**Step 3:** Isolate: $-5k=-35$ → $k=7$.
**Step 4:** Verify by substituting $k=7$ back.

**Distractor analysis:**
- **A** ($5$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($8$): Too large; re-check the linear equation in $k$.
- **D** ($33$): That is the given solution for $x$, not the parameter $k$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":565,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c8","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"304fcb9c-4d5c-4196-bac3-b06617013f64"}'::jsonb,
  updated_at = now()
WHERE id = '304fcb9c-4d5c-4196-bac3-b06617013f64';

UPDATE public.questions SET
  question_text = 'For what value of $k$ does $7(x-5)+2k = 276$ have solution $x=43$?',
  stimulus_text = 'A calibration device applies scale factor 7, then adds a correction term involving parameter $k$.',
  options = '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$5$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=43$. **Step 2:** Solve for $k=5$."},{"id":"C","text":"$6$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$43$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=43$: $7(43-k)+2k=276$.
**Step 2:** Expand: $301-7k+2k=276$ → $301+-5k=276$.
**Step 3:** Isolate: $-5k=-25$ → $k=5$.
**Step 4:** Verify by substituting $k=5$ back.

**Distractor analysis:**
- **A** ($3$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($6$): Too large; re-check the linear equation in $k$.
- **D** ($43$): That is the given solution for $x$, not the parameter $k$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":702,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a1","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"3519d6c4-3820-4f28-98c3-e9e6a974727e"}'::jsonb,
  updated_at = now()
WHERE id = '3519d6c4-3820-4f28-98c3-e9e6a974727e';

UPDATE public.questions SET
  question_text = 'For what value of $k$ does $5(x-5)+2k = 290$ have solution $x=61$?',
  stimulus_text = 'A calibration device applies scale factor 5, then adds a correction term involving parameter $k$.',
  options = '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$5$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=61$. **Step 2:** Solve for $k=5$."},{"id":"C","text":"$6$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$61$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=61$: $5(61-k)+2k=290$.
**Step 2:** Expand: $305-5k+2k=290$ → $305+-3k=290$.
**Step 3:** Isolate: $-3k=-15$ → $k=5$.
**Step 4:** Verify by substituting $k=5$ back.

**Distractor analysis:**
- **A** ($3$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($6$): Too large; re-check the linear equation in $k$.
- **D** ($61$): That is the given solution for $x$, not the parameter $k$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":433,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c1","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"3a99d844-40b0-46d6-b5ba-23664ee74db7"}'::jsonb,
  updated_at = now()
WHERE id = '3a99d844-40b0-46d6-b5ba-23664ee74db7';

UPDATE public.questions SET
  question_text = 'For what value of $k$ does $7(x-6)+2k = 236$ have solution $x=38$?',
  stimulus_text = 'A calibration device applies scale factor 7, then adds a correction term involving parameter $k$.',
  options = '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$6$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=38$. **Step 2:** Solve for $k=6$."},{"id":"C","text":"$7$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$38$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=38$: $7(38-k)+2k=236$.
**Step 2:** Expand: $266-7k+2k=236$ → $266+-5k=236$.
**Step 3:** Isolate: $-5k=-30$ → $k=6$.
**Step 4:** Verify by substituting $k=6$ back.

**Distractor analysis:**
- **A** ($4$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($7$): Too large; re-check the linear equation in $k$.
- **D** ($38$): That is the given solution for $x$, not the parameter $k$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":979,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a3","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"3e654601-9ede-4c5d-8157-97e6e1d3da4e"}'::jsonb,
  updated_at = now()
WHERE id = '3e654601-9ede-4c5d-8157-97e6e1d3da4e';

UPDATE public.questions SET
  question_text = 'For what value of $k$ does $6(x-5)+2k = 22$ have solution $x=7$?',
  stimulus_text = 'A calibration device applies scale factor 6, then adds a correction term involving parameter $k$.',
  options = '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$5$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=7$. **Step 2:** Solve for $k=5$."},{"id":"C","text":"$6$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$7$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=7$: $6(7-k)+2k=22$.
**Step 2:** Expand: $42-6k+2k=22$ → $42+-4k=22$.
**Step 3:** Isolate: $-4k=-20$ → $k=5$.
**Step 4:** Verify by substituting $k=5$ back.

**Distractor analysis:**
- **A** ($3$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($6$): Too large; re-check the linear equation in $k$.
- **D** ($7$): That is the given solution for $x$, not the parameter $k$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":632,"opensat_domain":"Algebra","opensat_raw_id":"4e93f543","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"3f34e32b-8abf-470d-86f0-2a3df30cf9d2"}'::jsonb,
  updated_at = now()
WHERE id = '3f34e32b-8abf-470d-86f0-2a3df30cf9d2';

UPDATE public.questions SET
  question_text = 'For what value of $k$ does $8(x-5)+2k = 122$ have solution $x=19$?',
  stimulus_text = 'A calibration device applies scale factor 8, then adds a correction term involving parameter $k$.',
  options = '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$5$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=19$. **Step 2:** Solve for $k=5$."},{"id":"C","text":"$6$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$19$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=19$: $8(19-k)+2k=122$.
**Step 2:** Expand: $152-8k+2k=122$ → $152+-6k=122$.
**Step 3:** Isolate: $-6k=-30$ → $k=5$.
**Step 4:** Verify by substituting $k=5$ back.

**Distractor analysis:**
- **A** ($3$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($6$): Too large; re-check the linear equation in $k$.
- **D** ($19$): That is the given solution for $x$, not the parameter $k$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":698,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c5","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"40a351b2-3996-4f71-9bae-103a181a03ec"}'::jsonb,
  updated_at = now()
WHERE id = '40a351b2-3996-4f71-9bae-103a181a03ec';

UPDATE public.questions SET
  question_text = 'For what value of $k$ does $5(x-4)+2k = 168$ have solution $x=36$?',
  stimulus_text = 'A calibration device applies scale factor 5, then adds a correction term involving parameter $k$.',
  options = '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=36$. **Step 2:** Solve for $k=4$."},{"id":"C","text":"$5$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$36$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=36$: $5(36-k)+2k=168$.
**Step 2:** Expand: $180-5k+2k=168$ → $180+-3k=168$.
**Step 3:** Isolate: $-3k=-12$ → $k=4$.
**Step 4:** Verify by substituting $k=4$ back.

**Distractor analysis:**
- **A** ($2$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($5$): Too large; re-check the linear equation in $k$.
- **D** ($36$): That is the given solution for $x$, not the parameter $k$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":546,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c1","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"553c8198-532d-4721-9f39-86615d5dd362"}'::jsonb,
  updated_at = now()
WHERE id = '553c8198-532d-4721-9f39-86615d5dd362';

UPDATE public.questions SET
  question_text = 'For what value of $k$ does $4(x-5)+2k = 210$ have solution $x=55$?',
  stimulus_text = 'A calibration device applies scale factor 4, then adds a correction term involving parameter $k$.',
  options = '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$5$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=55$. **Step 2:** Solve for $k=5$."},{"id":"C","text":"$6$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$55$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=55$: $4(55-k)+2k=210$.
**Step 2:** Expand: $220-4k+2k=210$ → $220+-2k=210$.
**Step 3:** Isolate: $-2k=-10$ → $k=5$.
**Step 4:** Verify by substituting $k=5$ back.

**Distractor analysis:**
- **A** ($3$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($6$): Too large; re-check the linear equation in $k$.
- **D** ($55$): That is the given solution for $x$, not the parameter $k$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":551,"opensat_domain":"Algebra","opensat_raw_id":"3a6bd3a7","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"6401f41c-a30e-4e89-a7a3-eb6de97cb203"}'::jsonb,
  updated_at = now()
WHERE id = '6401f41c-a30e-4e89-a7a3-eb6de97cb203';

UPDATE public.questions SET
  question_text = 'For what value of $k$ does $8(x-6)+2k = 316$ have solution $x=44$?',
  stimulus_text = 'A calibration device applies scale factor 8, then adds a correction term involving parameter $k$.',
  options = '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$6$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=44$. **Step 2:** Solve for $k=6$."},{"id":"C","text":"$7$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$44$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=44$: $8(44-k)+2k=316$.
**Step 2:** Expand: $352-8k+2k=316$ → $352+-6k=316$.
**Step 3:** Isolate: $-6k=-36$ → $k=6$.
**Step 4:** Verify by substituting $k=6$ back.

**Distractor analysis:**
- **A** ($4$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($7$): Too large; re-check the linear equation in $k$.
- **D** ($44$): That is the given solution for $x$, not the parameter $k$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":33,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a5","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"75383ffb-11c0-40c8-9de4-9ed3525cfea7"}'::jsonb,
  updated_at = now()
WHERE id = '75383ffb-11c0-40c8-9de4-9ed3525cfea7';

UPDATE public.questions SET
  question_text = 'For what value of $k$ does $8(x-7)+2k = 30$ have solution $x=9$?',
  stimulus_text = 'A calibration device applies scale factor 8, then adds a correction term involving parameter $k$.',
  options = '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$7$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=9$. **Step 2:** Solve for $k=7$."},{"id":"C","text":"$8$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$9$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=9$: $8(9-k)+2k=30$.
**Step 2:** Expand: $72-8k+2k=30$ → $72+-6k=30$.
**Step 3:** Isolate: $-6k=-42$ → $k=7$.
**Step 4:** Verify by substituting $k=7$ back.

**Distractor analysis:**
- **A** ($5$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($8$): Too large; re-check the linear equation in $k$.
- **D** ($9$): That is the given solution for $x$, not the parameter $k$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":509,"opensat_domain":"Algebra","opensat_raw_id":"45a109a3","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"79cc3067-f353-40fb-8776-5ede1e16648e"}'::jsonb,
  updated_at = now()
WHERE id = '79cc3067-f353-40fb-8776-5ede1e16648e';

UPDATE public.questions SET
  question_text = 'For what value of $k$ does $8(x-3)+2k = 454$ have solution $x=59$?',
  stimulus_text = 'A calibration device applies scale factor 8, then adds a correction term involving parameter $k$.',
  options = '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=59$. **Step 2:** Solve for $k=3$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$59$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=59$: $8(59-k)+2k=454$.
**Step 2:** Expand: $472-8k+2k=454$ → $472+-6k=454$.
**Step 3:** Isolate: $-6k=-18$ → $k=3$.
**Step 4:** Verify by substituting $k=3$ back.

**Distractor analysis:**
- **A** ($1$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($4$): Too large; re-check the linear equation in $k$.
- **D** ($59$): That is the given solution for $x$, not the parameter $k$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":431,"opensat_domain":"Algebra","opensat_raw_id":"random_id_24","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"853a0bab-16f4-49b7-9a0e-57b18e381f12"}'::jsonb,
  updated_at = now()
WHERE id = '853a0bab-16f4-49b7-9a0e-57b18e381f12';

UPDATE public.questions SET
  question_text = 'For what value of $k$ does $4(x-4)+2k = 112$ have solution $x=30$?',
  stimulus_text = 'A calibration device applies scale factor 4, then adds a correction term involving parameter $k$.',
  options = '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=30$. **Step 2:** Solve for $k=4$."},{"id":"C","text":"$5$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$30$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=30$: $4(30-k)+2k=112$.
**Step 2:** Expand: $120-4k+2k=112$ → $120+-2k=112$.
**Step 3:** Isolate: $-2k=-8$ → $k=4$.
**Step 4:** Verify by substituting $k=4$ back.

**Distractor analysis:**
- **A** ($2$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($5$): Too large; re-check the linear equation in $k$.
- **D** ($30$): That is the given solution for $x$, not the parameter $k$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":392,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c4","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"9a1963c8-e13f-46a7-99ef-7f67d0883572"}'::jsonb,
  updated_at = now()
WHERE id = '9a1963c8-e13f-46a7-99ef-7f67d0883572';

UPDATE public.questions SET
  question_text = 'For what value of $k$ does $5(x-8)+2k = 56$ have solution $x=16$?',
  stimulus_text = 'A calibration device applies scale factor 5, then adds a correction term involving parameter $k$.',
  options = '[{"id":"A","text":"$6$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$8$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=16$. **Step 2:** Solve for $k=8$."},{"id":"C","text":"$9$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$16$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=16$: $5(16-k)+2k=56$.
**Step 2:** Expand: $80-5k+2k=56$ → $80+-3k=56$.
**Step 3:** Isolate: $-3k=-24$ → $k=8$.
**Step 4:** Verify by substituting $k=8$ back.

**Distractor analysis:**
- **A** ($6$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($9$): Too large; re-check the linear equation in $k$.
- **D** ($16$): That is the given solution for $x$, not the parameter $k$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":855,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a5","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"9ea915c2-3922-4c75-98f5-90bb6b0e9294"}'::jsonb,
  updated_at = now()
WHERE id = '9ea915c2-3922-4c75-98f5-90bb6b0e9294';

UPDATE public.questions SET
  question_text = 'For what value of $k$ does $8(x-3)+2k = 214$ have solution $x=29$?',
  stimulus_text = 'A calibration device applies scale factor 8, then adds a correction term involving parameter $k$.',
  options = '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=29$. **Step 2:** Solve for $k=3$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$29$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=29$: $8(29-k)+2k=214$.
**Step 2:** Expand: $232-8k+2k=214$ → $232+-6k=214$.
**Step 3:** Isolate: $-6k=-18$ → $k=3$.
**Step 4:** Verify by substituting $k=3$ back.

**Distractor analysis:**
- **A** ($1$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($4$): Too large; re-check the linear equation in $k$.
- **D** ($29$): That is the given solution for $x$, not the parameter $k$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":366,"opensat_domain":"Algebra","opensat_raw_id":"1543281b","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"9f7f9290-126d-4ee0-8c0d-4695d3a2841e"}'::jsonb,
  updated_at = now()
WHERE id = '9f7f9290-126d-4ee0-8c0d-4695d3a2841e';

UPDATE public.questions SET
  question_text = 'For what value of $k$ does $7(x-4)+2k = 106$ have solution $x=18$?',
  stimulus_text = 'A calibration device applies scale factor 7, then adds a correction term involving parameter $k$.',
  options = '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=18$. **Step 2:** Solve for $k=4$."},{"id":"C","text":"$5$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$18$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=18$: $7(18-k)+2k=106$.
**Step 2:** Expand: $126-7k+2k=106$ → $126+-5k=106$.
**Step 3:** Isolate: $-5k=-20$ → $k=4$.
**Step 4:** Verify by substituting $k=4$ back.

**Distractor analysis:**
- **A** ($2$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($5$): Too large; re-check the linear equation in $k$.
- **D** ($18$): That is the given solution for $x$, not the parameter $k$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":742,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a2","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"afad7998-d92c-4320-8e4d-9c148cb19835"}'::jsonb,
  updated_at = now()
WHERE id = 'afad7998-d92c-4320-8e4d-9c148cb19835';

UPDATE public.questions SET
  question_text = 'For what value of $k$ does $5(x-4)+2k = 168$ have solution $x=36$?',
  stimulus_text = 'A calibration device applies scale factor 5, then adds a correction term involving parameter $k$.',
  options = '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=36$. **Step 2:** Solve for $k=4$."},{"id":"C","text":"$5$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$36$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=36$: $5(36-k)+2k=168$.
**Step 2:** Expand: $180-5k+2k=168$ → $180+-3k=168$.
**Step 3:** Isolate: $-3k=-12$ → $k=4$.
**Step 4:** Verify by substituting $k=4$ back.

**Distractor analysis:**
- **A** ($2$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($5$): Too large; re-check the linear equation in $k$.
- **D** ($36$): That is the given solution for $x$, not the parameter $k$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":740,"opensat_domain":"Algebra","opensat_raw_id":"d3897f3e","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"d48a3917-401e-4c95-9ff7-cbe0a20b8233"}'::jsonb,
  updated_at = now()
WHERE id = 'd48a3917-401e-4c95-9ff7-cbe0a20b8233';

UPDATE public.questions SET
  question_text = 'For what value of $k$ does $6(x-8)+2k = 280$ have solution $x=52$?',
  stimulus_text = 'A calibration device applies scale factor 6, then adds a correction term involving parameter $k$.',
  options = '[{"id":"A","text":"$6$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$8$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=52$. **Step 2:** Solve for $k=8$."},{"id":"C","text":"$9$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$52$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=52$: $6(52-k)+2k=280$.
**Step 2:** Expand: $312-6k+2k=280$ → $312+-4k=280$.
**Step 3:** Isolate: $-4k=-32$ → $k=8$.
**Step 4:** Verify by substituting $k=8$ back.

**Distractor analysis:**
- **A** ($6$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($9$): Too large; re-check the linear equation in $k$.
- **D** ($52$): That is the given solution for $x$, not the parameter $k$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":552,"opensat_domain":"Algebra","opensat_raw_id":"random_id_1","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"d5f0403b-93b5-499a-b677-37e57e0bda6c"}'::jsonb,
  updated_at = now()
WHERE id = 'd5f0403b-93b5-499a-b677-37e57e0bda6c';

UPDATE public.questions SET
  question_text = 'For what value of $k$ does $4(x-3)+2k = 134$ have solution $x=35$?',
  stimulus_text = 'A calibration device applies scale factor 4, then adds a correction term involving parameter $k$.',
  options = '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=35$. **Step 2:** Solve for $k=3$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$35$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=35$: $4(35-k)+2k=134$.
**Step 2:** Expand: $140-4k+2k=134$ → $140+-2k=134$.
**Step 3:** Isolate: $-2k=-6$ → $k=3$.
**Step 4:** Verify by substituting $k=3$ back.

**Distractor analysis:**
- **A** ($1$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($4$): Too large; re-check the linear equation in $k$.
- **D** ($35$): That is the given solution for $x$, not the parameter $k$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":279,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a7","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"dfcebb36-eb06-4f0e-ae83-d38b041470fc"}'::jsonb,
  updated_at = now()
WHERE id = 'dfcebb36-eb06-4f0e-ae83-d38b041470fc';

UPDATE public.questions SET
  question_text = 'For what value of $k$ does $7(x-3)+2k = 356$ have solution $x=53$?',
  stimulus_text = 'A calibration device applies scale factor 7, then adds a correction term involving parameter $k$.',
  options = '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=53$. **Step 2:** Solve for $k=3$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$53$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=53$: $7(53-k)+2k=356$.
**Step 2:** Expand: $371-7k+2k=356$ → $371+-5k=356$.
**Step 3:** Isolate: $-5k=-15$ → $k=3$.
**Step 4:** Verify by substituting $k=3$ back.

**Distractor analysis:**
- **A** ($1$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($4$): Too large; re-check the linear equation in $k$.
- **D** ($53$): That is the given solution for $x$, not the parameter $k$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":510,"opensat_domain":"Algebra","opensat_raw_id":"d68711e8","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"e529c331-6797-45fd-a7c0-40aae86ba38c"}'::jsonb,
  updated_at = now()
WHERE id = 'e529c331-6797-45fd-a7c0-40aae86ba38c';

UPDATE public.questions SET
  question_text = 'For what value of $k$ does $8(x-3)+2k = 454$ have solution $x=59$?',
  stimulus_text = 'A calibration device applies scale factor 8, then adds a correction term involving parameter $k$.',
  options = '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=59$. **Step 2:** Solve for $k=3$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$59$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=59$: $8(59-k)+2k=454$.
**Step 2:** Expand: $472-8k+2k=454$ → $472+-6k=454$.
**Step 3:** Isolate: $-6k=-18$ → $k=3$.
**Step 4:** Verify by substituting $k=3$ back.

**Distractor analysis:**
- **A** ($1$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($4$): Too large; re-check the linear equation in $k$.
- **D** ($59$): That is the given solution for $x$, not the parameter $k$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":938,"opensat_domain":"Algebra","opensat_raw_id":"1743968a","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"ef4e61bd-de53-4ee9-ac8e-d1ab10234450"}'::jsonb,
  updated_at = now()
WHERE id = 'ef4e61bd-de53-4ee9-ac8e-d1ab10234450';

UPDATE public.questions SET
  question_text = 'What is $m\angle C$?',
  stimulus_text = 'In triangle $ABC$, $m\angle A = 70°$ and $m\angle B = 64°$. Line through $C$ forms exterior angle 134° with side $AB$.',
  options = '[{"id":"A","text":"$70°$","is_correct":false,"explanation":"Choice A ($70°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$64°$","is_correct":false,"explanation":"Choice B ($64°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$56°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$46°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 46°$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 70 - 64 = 46°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 70° + 64° + 46° = 180°.

**Distractor analysis:**
- **A** ($70°$): Choice A ($70°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($64°$): Choice B ($64°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($56°$): Too large for the triangle angle sum.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LIN_G","domain_id":"geometry","opensat_index":516,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"9e9f36e9","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.057Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"0ee83993-2a24-4eda-a3fc-98586e4adcdb"}'::jsonb,
  updated_at = now()
WHERE id = '0ee83993-2a24-4eda-a3fc-98586e4adcdb';

UPDATE public.questions SET
  question_text = 'What is $m\angle C$?',
  stimulus_text = 'In triangle $ABC$, $m\angle A = 70°$ and $m\angle B = 64°$. Line through $C$ forms exterior angle 134° with side $AB$.',
  options = '[{"id":"A","text":"$70°$","is_correct":false,"explanation":"Choice A ($70°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$64°$","is_correct":false,"explanation":"Choice B ($64°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$56°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$46°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 46°$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 70 - 64 = 46°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 70° + 64° + 46° = 180°.

**Distractor analysis:**
- **A** ($70°$): Choice A ($70°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($64°$): Choice B ($64°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($56°$): Too large for the triangle angle sum.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LIN_G","domain_id":"geometry","opensat_index":54,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"74735a92","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"37658e76-277f-40fb-a0eb-14675d437158"}'::jsonb,
  updated_at = now()
WHERE id = '37658e76-277f-40fb-a0eb-14675d437158';

UPDATE public.questions SET
  question_text = 'What is $m\angle C$?',
  stimulus_text = 'In triangle $ABC$, $m\angle A = 70°$ and $m\angle B = 56°$. Line through $C$ forms exterior angle 126° with side $AB$.',
  options = '[{"id":"A","text":"$70°$","is_correct":false,"explanation":"Choice A ($70°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$56°$","is_correct":false,"explanation":"Choice B ($56°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$64°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$54°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 54°$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 70 - 56 = 54°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 70° + 56° + 54° = 180°.

**Distractor analysis:**
- **A** ($70°$): Choice A ($70°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($56°$): Choice B ($56°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($64°$): Too large for the triangle angle sum.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LIN_G","domain_id":"geometry","opensat_index":673,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c8","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"59633abc-8e3a-4824-80b4-c3617f659316"}'::jsonb,
  updated_at = now()
WHERE id = '59633abc-8e3a-4824-80b4-c3617f659316';

UPDATE public.questions SET
  question_text = 'What is $m\angle C$?',
  stimulus_text = 'In triangle $ABC$, $m\angle A = 76°$ and $m\angle B = 48°$. Line through $C$ forms exterior angle 124° with side $AB$.',
  options = '[{"id":"A","text":"$76°$","is_correct":false,"explanation":"Choice A ($76°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$48°$","is_correct":false,"explanation":"Choice B ($48°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$66°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$56°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 56°$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 76 - 48 = 56°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 76° + 48° + 56° = 180°.

**Distractor analysis:**
- **A** ($76°$): Choice A ($76°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($48°$): Choice B ($48°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($66°$): Too large for the triangle angle sum.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LIN_G","domain_id":"geometry","opensat_index":515,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_b8","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"92bee801-7f4e-474f-a71a-6407a4046090"}'::jsonb,
  updated_at = now()
WHERE id = '92bee801-7f4e-474f-a71a-6407a4046090';

UPDATE public.questions SET
  question_text = 'What is $m\angle C$?',
  stimulus_text = 'In triangle $ABC$, $m\angle A = 76°$ and $m\angle B = 64°$. Line through $C$ forms exterior angle 140° with side $AB$.',
  options = '[{"id":"A","text":"$76°$","is_correct":false,"explanation":"Choice A ($76°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$64°$","is_correct":false,"explanation":"Choice B ($64°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$50°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$40°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 40°$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 76 - 64 = 40°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 76° + 64° + 40° = 180°.

**Distractor analysis:**
- **A** ($76°$): Choice A ($76°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($64°$): Choice B ($64°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($50°$): Too large for the triangle angle sum.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LIN_G","domain_id":"geometry","opensat_index":868,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a9","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"e6901a49-0d79-499b-868a-cb6aa3647603"}'::jsonb,
  updated_at = now()
WHERE id = 'e6901a49-0d79-499b-868a-cb6aa3647603';

UPDATE public.questions SET
  question_text = 'For $x^2 - 14x + 45 = 0$, what is the positive solution? (Discriminant $=16$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$14$","is_correct":false,"explanation":"Choice B ($14$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$9$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-5)(x-9)=0$. **Step 2:** Positive root $9$."},{"id":"D","text":"$16$","is_correct":false,"explanation":"Choice D ($16$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-5)(x-9)=0$.
**Step 2:** Roots $x=5$ and $x=9$.
**Step 3:** Positive solution: $9$.
**Step 4:** Quadratic formula confirms discriminant $16$.

**Distractor analysis:**
- **A** ($4$): Not a root of the quadratic.
- **B** ($14$): Choice B ($14$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($16$): Choice D ($16$…) reflects a common misread or arithmetic slip — re-check each operation.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":173,"opensat_domain":"Advanced Math","opensat_raw_id":"a9e73934","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.054Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"008f585d-d789-4509-b536-1ceebf9bcde9"}'::jsonb,
  updated_at = now()
WHERE id = '008f585d-d789-4509-b536-1ceebf9bcde9';

UPDATE public.questions SET
  question_text = 'For $x^2 - 13x + 36 = 0$, what is the positive solution? (Discriminant $=25$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$13$","is_correct":false,"explanation":"Choice B ($13$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$9$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-4)(x-9)=0$. **Step 2:** Positive root $9$."},{"id":"D","text":"$15$","is_correct":false,"explanation":"Choice D ($15$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-4)(x-9)=0$.
**Step 2:** Roots $x=4$ and $x=9$.
**Step 3:** Positive solution: $9$.
**Step 4:** Quadratic formula confirms discriminant $25$.

**Distractor analysis:**
- **A** ($3$): Not a root of the quadratic.
- **B** ($13$): Choice B ($13$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($15$): Choice D ($15$…) reflects a common misread or arithmetic slip — re-check each operation.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":448,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a1","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.056Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"0513703d-777d-4eb2-9c90-e65bf95e0c69"}'::jsonb,
  updated_at = now()
WHERE id = '0513703d-777d-4eb2-9c90-e65bf95e0c69';

UPDATE public.questions SET
  question_text = 'For $x^2 - 15x + 56 = 0$, what is the positive solution? (Discriminant $=1$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$7$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$15$","is_correct":false,"explanation":"Choice B ($15$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$8$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-8)(x-7)=0$. **Step 2:** Positive root $8$."},{"id":"D","text":"$17$","is_correct":false,"explanation":"Choice D ($17$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-8)(x-7)=0$.
**Step 2:** Roots $x=8$ and $x=7$.
**Step 3:** Positive solution: $8$.
**Step 4:** Quadratic formula confirms discriminant $1$.

**Distractor analysis:**
- **A** ($7$): Not a root of the quadratic.
- **B** ($15$): Choice B ($15$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($17$): Choice D ($17$…) reflects a common misread or arithmetic slip — re-check each operation.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":1014,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a9","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.056Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"07e2964b-0ab1-4ab9-9ff2-3a55282e38fa"}'::jsonb,
  updated_at = now()
WHERE id = '07e2964b-0ab1-4ab9-9ff2-3a55282e38fa';

UPDATE public.questions SET
  question_text = 'For $x^2 - 15x + 56 = 0$, what is the positive solution? (Discriminant $=1$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$6$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$15$","is_correct":false,"explanation":"Choice B ($15$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$8$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-7)(x-8)=0$. **Step 2:** Positive root $8$."},{"id":"D","text":"$17$","is_correct":false,"explanation":"Choice D ($17$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-7)(x-8)=0$.
**Step 2:** Roots $x=7$ and $x=8$.
**Step 3:** Positive solution: $8$.
**Step 4:** Quadratic formula confirms discriminant $1$.

**Distractor analysis:**
- **A** ($6$): Not a root of the quadratic.
- **B** ($15$): Choice B ($15$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($17$): Choice D ($17$…) reflects a common misread or arithmetic slip — re-check each operation.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":387,"opensat_domain":"Advanced Math","opensat_raw_id":"8436f365","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.056Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"082cc69d-5b4b-4c0b-92a9-476dbda2a77b"}'::jsonb,
  updated_at = now()
WHERE id = '082cc69d-5b4b-4c0b-92a9-476dbda2a77b';

UPDATE public.questions SET
  question_text = 'For $x^2 - 14x + 48 = 0$, what is the positive solution? (Discriminant $=4$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$14$","is_correct":false,"explanation":"Choice B ($14$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$8$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-6)(x-8)=0$. **Step 2:** Positive root $8$."},{"id":"D","text":"$16$","is_correct":false,"explanation":"Choice D ($16$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-6)(x-8)=0$.
**Step 2:** Roots $x=6$ and $x=8$.
**Step 3:** Positive solution: $8$.
**Step 4:** Quadratic formula confirms discriminant $4$.

**Distractor analysis:**
- **A** ($5$): Not a root of the quadratic.
- **B** ($14$): Choice B ($14$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($16$): Choice D ($16$…) reflects a common misread or arithmetic slip — re-check each operation.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":332,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a1","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.057Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"0b176817-5587-4f85-80af-44ef9e2d8994"}'::jsonb,
  updated_at = now()
WHERE id = '0b176817-5587-4f85-80af-44ef9e2d8994';

UPDATE public.questions SET
  question_text = 'For $x^2 - 15x + 56 = 0$, what is the positive solution? (Discriminant $=1$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$7$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$15$","is_correct":false,"explanation":"Choice B ($15$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$8$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-8)(x-7)=0$. **Step 2:** Positive root $8$."},{"id":"D","text":"$17$","is_correct":false,"explanation":"Choice D ($17$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-8)(x-7)=0$.
**Step 2:** Roots $x=8$ and $x=7$.
**Step 3:** Positive solution: $8$.
**Step 4:** Quadratic formula confirms discriminant $1$.

**Distractor analysis:**
- **A** ($7$): Not a root of the quadratic.
- **B** ($15$): Choice B ($15$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($17$): Choice D ($17$…) reflects a common misread or arithmetic slip — re-check each operation.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":915,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a9","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.057Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"0c7acaa0-3aca-43ec-8133-184f5b47a504"}'::jsonb,
  updated_at = now()
WHERE id = '0c7acaa0-3aca-43ec-8133-184f5b47a504';

UPDATE public.questions SET
  question_text = 'For $x^2 - 15x + 56 = 0$, what is the positive solution? (Discriminant $=1$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$6$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$15$","is_correct":false,"explanation":"Choice B ($15$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$8$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-7)(x-8)=0$. **Step 2:** Positive root $8$."},{"id":"D","text":"$17$","is_correct":false,"explanation":"Choice D ($17$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-7)(x-8)=0$.
**Step 2:** Roots $x=7$ and $x=8$.
**Step 3:** Positive solution: $8$.
**Step 4:** Quadratic formula confirms discriminant $1$.

**Distractor analysis:**
- **A** ($6$): Not a root of the quadratic.
- **B** ($15$): Choice B ($15$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($17$): Choice D ($17$…) reflects a common misread or arithmetic slip — re-check each operation.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":417,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a7","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.057Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"0fe0cbc4-cf87-446e-adbf-a17bd7e23943"}'::jsonb,
  updated_at = now()
WHERE id = '0fe0cbc4-cf87-446e-adbf-a17bd7e23943';

UPDATE public.questions SET
  question_text = 'For $x^2 - 10x + 24 = 0$, what is the positive solution? (Discriminant $=4$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$10$","is_correct":false,"explanation":"Choice B ($10$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$6$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-4)(x-6)=0$. **Step 2:** Positive root $6$."},{"id":"D","text":"$12$","is_correct":false,"explanation":"Choice D ($12$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-4)(x-6)=0$.
**Step 2:** Roots $x=4$ and $x=6$.
**Step 3:** Positive solution: $6$.
**Step 4:** Quadratic formula confirms discriminant $4$.

**Distractor analysis:**
- **A** ($3$): Not a root of the quadratic.
- **B** ($10$): Choice B ($10$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($12$): Choice D ($12$…) reflects a common misread or arithmetic slip — re-check each operation.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":1021,"opensat_domain":"Advanced Math","opensat_raw_id":"25a57533","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.058Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"10a84d97-d1b8-4965-bfdf-7a4f456c773b"}'::jsonb,
  updated_at = now()
WHERE id = '10a84d97-d1b8-4965-bfdf-7a4f456c773b';

UPDATE public.questions SET
  question_text = 'For $x^2 - 16x + 64 = 0$, what is the positive solution? (Discriminant $=0$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$7$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$16$","is_correct":false,"explanation":"Choice B ($16$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$8$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-8)(x-8)=0$. **Step 2:** Positive root $8$."},{"id":"D","text":"$18$","is_correct":false,"explanation":"Choice D ($18$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-8)(x-8)=0$.
**Step 2:** Roots $x=8$ and $x=8$.
**Step 3:** Positive solution: $8$.
**Step 4:** Quadratic formula confirms discriminant $0$.

**Distractor analysis:**
- **A** ($7$): Not a root of the quadratic.
- **B** ($16$): Choice B ($16$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($18$): Choice D ($18$…) reflects a common misread or arithmetic slip — re-check each operation.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":953,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a12","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.058Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"125f87e2-4f74-4667-92f3-bbf446fec2da"}'::jsonb,
  updated_at = now()
WHERE id = '125f87e2-4f74-4667-92f3-bbf446fec2da';

UPDATE public.questions SET
  question_text = 'For $x^2 - 14x + 48 = 0$, what is the positive solution? (Discriminant $=4$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$14$","is_correct":false,"explanation":"Choice B ($14$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$8$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-6)(x-8)=0$. **Step 2:** Positive root $8$."},{"id":"D","text":"$16$","is_correct":false,"explanation":"Choice D ($16$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-6)(x-8)=0$.
**Step 2:** Roots $x=6$ and $x=8$.
**Step 3:** Positive solution: $8$.
**Step 4:** Quadratic formula confirms discriminant $4$.

**Distractor analysis:**
- **A** ($5$): Not a root of the quadratic.
- **B** ($14$): Choice B ($14$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($16$): Choice D ($16$…) reflects a common misread or arithmetic slip — re-check each operation.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":280,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c7","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"14a3af42-da38-48b3-95e4-53b4dad699cd"}'::jsonb,
  updated_at = now()
WHERE id = '14a3af42-da38-48b3-95e4-53b4dad699cd';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":650,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c5","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"1a8a49b5-ecca-44ab-89bf-3ff25c3cae55"}'::jsonb,
  updated_at = now()
WHERE id = '1a8a49b5-ecca-44ab-89bf-3ff25c3cae55';

UPDATE public.questions SET
  question_text = 'For $x^2 - 11x + 30 = 0$, what is the positive solution? (Discriminant $=1$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$11$","is_correct":false,"explanation":"Choice B ($11$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$6$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-5)(x-6)=0$. **Step 2:** Positive root $6$."},{"id":"D","text":"$13$","is_correct":false,"explanation":"Choice D ($13$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-5)(x-6)=0$.
**Step 2:** Roots $x=5$ and $x=6$.
**Step 3:** Positive solution: $6$.
**Step 4:** Quadratic formula confirms discriminant $1$.

**Distractor analysis:**
- **A** ($4$): Not a root of the quadratic.
- **B** ($11$): Choice B ($11$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($13$): Choice D ($13$…) reflects a common misread or arithmetic slip — re-check each operation.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":949,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a8","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"1bcdc20e-e22f-4e04-888b-da12a8552577"}'::jsonb,
  updated_at = now()
WHERE id = '1bcdc20e-e22f-4e04-888b-da12a8552577';

UPDATE public.questions SET
  question_text = 'For $x^2 - 12x + 36 = 0$, what is the positive solution? (Discriminant $=0$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$12$","is_correct":false,"explanation":"Choice B ($12$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$6$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-6)(x-6)=0$. **Step 2:** Positive root $6$."},{"id":"D","text":"$14$","is_correct":false,"explanation":"Choice D ($14$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-6)(x-6)=0$.
**Step 2:** Roots $x=6$ and $x=6$.
**Step 3:** Positive solution: $6$.
**Step 4:** Quadratic formula confirms discriminant $0$.

**Distractor analysis:**
- **A** ($5$): Not a root of the quadratic.
- **B** ($12$): Choice B ($12$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($14$): Choice D ($14$…) reflects a common misread or arithmetic slip — re-check each operation.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":314,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a9","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"2450cbde-c590-44d5-a8fa-094cfba18954"}'::jsonb,
  updated_at = now()
WHERE id = '2450cbde-c590-44d5-a8fa-094cfba18954';

UPDATE public.questions SET
  question_text = 'For $x^2 - 14x + 45 = 0$, what is the positive solution? (Discriminant $=16$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$14$","is_correct":false,"explanation":"Choice B ($14$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$9$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-5)(x-9)=0$. **Step 2:** Positive root $9$."},{"id":"D","text":"$16$","is_correct":false,"explanation":"Choice D ($16$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-5)(x-9)=0$.
**Step 2:** Roots $x=5$ and $x=9$.
**Step 3:** Positive solution: $9$.
**Step 4:** Quadratic formula confirms discriminant $16$.

**Distractor analysis:**
- **A** ($4$): Not a root of the quadratic.
- **B** ($14$): Choice B ($14$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($16$): Choice D ($16$…) reflects a common misread or arithmetic slip — re-check each operation.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":505,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c9","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"279f699d-d726-4666-8a54-6ac12d35b1ea"}'::jsonb,
  updated_at = now()
WHERE id = '279f699d-d726-4666-8a54-6ac12d35b1ea';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":134,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c4","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"282a5332-3325-420e-b8b2-a67a6423b147"}'::jsonb,
  updated_at = now()
WHERE id = '282a5332-3325-420e-b8b2-a67a6423b147';

UPDATE public.questions SET
  question_text = 'For $x^2 - 13x + 42 = 0$, what is the positive solution? (Discriminant $=1$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$13$","is_correct":false,"explanation":"Choice B ($13$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$7$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-6)(x-7)=0$. **Step 2:** Positive root $7$."},{"id":"D","text":"$15$","is_correct":false,"explanation":"Choice D ($15$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-6)(x-7)=0$.
**Step 2:** Roots $x=6$ and $x=7$.
**Step 3:** Positive solution: $7$.
**Step 4:** Quadratic formula confirms discriminant $1$.

**Distractor analysis:**
- **A** ($5$): Not a root of the quadratic.
- **B** ($13$): Choice B ($13$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($15$): Choice D ($15$…) reflects a common misread or arithmetic slip — re-check each operation.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":382,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c9","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"28b87969-cdb6-432d-b820-079171cb6c6b"}'::jsonb,
  updated_at = now()
WHERE id = '28b87969-cdb6-432d-b820-079171cb6c6b';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":200,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_d3","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"2f6810b9-6daa-44bd-a177-bac914b62f4c"}'::jsonb,
  updated_at = now()
WHERE id = '2f6810b9-6daa-44bd-a177-bac914b62f4c';

UPDATE public.questions SET
  question_text = 'For $x^2 - 14x + 45 = 0$, what is the positive solution? (Discriminant $=16$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$14$","is_correct":false,"explanation":"Choice B ($14$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$9$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-5)(x-9)=0$. **Step 2:** Positive root $9$."},{"id":"D","text":"$16$","is_correct":false,"explanation":"Choice D ($16$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-5)(x-9)=0$.
**Step 2:** Roots $x=5$ and $x=9$.
**Step 3:** Positive solution: $9$.
**Step 4:** Quadratic formula confirms discriminant $16$.

**Distractor analysis:**
- **A** ($4$): Not a root of the quadratic.
- **B** ($14$): Choice B ($14$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($16$): Choice D ($16$…) reflects a common misread or arithmetic slip — re-check each operation.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":625,"opensat_domain":"Advanced Math","opensat_raw_id":"87654321","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"31c1dff1-c09a-4ee3-8bbc-3133d0d9e6c6"}'::jsonb,
  updated_at = now()
WHERE id = '31c1dff1-c09a-4ee3-8bbc-3133d0d9e6c6';

UPDATE public.questions SET
  question_text = 'For $x^2 - 15x + 54 = 0$, what is the positive solution? (Discriminant $=9$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$15$","is_correct":false,"explanation":"Choice B ($15$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$9$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-6)(x-9)=0$. **Step 2:** Positive root $9$."},{"id":"D","text":"$17$","is_correct":false,"explanation":"Choice D ($17$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-6)(x-9)=0$.
**Step 2:** Roots $x=6$ and $x=9$.
**Step 3:** Positive solution: $9$.
**Step 4:** Quadratic formula confirms discriminant $9$.

**Distractor analysis:**
- **A** ($5$): Not a root of the quadratic.
- **B** ($15$): Choice B ($15$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($17$): Choice D ($17$…) reflects a common misread or arithmetic slip — re-check each operation.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":1016,"opensat_domain":"Advanced Math","opensat_raw_id":"8f457e4f","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"3380c70a-4e0b-436c-8240-75be7f9e22ae"}'::jsonb,
  updated_at = now()
WHERE id = '3380c70a-4e0b-436c-8240-75be7f9e22ae';

UPDATE public.questions SET
  question_text = 'For $x^2 - 13x + 36 = 0$, what is the positive solution? (Discriminant $=25$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$13$","is_correct":false,"explanation":"Choice B ($13$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$9$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-4)(x-9)=0$. **Step 2:** Positive root $9$."},{"id":"D","text":"$15$","is_correct":false,"explanation":"Choice D ($15$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-4)(x-9)=0$.
**Step 2:** Roots $x=4$ and $x=9$.
**Step 3:** Positive solution: $9$.
**Step 4:** Quadratic formula confirms discriminant $25$.

**Distractor analysis:**
- **A** ($3$): Not a root of the quadratic.
- **B** ($13$): Choice B ($13$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($15$): Choice D ($15$…) reflects a common misread or arithmetic slip — re-check each operation.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":208,"opensat_domain":"Advanced Math","opensat_raw_id":"34c8629c","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"34104125-77b6-42d0-88cc-a081cdea5ec0"}'::jsonb,
  updated_at = now()
WHERE id = '34104125-77b6-42d0-88cc-a081cdea5ec0';

UPDATE public.questions SET
  question_text = 'For $x^2 - 17x + 72 = 0$, what is the positive solution? (Discriminant $=1$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$7$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$17$","is_correct":false,"explanation":"Choice B ($17$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$9$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-8)(x-9)=0$. **Step 2:** Positive root $9$."},{"id":"D","text":"$19$","is_correct":false,"explanation":"Choice D ($19$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-8)(x-9)=0$.
**Step 2:** Roots $x=8$ and $x=9$.
**Step 3:** Positive solution: $9$.
**Step 4:** Quadratic formula confirms discriminant $1$.

**Distractor analysis:**
- **A** ($7$): Not a root of the quadratic.
- **B** ($17$): Choice B ($17$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($19$): Choice D ($19$…) reflects a common misread or arithmetic slip — re-check each operation.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":750,"opensat_domain":"Advanced Math","opensat_raw_id":"e8923ac1","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"3478b514-3a26-46a1-b926-8aa2ab6c10a9"}'::jsonb,
  updated_at = now()
WHERE id = '3478b514-3a26-46a1-b926-8aa2ab6c10a9';

UPDATE public.questions SET
  question_text = 'For $x^2 - 13x + 40 = 0$, what is the positive solution? (Discriminant $=9$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$13$","is_correct":false,"explanation":"Choice B ($13$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$8$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-5)(x-8)=0$. **Step 2:** Positive root $8$."},{"id":"D","text":"$15$","is_correct":false,"explanation":"Choice D ($15$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-5)(x-8)=0$.
**Step 2:** Roots $x=5$ and $x=8$.
**Step 3:** Positive solution: $8$.
**Step 4:** Quadratic formula confirms discriminant $9$.

**Distractor analysis:**
- **A** ($4$): Not a root of the quadratic.
- **B** ($13$): Choice B ($13$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($15$): Choice D ($15$…) reflects a common misread or arithmetic slip — re-check each operation.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":904,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_8","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"394e03e3-dc2f-4b1f-a1e3-c231b1c1dd6e"}'::jsonb,
  updated_at = now()
WHERE id = '394e03e3-dc2f-4b1f-a1e3-c231b1c1dd6e';

UPDATE public.questions SET
  question_text = 'For $x^2 - 13x + 42 = 0$, what is the positive solution? (Discriminant $=1$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$13$","is_correct":false,"explanation":"Choice B ($13$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$7$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-6)(x-7)=0$. **Step 2:** Positive root $7$."},{"id":"D","text":"$15$","is_correct":false,"explanation":"Choice D ($15$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-6)(x-7)=0$.
**Step 2:** Roots $x=6$ and $x=7$.
**Step 3:** Positive solution: $7$.
**Step 4:** Quadratic formula confirms discriminant $1$.

**Distractor analysis:**
- **A** ($5$): Not a root of the quadratic.
- **B** ($13$): Choice B ($13$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($15$): Choice D ($15$…) reflects a common misread or arithmetic slip — re-check each operation.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":905,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c9","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"3b1e4c77-1f3f-4d6c-a3b9-d789cdf28516"}'::jsonb,
  updated_at = now()
WHERE id = '3b1e4c77-1f3f-4d6c-a3b9-d789cdf28516';

UPDATE public.questions SET
  question_text = 'For $x^2 - 14x + 48 = 0$, what is the positive solution? (Discriminant $=4$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$7$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$14$","is_correct":false,"explanation":"Choice B ($14$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$8$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-8)(x-6)=0$. **Step 2:** Positive root $8$."},{"id":"D","text":"$16$","is_correct":false,"explanation":"Choice D ($16$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-8)(x-6)=0$.
**Step 2:** Roots $x=8$ and $x=6$.
**Step 3:** Positive solution: $8$.
**Step 4:** Quadratic formula confirms discriminant $4$.

**Distractor analysis:**
- **A** ($7$): Not a root of the quadratic.
- **B** ($14$): Choice B ($14$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($16$): Choice D ($16$…) reflects a common misread or arithmetic slip — re-check each operation.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":136,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_b4","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"402f784e-d6cb-4116-88fa-2a071cc4426b"}'::jsonb,
  updated_at = now()
WHERE id = '402f784e-d6cb-4116-88fa-2a071cc4426b';

UPDATE public.questions SET
  question_text = 'For $x^2 - 13x + 42 = 0$, what is the positive solution? (Discriminant $=1$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$6$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$13$","is_correct":false,"explanation":"Choice B ($13$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$7$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-7)(x-6)=0$. **Step 2:** Positive root $7$."},{"id":"D","text":"$15$","is_correct":false,"explanation":"Choice D ($15$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-7)(x-6)=0$.
**Step 2:** Roots $x=7$ and $x=6$.
**Step 3:** Positive solution: $7$.
**Step 4:** Quadratic formula confirms discriminant $1$.

**Distractor analysis:**
- **A** ($6$): Not a root of the quadratic.
- **B** ($13$): Choice B ($13$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($15$): Choice D ($15$…) reflects a common misread or arithmetic slip — re-check each operation.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":1,"opensat_domain":"Advanced Math","opensat_raw_id":"b81173a5","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"42feeed8-4212-4763-8c58-cf8b58eac44e"}'::jsonb,
  updated_at = now()
WHERE id = '42feeed8-4212-4763-8c58-cf8b58eac44e';

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1eec743e-b7e8-4850-a5f1-7425cb257e09', 'For what value of $k$ does $4(x-7)+2k = 166$ have solution $x=45$?', 'A calibration device applies scale factor 4, then adds a correction term involving parameter $k$.', NULL, '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$7$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=45$. **Step 2:** Solve for $k=7$."},{"id":"C","text":"$8$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$45$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1:** Substitute $x=45$: $4(45-k)+2k=166$.
**Step 2:** Expand: $180-4k+2k=166$ → $180+-2k=166$.
**Step 3:** Isolate: $-2k=-14$ → $k=7$.
**Step 4:** Verify by substituting $k=7$ back.

**Distractor analysis:**
- **A** ($5$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($8$): Too large; re-check the linear equation in $k$.
- **D** ($45$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.626Z","skill":"LIN","insert_index":0}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('975c96a3-23eb-4f00-9ba1-ea2041b78e2b', 'For what value of $k$ does $5(x-8)+2k = 206$ have solution $x=46$?', 'A calibration device applies scale factor 5, then adds a correction term involving parameter $k$.', NULL, '[{"id":"A","text":"$6$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$8$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=46$. **Step 2:** Solve for $k=8$."},{"id":"C","text":"$9$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$46$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1:** Substitute $x=46$: $5(46-k)+2k=206$.
**Step 2:** Expand: $230-5k+2k=206$ → $230+-3k=206$.
**Step 3:** Isolate: $-3k=-24$ → $k=8$.
**Step 4:** Verify by substituting $k=8$ back.

**Distractor analysis:**
- **A** ($6$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($9$): Too large; re-check the linear equation in $k$.
- **D** ($46$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.626Z","skill":"LIN","insert_index":1}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c7896299-29e0-45f4-9424-60161194cd22', 'For what value of $k$ does $6(x-3)+2k = 270$ have solution $x=47$?', 'A calibration device applies scale factor 6, then adds a correction term involving parameter $k$.', NULL, '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=47$. **Step 2:** Solve for $k=3$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$47$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1:** Substitute $x=47$: $6(47-k)+2k=270$.
**Step 2:** Expand: $282-6k+2k=270$ → $282+-4k=270$.
**Step 3:** Isolate: $-4k=-12$ → $k=3$.
**Step 4:** Verify by substituting $k=3$ back.

**Distractor analysis:**
- **A** ($1$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($4$): Too large; re-check the linear equation in $k$.
- **D** ($47$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.626Z","skill":"LIN","insert_index":2}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e569e617-ef4e-4e5a-8340-6b1c9ec89887', 'For what value of $k$ does $7(x-4)+2k = 316$ have solution $x=48$?', 'A calibration device applies scale factor 7, then adds a correction term involving parameter $k$.', NULL, '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=48$. **Step 2:** Solve for $k=4$."},{"id":"C","text":"$5$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$48$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1:** Substitute $x=48$: $7(48-k)+2k=316$.
**Step 2:** Expand: $336-7k+2k=316$ → $336+-5k=316$.
**Step 3:** Isolate: $-5k=-20$ → $k=4$.
**Step 4:** Verify by substituting $k=4$ back.

**Distractor analysis:**
- **A** ($2$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($5$): Too large; re-check the linear equation in $k$.
- **D** ($48$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.626Z","skill":"LIN","insert_index":3}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b1644e98-2538-40cc-bb61-45a32970e781', 'For what value of $k$ does $8(x-5)+2k = 362$ have solution $x=49$?', 'A calibration device applies scale factor 8, then adds a correction term involving parameter $k$.', NULL, '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$5$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=49$. **Step 2:** Solve for $k=5$."},{"id":"C","text":"$6$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$49$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1:** Substitute $x=49$: $8(49-k)+2k=362$.
**Step 2:** Expand: $392-8k+2k=362$ → $392+-6k=362$.
**Step 3:** Isolate: $-6k=-30$ → $k=5$.
**Step 4:** Verify by substituting $k=5$ back.

**Distractor analysis:**
- **A** ($3$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($6$): Too large; re-check the linear equation in $k$.
- **D** ($49$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.626Z","skill":"LIN","insert_index":4}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2ee009e5-b5e0-4ef9-ae9e-13516684894c', 'For what value of $k$ does $4(x-6)+2k = 188$ have solution $x=50$?', 'A calibration device applies scale factor 4, then adds a correction term involving parameter $k$.', NULL, '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$6$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=50$. **Step 2:** Solve for $k=6$."},{"id":"C","text":"$7$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$50$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1:** Substitute $x=50$: $4(50-k)+2k=188$.
**Step 2:** Expand: $200-4k+2k=188$ → $200+-2k=188$.
**Step 3:** Isolate: $-2k=-12$ → $k=6$.
**Step 4:** Verify by substituting $k=6$ back.

**Distractor analysis:**
- **A** ($4$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($7$): Too large; re-check the linear equation in $k$.
- **D** ($50$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.626Z","skill":"LIN","insert_index":5}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2317dea6-0b1e-4335-ae97-799bed5aa229', 'For what value of $k$ does $5(x-7)+2k = 234$ have solution $x=51$?', 'A calibration device applies scale factor 5, then adds a correction term involving parameter $k$.', NULL, '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$7$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=51$. **Step 2:** Solve for $k=7$."},{"id":"C","text":"$8$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$51$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1:** Substitute $x=51$: $5(51-k)+2k=234$.
**Step 2:** Expand: $255-5k+2k=234$ → $255+-3k=234$.
**Step 3:** Isolate: $-3k=-21$ → $k=7$.
**Step 4:** Verify by substituting $k=7$ back.

**Distractor analysis:**
- **A** ($5$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($8$): Too large; re-check the linear equation in $k$.
- **D** ($51$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.626Z","skill":"LIN","insert_index":6}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ef4a4803-f102-4790-8d1d-be854dbd5010', 'For what value of $k$ does $6(x-8)+2k = 280$ have solution $x=52$?', 'A calibration device applies scale factor 6, then adds a correction term involving parameter $k$.', NULL, '[{"id":"A","text":"$6$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$8$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=52$. **Step 2:** Solve for $k=8$."},{"id":"C","text":"$9$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$52$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1:** Substitute $x=52$: $6(52-k)+2k=280$.
**Step 2:** Expand: $312-6k+2k=280$ → $312+-4k=280$.
**Step 3:** Isolate: $-4k=-32$ → $k=8$.
**Step 4:** Verify by substituting $k=8$ back.

**Distractor analysis:**
- **A** ($6$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($9$): Too large; re-check the linear equation in $k$.
- **D** ($52$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.626Z","skill":"LIN","insert_index":7}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1b316888-ceca-45a2-86a9-8020a6babfaf', 'Linear function $f$ models temperature. $f(51)=45$ and $f(57)=63$. What is $f(-53)$?', NULL, NULL, '[{"id":"A","text":"$-264$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-271$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-267$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-53)=-267$."}]'::jsonb, 'D', '**Step 1:** Slope $m=\frac{63-45}{57-51}=3$.
**Step 2:** Point-slope: $f(-53)=3(-53-51)+(45)$.
**Step 3:** $f(-53)=-267$.
**Step 4:** Verify with second point.

**Distractor analysis:**
- **A** ($-264$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-271$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.626Z","skill":"LIF","insert_index":8}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('14075694-bcc6-4b5f-8970-3ba678896ef6', 'Linear function $f$ models temperature. $f(52)=46$ and $f(58)=70$. What is $f(-54)$?', NULL, NULL, '[{"id":"A","text":"$-374$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-382$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-378$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=4$. **Step 2:** $f(-54)=-378$."}]'::jsonb, 'D', '**Step 1:** Slope $m=\frac{70-46}{58-52}=4$.
**Step 2:** Point-slope: $f(-54)=4(-54-52)+(46)$.
**Step 3:** $f(-54)=-378$.
**Step 4:** Verify with second point.

**Distractor analysis:**
- **A** ($-374$): Adds slope once too many after point-slope setup.
- **B** ($4$): That is the rate of change, not $f(${x3})$.
- **C** ($-382$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.626Z","skill":"LIF","insert_index":9}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5c8c6827-3beb-487b-9c49-76cdaa46fca4', 'Linear function $f$ models temperature. $f(53)=47$ and $f(59)=77$. What is $f(-55)$?', NULL, NULL, '[{"id":"A","text":"$-488$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-497$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-493$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-55)=-493$."}]'::jsonb, 'D', '**Step 1:** Slope $m=\frac{77-47}{59-53}=5$.
**Step 2:** Point-slope: $f(-55)=5(-55-53)+(47)$.
**Step 3:** $f(-55)=-493$.
**Step 4:** Verify with second point.

**Distractor analysis:**
- **A** ($-488$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-497$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.626Z","skill":"LIF","insert_index":10}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('97509d28-d3a6-42e2-94e0-6031f0020fc3', 'Linear function $f$ models temperature. $f(54)=48$ and $f(60)=66$. What is $f(-56)$?', NULL, NULL, '[{"id":"A","text":"$-279$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-286$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-282$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-56)=-282$."}]'::jsonb, 'D', '**Step 1:** Slope $m=\frac{66-48}{60-54}=3$.
**Step 2:** Point-slope: $f(-56)=3(-56-54)+(48)$.
**Step 3:** $f(-56)=-282$.
**Step 4:** Verify with second point.

**Distractor analysis:**
- **A** ($-279$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-286$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.626Z","skill":"LIF","insert_index":11}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e7ed08d2-01f9-401a-9f59-26faa860fbdc', 'Linear function $f$ models temperature. $f(55)=49$ and $f(61)=73$. What is $f(-57)$?', NULL, NULL, '[{"id":"A","text":"$-395$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-403$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-399$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=4$. **Step 2:** $f(-57)=-399$."}]'::jsonb, 'D', '**Step 1:** Slope $m=\frac{73-49}{61-55}=4$.
**Step 2:** Point-slope: $f(-57)=4(-57-55)+(49)$.
**Step 3:** $f(-57)=-399$.
**Step 4:** Verify with second point.

**Distractor analysis:**
- **A** ($-395$): Adds slope once too many after point-slope setup.
- **B** ($4$): That is the rate of change, not $f(${x3})$.
- **C** ($-403$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.626Z","skill":"LIF","insert_index":12}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('db70d6a2-446f-4932-b51c-23ab7c303c37', 'Linear function $f$ models temperature. $f(56)=50$ and $f(62)=80$. What is $f(-58)$?', NULL, NULL, '[{"id":"A","text":"$-515$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-524$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-520$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-58)=-520$."}]'::jsonb, 'D', '**Step 1:** Slope $m=\frac{80-50}{62-56}=5$.
**Step 2:** Point-slope: $f(-58)=5(-58-56)+(50)$.
**Step 3:** $f(-58)=-520$.
**Step 4:** Verify with second point.

**Distractor analysis:**
- **A** ($-515$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-524$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.626Z","skill":"LIF","insert_index":13}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('752b3e83-767c-473c-b2ba-f384ac8590df', 'Linear function $f$ models temperature. $f(57)=51$ and $f(63)=69$. What is $f(-59)$?', NULL, NULL, '[{"id":"A","text":"$-294$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-301$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-297$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-59)=-297$."}]'::jsonb, 'D', '**Step 1:** Slope $m=\frac{69-51}{63-57}=3$.
**Step 2:** Point-slope: $f(-59)=3(-59-57)+(51)$.
**Step 3:** $f(-59)=-297$.
**Step 4:** Verify with second point.

**Distractor analysis:**
- **A** ($-294$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-301$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.626Z","skill":"LIF","insert_index":14}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f07ad8d4-e62a-4517-8f2b-0e8f13bc1681', 'Linear function $f$ models temperature. $f(58)=52$ and $f(64)=76$. What is $f(-60)$?', NULL, NULL, '[{"id":"A","text":"$-416$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-424$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-420$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=4$. **Step 2:** $f(-60)=-420$."}]'::jsonb, 'D', '**Step 1:** Slope $m=\frac{76-52}{64-58}=4$.
**Step 2:** Point-slope: $f(-60)=4(-60-58)+(52)$.
**Step 3:** $f(-60)=-420$.
**Step 4:** Verify with second point.

**Distractor analysis:**
- **A** ($-416$): Adds slope once too many after point-slope setup.
- **B** ($4$): That is the rate of change, not $f(${x3})$.
- **C** ($-424$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.626Z","skill":"LIF","insert_index":15}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('eac36b9b-5cf7-49f0-9ed8-494f596582cc', 'If the vehicle continues at the same rate, what is $d$ when $t=68$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=3t+58$. At $t=60$, $d=238$.', NULL, '[{"id":"A","text":"$259$","is_correct":false,"explanation":"Choice A ($259$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$241$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=68$."},{"id":"C","text":"$262$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(68)+58$. **Step 2:** $d=262$."},{"id":"D","text":"$204$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1:** Rate is $3$ mi/h with intercept $58$.
**Step 2:** $d=3(68)+58=262$.
**Step 3:** Cross-check via $(68-60)×3+238=262$.

**Distractor analysis:**
- **A** ($259$): Choice A ($259$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($241$): Adds slope once instead of evaluating at $t=68$.
- **D** ($204$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.626Z","skill":"LEQ","insert_index":16}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ba33e465-4041-4f6d-bd9e-088d1c3f3824', 'If the vehicle continues at the same rate, what is $d$ when $t=69$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=4t+59$. At $t=61$, $d=303$.', NULL, '[{"id":"A","text":"$331$","is_correct":false,"explanation":"Choice A ($331$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$307$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=69$."},{"id":"C","text":"$335$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=4(69)+59$. **Step 2:** $d=335$."},{"id":"D","text":"$276$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1:** Rate is $4$ mi/h with intercept $59$.
**Step 2:** $d=4(69)+59=335$.
**Step 3:** Cross-check via $(69-61)×4+303=335$.

**Distractor analysis:**
- **A** ($331$): Choice A ($331$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($307$): Adds slope once instead of evaluating at $t=69$.
- **D** ($276$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.626Z","skill":"LEQ","insert_index":17}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('42f204c6-65b4-4f3f-94dd-e3b0b9590e56', 'If the vehicle continues at the same rate, what is $d$ when $t=70$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=5t+60$. At $t=62$, $d=370$.', NULL, '[{"id":"A","text":"$405$","is_correct":false,"explanation":"Choice A ($405$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$375$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=70$."},{"id":"C","text":"$410$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(70)+60$. **Step 2:** $d=410$."},{"id":"D","text":"$350$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1:** Rate is $5$ mi/h with intercept $60$.
**Step 2:** $d=5(70)+60=410$.
**Step 3:** Cross-check via $(70-62)×5+370=410$.

**Distractor analysis:**
- **A** ($405$): Choice A ($405$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($375$): Adds slope once instead of evaluating at $t=70$.
- **D** ($350$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.626Z","skill":"LEQ","insert_index":18}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c0729e05-e3ff-4058-bebf-045444498c6e', 'If the vehicle continues at the same rate, what is $d$ when $t=71$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=6t+61$. At $t=63$, $d=439$.', NULL, '[{"id":"A","text":"$481$","is_correct":false,"explanation":"Choice A ($481$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$445$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=71$."},{"id":"C","text":"$487$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=6(71)+61$. **Step 2:** $d=487$."},{"id":"D","text":"$426$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1:** Rate is $6$ mi/h with intercept $61$.
**Step 2:** $d=6(71)+61=487$.
**Step 3:** Cross-check via $(71-63)×6+439=487$.

**Distractor analysis:**
- **A** ($481$): Choice A ($481$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($445$): Adds slope once instead of evaluating at $t=71$.
- **D** ($426$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.626Z","skill":"LEQ","insert_index":19}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('59a47dcb-f5ca-4cb0-873a-be636c311bb0', 'If the vehicle continues at the same rate, what is $d$ when $t=12$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=3t+2$. At $t=4$, $d=14$.', NULL, '[{"id":"A","text":"$35$","is_correct":false,"explanation":"Choice A ($35$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$17$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=12$."},{"id":"C","text":"$38$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(12)+2$. **Step 2:** $d=38$."},{"id":"D","text":"$36$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1:** Rate is $3$ mi/h with intercept $2$.
**Step 2:** $d=3(12)+2=38$.
**Step 3:** Cross-check via $(12-4)×3+14=38$.

**Distractor analysis:**
- **A** ($35$): Choice A ($35$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($17$): Adds slope once instead of evaluating at $t=12$.
- **D** ($36$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.626Z","skill":"LEQ","insert_index":20}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('50b28121-edd7-400b-b90f-90f7817b59bf', 'If the vehicle continues at the same rate, what is $d$ when $t=13$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=4t+3$. At $t=5$, $d=23$.', NULL, '[{"id":"A","text":"$51$","is_correct":false,"explanation":"Choice A ($51$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$27$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=13$."},{"id":"C","text":"$55$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=4(13)+3$. **Step 2:** $d=55$."},{"id":"D","text":"$52$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1:** Rate is $4$ mi/h with intercept $3$.
**Step 2:** $d=4(13)+3=55$.
**Step 3:** Cross-check via $(13-5)×4+23=55$.

**Distractor analysis:**
- **A** ($51$): Choice A ($51$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($27$): Adds slope once instead of evaluating at $t=13$.
- **D** ($52$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.626Z","skill":"LEQ","insert_index":21}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('af30238e-d7b6-4e03-9047-db55c3878ea7', 'If the vehicle continues at the same rate, what is $d$ when $t=14$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=5t+4$. At $t=6$, $d=34$.', NULL, '[{"id":"A","text":"$69$","is_correct":false,"explanation":"Choice A ($69$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$39$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=14$."},{"id":"C","text":"$74$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(14)+4$. **Step 2:** $d=74$."},{"id":"D","text":"$70$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1:** Rate is $5$ mi/h with intercept $4$.
**Step 2:** $d=5(14)+4=74$.
**Step 3:** Cross-check via $(14-6)×5+34=74$.

**Distractor analysis:**
- **A** ($69$): Choice A ($69$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($39$): Adds slope once instead of evaluating at $t=14$.
- **D** ($70$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.626Z","skill":"LEQ","insert_index":22}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c897f985-d3f5-4d3d-9ec6-12b96fbfde4e', 'If the vehicle continues at the same rate, what is $d$ when $t=15$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=6t+5$. At $t=7$, $d=47$.', NULL, '[{"id":"A","text":"$89$","is_correct":false,"explanation":"Choice A ($89$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$53$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=15$."},{"id":"C","text":"$95$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=6(15)+5$. **Step 2:** $d=95$."},{"id":"D","text":"$90$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1:** Rate is $6$ mi/h with intercept $5$.
**Step 2:** $d=6(15)+5=95$.
**Step 3:** Cross-check via $(15-7)×6+47=95$.

**Distractor analysis:**
- **A** ($89$): Choice A ($89$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($53$): Adds slope once instead of evaluating at $t=15$.
- **D** ($90$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"LEQ","insert_index":23}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('934cac3b-21d3-43fe-be27-a2ede33c8499', 'Given $x+y=20$ and $3x-y=19$, what is $x$?', 'At an event, 20 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=19$.', NULL, '[{"id":"A","text":"$13$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=52$. **Step 2:** $x=13$."},{"id":"B","text":"$12$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$7$","is_correct":false,"explanation":"Choice C ($7$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$14$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1:** Add: $(x+y)+(3x-y)=20+19$ → $4x=52$.
**Step 2:** $x=13$.
**Step 3:** Back-substitute: $y=7$.
**Step 4:** Verify both equations.

**Distractor analysis:**
- **B** ($12$): One less than the solution.
- **C** ($7$): Choice C ($7$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($14$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"SYS","insert_index":24}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0bf0247f-9d7c-435a-b6b3-cb5388828af0', 'Given $x+y=22$ and $4x-y=20$, what is $x$?', 'At an event, 22 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=20$.', NULL, '[{"id":"A","text":"$14$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=70$. **Step 2:** $x=14$."},{"id":"B","text":"$13$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$8$","is_correct":false,"explanation":"Choice C ($8$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$15$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1:** Add: $(x+y)+(4x-y)=22+20$ → $5x=70$.
**Step 2:** $x=14$.
**Step 3:** Back-substitute: $y=8$.
**Step 4:** Verify both equations.

**Distractor analysis:**
- **B** ($13$): One less than the solution.
- **C** ($8$): Choice C ($8$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($15$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"SYS","insert_index":25}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('314b7f69-a217-418c-ae83-c10fe1d3c8d5', 'Given $x+y=24$ and $3x-y=21$, what is $x$?', 'At an event, 24 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=21$.', NULL, '[{"id":"A","text":"$15$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=60$. **Step 2:** $x=15$."},{"id":"B","text":"$14$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$9$","is_correct":false,"explanation":"Choice C ($9$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$16$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1:** Add: $(x+y)+(3x-y)=24+21$ → $4x=60$.
**Step 2:** $x=15$.
**Step 3:** Back-substitute: $y=9$.
**Step 4:** Verify both equations.

**Distractor analysis:**
- **B** ($14$): One less than the solution.
- **C** ($9$): Choice C ($9$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($16$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"SYS","insert_index":26}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e1745c7c-8f27-4ae5-98df-2eb17c3fb4e8', 'Given $x+y=26$ and $4x-y=22$, what is $x$?', 'At an event, 26 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=22$.', NULL, '[{"id":"A","text":"$16$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=80$. **Step 2:** $x=16$."},{"id":"B","text":"$15$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$10$","is_correct":false,"explanation":"Choice C ($10$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$17$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1:** Add: $(x+y)+(4x-y)=26+22$ → $5x=80$.
**Step 2:** $x=16$.
**Step 3:** Back-substitute: $y=10$.
**Step 4:** Verify both equations.

**Distractor analysis:**
- **B** ($15$): One less than the solution.
- **C** ($10$): Choice C ($10$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($17$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"SYS","insert_index":27}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cdaa3cb5-626c-4889-969c-1cd0e8804f5b', 'Given $x+y=28$ and $3x-y=23$, what is $x$?', 'At an event, 28 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=23$.', NULL, '[{"id":"A","text":"$17$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=68$. **Step 2:** $x=17$."},{"id":"B","text":"$16$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$11$","is_correct":false,"explanation":"Choice C ($11$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$18$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1:** Add: $(x+y)+(3x-y)=28+23$ → $4x=68$.
**Step 2:** $x=17$.
**Step 3:** Back-substitute: $y=11$.
**Step 4:** Verify both equations.

**Distractor analysis:**
- **B** ($16$): One less than the solution.
- **C** ($11$): Choice C ($11$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($18$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"SYS","insert_index":28}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f279efa1-dffd-4f1e-aef1-0d1fa9f29cbe', 'Given $x+y=30$ and $4x-y=24$, what is $x$?', 'At an event, 30 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=24$.', NULL, '[{"id":"A","text":"$18$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=90$. **Step 2:** $x=18$."},{"id":"B","text":"$17$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$12$","is_correct":false,"explanation":"Choice C ($12$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$19$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1:** Add: $(x+y)+(4x-y)=30+24$ → $5x=90$.
**Step 2:** $x=18$.
**Step 3:** Back-substitute: $y=12$.
**Step 4:** Verify both equations.

**Distractor analysis:**
- **B** ($17$): One less than the solution.
- **C** ($12$): Choice C ($12$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($19$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"SYS","insert_index":29}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('72537a16-3eb9-47e0-b677-59805cd185ec', 'Given $x+y=32$ and $3x-y=25$, what is $x$?', 'At an event, 32 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=25$.', NULL, '[{"id":"A","text":"$19$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=76$. **Step 2:** $x=19$."},{"id":"B","text":"$18$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$13$","is_correct":false,"explanation":"Choice C ($13$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$20$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1:** Add: $(x+y)+(3x-y)=32+25$ → $4x=76$.
**Step 2:** $x=19$.
**Step 3:** Back-substitute: $y=13$.
**Step 4:** Verify both equations.

**Distractor analysis:**
- **B** ($18$): One less than the solution.
- **C** ($13$): Choice C ($13$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($20$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"SYS","insert_index":30}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e2900bd6-9b26-4bd4-88e6-d93ae1623178', 'Given $x+y=34$ and $4x-y=26$, what is $x$?', 'At an event, 34 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=26$.', NULL, '[{"id":"A","text":"$20$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=100$. **Step 2:** $x=20$."},{"id":"B","text":"$19$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$14$","is_correct":false,"explanation":"Choice C ($14$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$21$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1:** Add: $(x+y)+(4x-y)=34+26$ → $5x=100$.
**Step 2:** $x=20$.
**Step 3:** Back-substitute: $y=14$.
**Step 4:** Verify both equations.

**Distractor analysis:**
- **B** ($19$): One less than the solution.
- **C** ($14$): Choice C ($14$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($21$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"SYS","insert_index":31}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('86c0a026-197f-41b9-9e27-f9bbd92fc53d', 'Which integer value of $x$ satisfies $3x + 5 > 70$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 70 but stay at most 86 to trigger an alert.', NULL, '[{"id":"A","text":"$20$","is_correct":false,"explanation":"Choice A ($20$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$21$","is_correct":false,"explanation":"Choice B ($21$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$22$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$23$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 21.67$. **Step 2:** Smallest integer: 23."}]'::jsonb, 'D', '**Step 1:** $3x > 65$.
**Step 2:** $x > 21.67$.
**Step 3:** Among choices, $23$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Distractor analysis:**
- **A** ($20$): Choice A ($20$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($21$): Choice B ($21$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($22$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"INE","insert_index":32}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('36181860-7e83-458c-bdf3-1b148c494867', 'Which integer value of $x$ satisfies $4x + 6 > 98$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 98 but stay at most 114 to trigger an alert.', NULL, '[{"id":"A","text":"$21$","is_correct":false,"explanation":"Choice A ($21$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$22$","is_correct":false,"explanation":"Choice B ($22$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$23$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$24$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 23.00$. **Step 2:** Smallest integer: 24."}]'::jsonb, 'D', '**Step 1:** $4x > 92$.
**Step 2:** $x > 23.00$.
**Step 3:** Among choices, $24$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Distractor analysis:**
- **A** ($21$): Choice A ($21$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($22$): Choice B ($22$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($23$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"INE","insert_index":33}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b19723fb-9fef-4524-ab14-7dfa162e1b73', 'Which integer value of $x$ satisfies $5x + 7 > 128$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 128 but stay at most 144 to trigger an alert.', NULL, '[{"id":"A","text":"$22$","is_correct":false,"explanation":"Choice A ($22$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$23$","is_correct":false,"explanation":"Choice B ($23$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$24$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$25$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 24.20$. **Step 2:** Smallest integer: 25."}]'::jsonb, 'D', '**Step 1:** $5x > 121$.
**Step 2:** $x > 24.20$.
**Step 3:** Among choices, $25$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Distractor analysis:**
- **A** ($22$): Choice A ($22$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($23$): Choice B ($23$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($24$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"INE","insert_index":34}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8f7c8c7f-8c32-4c33-ac11-29c5f3300ba8', 'Which integer value of $x$ satisfies $6x + 8 > 160$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 160 but stay at most 176 to trigger an alert.', NULL, '[{"id":"A","text":"$23$","is_correct":false,"explanation":"Choice A ($23$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$24$","is_correct":false,"explanation":"Choice B ($24$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$25$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$26$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 25.33$. **Step 2:** Smallest integer: 26."}]'::jsonb, 'D', '**Step 1:** $6x > 152$.
**Step 2:** $x > 25.33$.
**Step 3:** Among choices, $26$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Distractor analysis:**
- **A** ($23$): Choice A ($23$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($24$): Choice B ($24$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($25$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"INE","insert_index":35}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b865e04c-8425-4558-b7fe-c3c5b8248134', 'Which integer value of $x$ satisfies $3x + 9 > 86$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 86 but stay at most 102 to trigger an alert.', NULL, '[{"id":"A","text":"$24$","is_correct":false,"explanation":"Choice A ($24$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$25$","is_correct":false,"explanation":"Choice B ($25$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$26$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$27$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 25.67$. **Step 2:** Smallest integer: 27."}]'::jsonb, 'D', '**Step 1:** $3x > 77$.
**Step 2:** $x > 25.67$.
**Step 3:** Among choices, $27$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Distractor analysis:**
- **A** ($24$): Choice A ($24$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($25$): Choice B ($25$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($26$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"INE","insert_index":36}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b2ad1586-51ab-453f-8dfc-4125c3c330f3', 'Which integer value of $x$ satisfies $4x + 10 > 118$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 118 but stay at most 134 to trigger an alert.', NULL, '[{"id":"A","text":"$25$","is_correct":false,"explanation":"Too small: $4(25)+10=110$."},{"id":"B","text":"$26$","is_correct":false,"explanation":"Choice B ($26$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$27$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$28$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 27.00$. **Step 2:** Smallest integer: 28."}]'::jsonb, 'D', '**Step 1:** $4x > 108$.
**Step 2:** $x > 27.00$.
**Step 3:** Among choices, $28$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Distractor analysis:**
- **A** ($25$): Too small: $4(25)+10=110$.
- **B** ($26$): Choice B ($26$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($27$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"INE","insert_index":37}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ba1d7ef8-c63c-4bf7-b6b5-4c751c5b1828', 'Which integer value of $x$ satisfies $5x + 5 > 146$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 146 but stay at most 162 to trigger an alert.', NULL, '[{"id":"A","text":"$26$","is_correct":false,"explanation":"Choice A ($26$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$27$","is_correct":false,"explanation":"Choice B ($27$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$28$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$29$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 28.20$. **Step 2:** Smallest integer: 29."}]'::jsonb, 'D', '**Step 1:** $5x > 141$.
**Step 2:** $x > 28.20$.
**Step 3:** Among choices, $29$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Distractor analysis:**
- **A** ($26$): Choice A ($26$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($27$): Choice B ($27$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($28$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"INE","insert_index":38}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('93248789-8f21-4607-a5d7-e55149aaf902', 'Which integer value of $x$ satisfies $6x + 6 > 182$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 182 but stay at most 198 to trigger an alert.', NULL, '[{"id":"A","text":"$27$","is_correct":false,"explanation":"Choice A ($27$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$28$","is_correct":false,"explanation":"Choice B ($28$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$29$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$30$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 29.33$. **Step 2:** Smallest integer: 30."}]'::jsonb, 'D', '**Step 1:** $6x > 176$.
**Step 2:** $x > 29.33$.
**Step 3:** Among choices, $30$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Distractor analysis:**
- **A** ($27$): Choice A ($27$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($28$): Choice B ($28$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($29$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"INE","insert_index":39}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e447b6d6-903d-4ba5-8b31-f0c9cc4f1c3e', 'What is the average rate of change of $h$ from $t=19$ to $t=26$?', 'Projectile height $h(t)=4(t-22)^2+24$ (feet, $t$ in seconds).', NULL, '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(19)=60$, $h(26)=88$. **Step 2:** $\\frac{88-60}{26-19}=4$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$88$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1:** $h(19)=4(19-22)^2+24=60$.
**Step 2:** $h(26)=4(26-22)^2+24=88$.
**Step 3:** Avg rate $=\frac{88-60}{26-19}=4$ ft/s.

**Distractor analysis:**
- **A** ($2$): Off by 2 ft/s from correct difference quotient.
- **C** ($4$): That is the leading coefficient, not average rate.
- **D** ($88$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"NRM","insert_index":40}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('95c2a360-456f-4de1-991b-d536ddf14887', 'What is the average rate of change of $h$ from $t=20$ to $t=27$?', 'Projectile height $h(t)=2(t-23)^2+25$ (feet, $t$ in seconds).', NULL, '[{"id":"A","text":"$0$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$2$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(20)=43$, $h(27)=57$. **Step 2:** $\\frac{57-43}{27-20}=2$."},{"id":"C","text":"$2$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$57$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1:** $h(20)=2(20-23)^2+25=43$.
**Step 2:** $h(27)=2(27-23)^2+25=57$.
**Step 3:** Avg rate $=\frac{57-43}{27-20}=2$ ft/s.

**Distractor analysis:**
- **A** ($0$): Off by 2 ft/s from correct difference quotient.
- **C** ($2$): That is the leading coefficient, not average rate.
- **D** ($57$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"NRM","insert_index":41}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9ee26897-b0a2-4c91-b237-5effb3ca474a', 'What is the average rate of change of $h$ from $t=21$ to $t=28$?', 'Projectile height $h(t)=3(t-24)^2+26$ (feet, $t$ in seconds).', NULL, '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(21)=53$, $h(28)=74$. **Step 2:** $\\frac{74-53}{28-21}=3$."},{"id":"C","text":"$3$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$74$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1:** $h(21)=3(21-24)^2+26=53$.
**Step 2:** $h(28)=3(28-24)^2+26=74$.
**Step 3:** Avg rate $=\frac{74-53}{28-21}=3$ ft/s.

**Distractor analysis:**
- **A** ($1$): Off by 2 ft/s from correct difference quotient.
- **C** ($3$): That is the leading coefficient, not average rate.
- **D** ($74$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"NRM","insert_index":42}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0f3933a8-a909-4131-adf0-31c24041e548', 'What is the average rate of change of $h$ from $t=22$ to $t=29$?', 'Projectile height $h(t)=4(t-25)^2+27$ (feet, $t$ in seconds).', NULL, '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(22)=63$, $h(29)=91$. **Step 2:** $\\frac{91-63}{29-22}=4$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$91$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1:** $h(22)=4(22-25)^2+27=63$.
**Step 2:** $h(29)=4(29-25)^2+27=91$.
**Step 3:** Avg rate $=\frac{91-63}{29-22}=4$ ft/s.

**Distractor analysis:**
- **A** ($2$): Off by 2 ft/s from correct difference quotient.
- **C** ($4$): That is the leading coefficient, not average rate.
- **D** ($91$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"NRM","insert_index":43}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('28a0db94-5cad-46d3-b9aa-7fdcf9ffddcd', 'What is the average rate of change of $h$ from $t=23$ to $t=30$?', 'Projectile height $h(t)=2(t-26)^2+28$ (feet, $t$ in seconds).', NULL, '[{"id":"A","text":"$0$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$2$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(23)=46$, $h(30)=60$. **Step 2:** $\\frac{60-46}{30-23}=2$."},{"id":"C","text":"$2$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$60$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1:** $h(23)=2(23-26)^2+28=46$.
**Step 2:** $h(30)=2(30-26)^2+28=60$.
**Step 3:** Avg rate $=\frac{60-46}{30-23}=2$ ft/s.

**Distractor analysis:**
- **A** ($0$): Off by 2 ft/s from correct difference quotient.
- **C** ($2$): That is the leading coefficient, not average rate.
- **D** ($60$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"NRM","insert_index":44}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('992e9669-7f85-411c-b7ad-4789ce463d09', 'What is the average rate of change of $h$ from $t=24$ to $t=31$?', 'Projectile height $h(t)=3(t-27)^2+29$ (feet, $t$ in seconds).', NULL, '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(24)=56$, $h(31)=77$. **Step 2:** $\\frac{77-56}{31-24}=3$."},{"id":"C","text":"$3$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$77$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1:** $h(24)=3(24-27)^2+29=56$.
**Step 2:** $h(31)=3(31-27)^2+29=77$.
**Step 3:** Avg rate $=\frac{77-56}{31-24}=3$ ft/s.

**Distractor analysis:**
- **A** ($1$): Off by 2 ft/s from correct difference quotient.
- **C** ($3$): That is the leading coefficient, not average rate.
- **D** ($77$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"NRM","insert_index":45}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f3ac8ce0-9a4d-41b8-b2c2-a62ce48822c6', 'What is the average rate of change of $h$ from $t=25$ to $t=32$?', 'Projectile height $h(t)=4(t-28)^2+30$ (feet, $t$ in seconds).', NULL, '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(25)=66$, $h(32)=94$. **Step 2:** $\\frac{94-66}{32-25}=4$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$94$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1:** $h(25)=4(25-28)^2+30=66$.
**Step 2:** $h(32)=4(32-28)^2+30=94$.
**Step 3:** Avg rate $=\frac{94-66}{32-25}=4$ ft/s.

**Distractor analysis:**
- **A** ($2$): Off by 2 ft/s from correct difference quotient.
- **C** ($4$): That is the leading coefficient, not average rate.
- **D** ($94$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"NRM","insert_index":46}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('31f85135-7514-463c-95c4-28fffad0f116', 'What is the average rate of change of $h$ from $t=26$ to $t=33$?', 'Projectile height $h(t)=2(t-29)^2+31$ (feet, $t$ in seconds).', NULL, '[{"id":"A","text":"$0$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$2$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(26)=49$, $h(33)=63$. **Step 2:** $\\frac{63-49}{33-26}=2$."},{"id":"C","text":"$2$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$63$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1:** $h(26)=2(26-29)^2+31=49$.
**Step 2:** $h(33)=2(33-29)^2+31=63$.
**Step 3:** Avg rate $=\frac{63-49}{33-26}=2$ ft/s.

**Distractor analysis:**
- **A** ($0$): Off by 2 ft/s from correct difference quotient.
- **C** ($2$): That is the leading coefficient, not average rate.
- **D** ($63$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"NRM","insert_index":47}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c95bc2ac-e3b0-412d-81df-288c0aaec569', 'For $x^2 - 13x + 42 = 0$, what is the positive solution? (Discriminant $=1$.)', NULL, NULL, '[{"id":"A","text":"$6$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$13$","is_correct":false,"explanation":"Choice B ($13$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$7$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-7)(x-6)=0$. **Step 2:** Positive root $7$."},{"id":"D","text":"$15$","is_correct":false,"explanation":"Choice D ($15$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1:** Factor: $(x-7)(x-6)=0$.
**Step 2:** Roots $x=7$ and $x=6$.
**Step 3:** Positive solution: $7$.
**Step 4:** Quadratic formula confirms discriminant $1$.

**Distractor analysis:**
- **A** ($6$): Not a root of the quadratic.
- **B** ($13$): Choice B ($13$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($15$): Choice D ($15$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Advanced Math', 'Nonlinear equations in one variable', 'math', 'advanced', 'NRE', 'NRE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"NRE","insert_index":48}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5afbc682-9293-415c-bb69-5538e38f118b', 'For $x^2 - 15x + 56 = 0$, what is the positive solution? (Discriminant $=1$.)', NULL, NULL, '[{"id":"A","text":"$7$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$15$","is_correct":false,"explanation":"Choice B ($15$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$8$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-8)(x-7)=0$. **Step 2:** Positive root $8$."},{"id":"D","text":"$17$","is_correct":false,"explanation":"Choice D ($17$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1:** Factor: $(x-8)(x-7)=0$.
**Step 2:** Roots $x=8$ and $x=7$.
**Step 3:** Positive solution: $8$.
**Step 4:** Quadratic formula confirms discriminant $1$.

**Distractor analysis:**
- **A** ($7$): Not a root of the quadratic.
- **B** ($15$): Choice B ($15$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($17$): Choice D ($17$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Advanced Math', 'Nonlinear equations in one variable', 'math', 'advanced', 'NRE', 'NRE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"NRE","insert_index":49}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fcd4ec47-0f8a-4280-8ee0-d7fad03523b5', 'For $x^2 - 12x + 32 = 0$, what is the positive solution? (Discriminant $=16$.)', NULL, NULL, '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$12$","is_correct":false,"explanation":"Choice B ($12$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$8$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-4)(x-8)=0$. **Step 2:** Positive root $8$."},{"id":"D","text":"$14$","is_correct":false,"explanation":"Choice D ($14$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1:** Factor: $(x-4)(x-8)=0$.
**Step 2:** Roots $x=4$ and $x=8$.
**Step 3:** Positive solution: $8$.
**Step 4:** Quadratic formula confirms discriminant $16$.

**Distractor analysis:**
- **A** ($3$): Not a root of the quadratic.
- **B** ($12$): Choice B ($12$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($14$): Choice D ($14$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Advanced Math', 'Nonlinear equations in one variable', 'math', 'advanced', 'NRE', 'NRE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"NRE","insert_index":50}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('355d3c12-fecd-441f-9f6b-d8abdea9b3c4', 'For $x^2 - 14x + 45 = 0$, what is the positive solution? (Discriminant $=16$.)', NULL, NULL, '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$14$","is_correct":false,"explanation":"Choice B ($14$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$9$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-5)(x-9)=0$. **Step 2:** Positive root $9$."},{"id":"D","text":"$16$","is_correct":false,"explanation":"Choice D ($16$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1:** Factor: $(x-5)(x-9)=0$.
**Step 2:** Roots $x=5$ and $x=9$.
**Step 3:** Positive solution: $9$.
**Step 4:** Quadratic formula confirms discriminant $16$.

**Distractor analysis:**
- **A** ($4$): Not a root of the quadratic.
- **B** ($14$): Choice B ($14$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($16$): Choice D ($16$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Advanced Math', 'Nonlinear equations in one variable', 'math', 'advanced', 'NRE', 'NRE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"NRE","insert_index":51}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5cbd50cc-403f-4c7d-981b-261083880ac0', 'For $x^2 - 12x + 36 = 0$, what is the positive solution? (Discriminant $=0$.)', NULL, NULL, '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$12$","is_correct":false,"explanation":"Choice B ($12$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$6$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-6)(x-6)=0$. **Step 2:** Positive root $6$."},{"id":"D","text":"$14$","is_correct":false,"explanation":"Choice D ($14$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1:** Factor: $(x-6)(x-6)=0$.
**Step 2:** Roots $x=6$ and $x=6$.
**Step 3:** Positive solution: $6$.
**Step 4:** Quadratic formula confirms discriminant $0$.

**Distractor analysis:**
- **A** ($5$): Not a root of the quadratic.
- **B** ($12$): Choice B ($12$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($14$): Choice D ($14$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Advanced Math', 'Nonlinear equations in one variable', 'math', 'advanced', 'NRE', 'NRE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"NRE","insert_index":52}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bd0bc172-30b7-4999-8800-78dce99f7ac4', 'For $x^2 - 14x + 49 = 0$, what is the positive solution? (Discriminant $=0$.)', NULL, NULL, '[{"id":"A","text":"$6$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$14$","is_correct":false,"explanation":"Choice B ($14$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$7$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-7)(x-7)=0$. **Step 2:** Positive root $7$."},{"id":"D","text":"$16$","is_correct":false,"explanation":"Choice D ($16$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1:** Factor: $(x-7)(x-7)=0$.
**Step 2:** Roots $x=7$ and $x=7$.
**Step 3:** Positive solution: $7$.
**Step 4:** Quadratic formula confirms discriminant $0$.

**Distractor analysis:**
- **A** ($6$): Not a root of the quadratic.
- **B** ($14$): Choice B ($14$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($16$): Choice D ($16$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Advanced Math', 'Nonlinear equations in one variable', 'math', 'advanced', 'NRE', 'NRE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"NRE","insert_index":53}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('18d47d0b-011c-4418-aa69-9e6e81ae2d16', 'For $x^2 - 16x + 64 = 0$, what is the positive solution? (Discriminant $=0$.)', NULL, NULL, '[{"id":"A","text":"$7$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$16$","is_correct":false,"explanation":"Choice B ($16$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$8$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-8)(x-8)=0$. **Step 2:** Positive root $8$."},{"id":"D","text":"$18$","is_correct":false,"explanation":"Choice D ($18$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1:** Factor: $(x-8)(x-8)=0$.
**Step 2:** Roots $x=8$ and $x=8$.
**Step 3:** Positive solution: $8$.
**Step 4:** Quadratic formula confirms discriminant $0$.

**Distractor analysis:**
- **A** ($7$): Not a root of the quadratic.
- **B** ($16$): Choice B ($16$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($18$): Choice D ($18$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Advanced Math', 'Nonlinear equations in one variable', 'math', 'advanced', 'NRE', 'NRE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"NRE","insert_index":54}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e32ff527-f67a-4937-8a6c-3b6f5d4dbcc2', 'For $x^2 - 13x + 36 = 0$, what is the positive solution? (Discriminant $=25$.)', NULL, NULL, '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$13$","is_correct":false,"explanation":"Choice B ($13$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$9$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-4)(x-9)=0$. **Step 2:** Positive root $9$."},{"id":"D","text":"$15$","is_correct":false,"explanation":"Choice D ($15$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1:** Factor: $(x-4)(x-9)=0$.
**Step 2:** Roots $x=4$ and $x=9$.
**Step 3:** Positive solution: $9$.
**Step 4:** Quadratic formula confirms discriminant $25$.

**Distractor analysis:**
- **A** ($3$): Not a root of the quadratic.
- **B** ($13$): Choice B ($13$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($15$): Choice D ($15$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Advanced Math', 'Nonlinear equations in one variable', 'math', 'advanced', 'NRE', 'NRE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"NRE","insert_index":55}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f0528a86-c601-4bc7-8300-77d4537cb4ff', 'Which expression is equivalent to $(3x+41)^2 - (3x-41)^2$?', NULL, NULL, '[{"id":"A","text":"$492x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=3x+41$, $v=3x-41$."},{"id":"B","text":"$6x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$164x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$9x^2+1681$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1:** Let $u=3x+41$, $v=3x-41$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(6x)(82)=492x$.
**Step 4:** Confirm by expanding both forms.

**Distractor analysis:**
- **B** ($6x^2$): Squares each binomial separately — wrong approach.
- **C** ($164x$): Uses $4b$ instead of $4ab$.
- **D** ($9x^2+1681$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"EQS","insert_index":56}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8fb9e4ec-24cf-4e6b-afa1-1b535402c650', 'Which expression is equivalent to $(4x+42)^2 - (4x-42)^2$?', NULL, NULL, '[{"id":"A","text":"$672x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=4x+42$, $v=4x-42$."},{"id":"B","text":"$8x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$168x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$16x^2+1764$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1:** Let $u=4x+42$, $v=4x-42$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(8x)(84)=672x$.
**Step 4:** Confirm by expanding both forms.

**Distractor analysis:**
- **B** ($8x^2$): Squares each binomial separately — wrong approach.
- **C** ($168x$): Uses $4b$ instead of $4ab$.
- **D** ($16x^2+1764$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"EQS","insert_index":57}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('804ebb66-5c91-4031-97be-1de877b925ae', 'Which expression is equivalent to $(5x+43)^2 - (5x-43)^2$?', NULL, NULL, '[{"id":"A","text":"$860x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=5x+43$, $v=5x-43$."},{"id":"B","text":"$10x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$172x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$25x^2+1849$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1:** Let $u=5x+43$, $v=5x-43$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(10x)(86)=860x$.
**Step 4:** Confirm by expanding both forms.

**Distractor analysis:**
- **B** ($10x^2$): Squares each binomial separately — wrong approach.
- **C** ($172x$): Uses $4b$ instead of $4ab$.
- **D** ($25x^2+1849$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"EQS","insert_index":58}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0aa3df1d-889c-4fa6-8912-2eb96133f629', 'Which expression is equivalent to $(3x+44)^2 - (3x-44)^2$?', NULL, NULL, '[{"id":"A","text":"$528x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=3x+44$, $v=3x-44$."},{"id":"B","text":"$6x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$176x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$9x^2+1936$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1:** Let $u=3x+44$, $v=3x-44$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(6x)(88)=528x$.
**Step 4:** Confirm by expanding both forms.

**Distractor analysis:**
- **B** ($6x^2$): Squares each binomial separately — wrong approach.
- **C** ($176x$): Uses $4b$ instead of $4ab$.
- **D** ($9x^2+1936$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"EQS","insert_index":59}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b090a112-ec26-44cc-8866-1a69ef45c155', 'Which expression is equivalent to $(4x+45)^2 - (4x-45)^2$?', NULL, NULL, '[{"id":"A","text":"$720x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=4x+45$, $v=4x-45$."},{"id":"B","text":"$8x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$180x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$16x^2+2025$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1:** Let $u=4x+45$, $v=4x-45$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(8x)(90)=720x$.
**Step 4:** Confirm by expanding both forms.

**Distractor analysis:**
- **B** ($8x^2$): Squares each binomial separately — wrong approach.
- **C** ($180x$): Uses $4b$ instead of $4ab$.
- **D** ($16x^2+2025$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"EQS","insert_index":60}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('20c695d6-3387-40cf-990e-25238aa72f4a', 'Which expression is equivalent to $(5x+46)^2 - (5x-46)^2$?', NULL, NULL, '[{"id":"A","text":"$920x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=5x+46$, $v=5x-46$."},{"id":"B","text":"$10x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$184x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$25x^2+2116$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1:** Let $u=5x+46$, $v=5x-46$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(10x)(92)=920x$.
**Step 4:** Confirm by expanding both forms.

**Distractor analysis:**
- **B** ($10x^2$): Squares each binomial separately — wrong approach.
- **C** ($184x$): Uses $4b$ instead of $4ab$.
- **D** ($25x^2+2116$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"EQS","insert_index":61}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fe98f400-d83f-44f7-bee1-f93d644b00b0', 'Which expression is equivalent to $(3x+47)^2 - (3x-47)^2$?', NULL, NULL, '[{"id":"A","text":"$564x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=3x+47$, $v=3x-47$."},{"id":"B","text":"$6x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$188x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$9x^2+2209$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1:** Let $u=3x+47$, $v=3x-47$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(6x)(94)=564x$.
**Step 4:** Confirm by expanding both forms.

**Distractor analysis:**
- **B** ($6x^2$): Squares each binomial separately — wrong approach.
- **C** ($188x$): Uses $4b$ instead of $4ab$.
- **D** ($9x^2+2209$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"EQS","insert_index":62}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c822baa7-2433-4a9c-90f9-0716ef4fdcb2', 'Which expression is equivalent to $(4x+48)^2 - (4x-48)^2$?', NULL, NULL, '[{"id":"A","text":"$768x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=4x+48$, $v=4x-48$."},{"id":"B","text":"$8x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$192x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$16x^2+2304$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1:** Let $u=4x+48$, $v=4x-48$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(8x)(96)=768x$.
**Step 4:** Confirm by expanding both forms.

**Distractor analysis:**
- **B** ($8x^2$): Squares each binomial separately — wrong approach.
- **C** ($192x$): Uses $4b$ instead of $4ab$.
- **D** ($16x^2+2304$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"EQS","insert_index":63}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0c83a203-720d-4f52-9529-8ec053c19bbe', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $4:11$ over 48 hours at 5 tasks/hour combined.', NULL, '[{"id":"A","text":"$955$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$958$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$960$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=5×48×(4+11)=3600$. **Step 2:** A''s share $\\frac{4}{15}×3600=960$."},{"id":"D","text":"$3600$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1:** Combined output $=5×48×(4+11)=3600$ tasks.
**Step 2:** A''s fraction $\frac{4}{15}$.
**Step 3:** $\frac{4}{15}×3600=960$ tasks.

**Distractor analysis:**
- **A** ($955$): Underestimates A''s share of the total.
- **B** ($958$): Close but ratio arithmetic is off.
- **D** ($3600$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"RAT","insert_index":64}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c72afbf5-a7b3-4277-8a90-14f55f05a1cf', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $5:7$ over 49 hours at 3 tasks/hour combined.', NULL, '[{"id":"A","text":"$730$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$733$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$735$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=3×49×(5+7)=1764$. **Step 2:** A''s share $\\frac{5}{12}×1764=735$."},{"id":"D","text":"$1764$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1:** Combined output $=3×49×(5+7)=1764$ tasks.
**Step 2:** A''s fraction $\frac{5}{12}$.
**Step 3:** $\frac{5}{12}×1764=735$ tasks.

**Distractor analysis:**
- **A** ($730$): Underestimates A''s share of the total.
- **B** ($733$): Close but ratio arithmetic is off.
- **D** ($1764$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"RAT","insert_index":65}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4b8295bc-ca86-415d-9878-d6b25c1b9c3d', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $6:8$ over 50 hours at 4 tasks/hour combined.', NULL, '[{"id":"A","text":"$1195$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$1198$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$1200$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=4×50×(6+8)=2800$. **Step 2:** A''s share $\\frac{6}{14}×2800=1200$."},{"id":"D","text":"$2800$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1:** Combined output $=4×50×(6+8)=2800$ tasks.
**Step 2:** A''s fraction $\frac{6}{14}$.
**Step 3:** $\frac{6}{14}×2800=1200$ tasks.

**Distractor analysis:**
- **A** ($1195$): Underestimates A''s share of the total.
- **B** ($1198$): Close but ratio arithmetic is off.
- **D** ($2800$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"RAT","insert_index":66}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5e6d5d6c-003c-4bd3-9fc3-2e443a74a758', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $7:9$ over 51 hours at 5 tasks/hour combined.', NULL, '[{"id":"A","text":"$1780$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$1783$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$1785$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=5×51×(7+9)=4080$. **Step 2:** A''s share $\\frac{7}{16}×4080=1785$."},{"id":"D","text":"$4080$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1:** Combined output $=5×51×(7+9)=4080$ tasks.
**Step 2:** A''s fraction $\frac{7}{16}$.
**Step 3:** $\frac{7}{16}×4080=1785$ tasks.

**Distractor analysis:**
- **A** ($1780$): Underestimates A''s share of the total.
- **B** ($1783$): Close but ratio arithmetic is off.
- **D** ($4080$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"RAT","insert_index":67}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('386d2a19-2c3c-4722-8903-f33a89347e9e', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $4:10$ over 52 hours at 3 tasks/hour combined.', NULL, '[{"id":"A","text":"$619$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$622$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$624$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=3×52×(4+10)=2184$. **Step 2:** A''s share $\\frac{4}{14}×2184=624$."},{"id":"D","text":"$2184$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1:** Combined output $=3×52×(4+10)=2184$ tasks.
**Step 2:** A''s fraction $\frac{4}{14}$.
**Step 3:** $\frac{4}{14}×2184=624$ tasks.

**Distractor analysis:**
- **A** ($619$): Underestimates A''s share of the total.
- **B** ($622$): Close but ratio arithmetic is off.
- **D** ($2184$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"RAT","insert_index":68}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('49b1b769-b509-403d-b10a-f2777e2c8a74', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $5:11$ over 53 hours at 4 tasks/hour combined.', NULL, '[{"id":"A","text":"$1055$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$1058$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$1060$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=4×53×(5+11)=3392$. **Step 2:** A''s share $\\frac{5}{16}×3392=1060$."},{"id":"D","text":"$3392$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1:** Combined output $=4×53×(5+11)=3392$ tasks.
**Step 2:** A''s fraction $\frac{5}{16}$.
**Step 3:** $\frac{5}{16}×3392=1060$ tasks.

**Distractor analysis:**
- **A** ($1055$): Underestimates A''s share of the total.
- **B** ($1058$): Close but ratio arithmetic is off.
- **D** ($3392$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"RAT","insert_index":69}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c5ddb747-3dc2-4f4d-9478-d38836104ac4', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $6:7$ over 54 hours at 5 tasks/hour combined.', NULL, '[{"id":"A","text":"$1615$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$1618$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$1620$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=5×54×(6+7)=3510$. **Step 2:** A''s share $\\frac{6}{13}×3510=1620$."},{"id":"D","text":"$3510$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1:** Combined output $=5×54×(6+7)=3510$ tasks.
**Step 2:** A''s fraction $\frac{6}{13}$.
**Step 3:** $\frac{6}{13}×3510=1620$ tasks.

**Distractor analysis:**
- **A** ($1615$): Underestimates A''s share of the total.
- **B** ($1618$): Close but ratio arithmetic is off.
- **D** ($3510$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"RAT","insert_index":70}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8bff56cd-e702-491c-99e3-7f6c0163b4ad', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $7:8$ over 55 hours at 3 tasks/hour combined.', NULL, '[{"id":"A","text":"$1150$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$1153$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$1155$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=3×55×(7+8)=2475$. **Step 2:** A''s share $\\frac{7}{15}×2475=1155$."},{"id":"D","text":"$2475$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1:** Combined output $=3×55×(7+8)=2475$ tasks.
**Step 2:** A''s fraction $\frac{7}{15}$.
**Step 3:** $\frac{7}{15}×2475=1155$ tasks.

**Distractor analysis:**
- **A** ($1150$): Underestimates A''s share of the total.
- **B** ($1153$): Close but ratio arithmetic is off.
- **D** ($2475$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"RAT","insert_index":71}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8fac39ba-8525-4404-bebf-b00945bb2a0b', 'If the original price is $900$, what is the final price after both changes?', 'A price is marked up 25%, then discounted 20% on the new price.', NULL, '[{"id":"A","text":"$900$","is_correct":true,"explanation":"Correct (A). **Step 1:** $900×1.25=1125$. **Step 2:** $1125×0.8=900$."},{"id":"B","text":"$900$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1125$","is_correct":false,"explanation":"Choice C ($1125$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$945$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1:** Markup: $900×(1+25/100)=1125$.
**Step 2:** Discount on new price: $1125×(1-20/100)=900$.
**Step 3:** Do not net the percents — order matters.

**Distractor analysis:**
- **B** ($900$): Ignores both percent changes.
- **C** ($1125$): Choice C ($1125$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($945$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"PER","insert_index":72}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('caf49600-70ce-4623-a5b2-8e10a24d4ad4', 'If the original price is $915$, what is the final price after both changes?', 'A price is marked up 30%, then discounted 25% on the new price.', NULL, '[{"id":"A","text":"$893$","is_correct":true,"explanation":"Correct (A). **Step 1:** $915×1.3=1190$. **Step 2:** $1190×0.75=893$."},{"id":"B","text":"$915$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1190$","is_correct":false,"explanation":"Choice C ($1190$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$961$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1:** Markup: $915×(1+30/100)=1190$.
**Step 2:** Discount on new price: $1190×(1-25/100)=893$.
**Step 3:** Do not net the percents — order matters.

**Distractor analysis:**
- **B** ($915$): Ignores both percent changes.
- **C** ($1190$): Choice C ($1190$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($961$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"PER","insert_index":73}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a48a7c6c-0c9a-42a7-99de-b4b51d674c6c', 'If the original price is $930$, what is the final price after both changes?', 'A price is marked up 35%, then discounted 15% on the new price.', NULL, '[{"id":"A","text":"$1068$","is_correct":true,"explanation":"Correct (A). **Step 1:** $930×1.35=1256$. **Step 2:** $1256×0.85=1068$."},{"id":"B","text":"$930$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1256$","is_correct":false,"explanation":"Choice C ($1256$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$1116$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1:** Markup: $930×(1+35/100)=1256$.
**Step 2:** Discount on new price: $1256×(1-15/100)=1068$.
**Step 3:** Do not net the percents — order matters.

**Distractor analysis:**
- **B** ($930$): Ignores both percent changes.
- **C** ($1256$): Choice C ($1256$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($1116$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"PER","insert_index":74}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b2f761a7-0aca-4396-b63b-021f57478d9d', 'If the original price is $945$, what is the final price after both changes?', 'A price is marked up 40%, then discounted 20% on the new price.', NULL, '[{"id":"A","text":"$1058$","is_correct":true,"explanation":"Correct (A). **Step 1:** $945×1.4=1323$. **Step 2:** $1323×0.8=1058$."},{"id":"B","text":"$945$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1323$","is_correct":false,"explanation":"Choice C ($1323$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$1134$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1:** Markup: $945×(1+40/100)=1323$.
**Step 2:** Discount on new price: $1323×(1-20/100)=1058$.
**Step 3:** Do not net the percents — order matters.

**Distractor analysis:**
- **B** ($945$): Ignores both percent changes.
- **C** ($1323$): Choice C ($1323$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($1134$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"PER","insert_index":75}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('957ff73a-31da-461f-ac70-92eca66de6ad', 'If the original price is $960$, what is the final price after both changes?', 'A price is marked up 25%, then discounted 25% on the new price.', NULL, '[{"id":"A","text":"$900$","is_correct":true,"explanation":"Correct (A). **Step 1:** $960×1.25=1200$. **Step 2:** $1200×0.75=900$."},{"id":"B","text":"$960$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1200$","is_correct":false,"explanation":"Choice C ($1200$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$960$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1:** Markup: $960×(1+25/100)=1200$.
**Step 2:** Discount on new price: $1200×(1-25/100)=900$.
**Step 3:** Do not net the percents — order matters.

**Distractor analysis:**
- **B** ($960$): Ignores both percent changes.
- **C** ($1200$): Choice C ($1200$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($960$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"PER","insert_index":76}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fd403134-5636-41a3-839f-0d9c7dafa9f3', 'If the original price is $975$, what is the final price after both changes?', 'A price is marked up 30%, then discounted 15% on the new price.', NULL, '[{"id":"A","text":"$1078$","is_correct":true,"explanation":"Correct (A). **Step 1:** $975×1.3=1268$. **Step 2:** $1268×0.85=1078$."},{"id":"B","text":"$975$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1268$","is_correct":false,"explanation":"Choice C ($1268$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$1121$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1:** Markup: $975×(1+30/100)=1268$.
**Step 2:** Discount on new price: $1268×(1-15/100)=1078$.
**Step 3:** Do not net the percents — order matters.

**Distractor analysis:**
- **B** ($975$): Ignores both percent changes.
- **C** ($1268$): Choice C ($1268$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($1121$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"PER","insert_index":77}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1fe7c4d8-e6bd-4631-a67f-b52386321eb9', 'If the original price is $990$, what is the final price after both changes?', 'A price is marked up 35%, then discounted 20% on the new price.', NULL, '[{"id":"A","text":"$1070$","is_correct":true,"explanation":"Correct (A). **Step 1:** $990×1.35=1337$. **Step 2:** $1337×0.8=1070$."},{"id":"B","text":"$990$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1337$","is_correct":false,"explanation":"Choice C ($1337$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$1139$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1:** Markup: $990×(1+35/100)=1337$.
**Step 2:** Discount on new price: $1337×(1-20/100)=1070$.
**Step 3:** Do not net the percents — order matters.

**Distractor analysis:**
- **B** ($990$): Ignores both percent changes.
- **C** ($1337$): Choice C ($1337$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($1139$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"PER","insert_index":78}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('96a64a77-955e-4aed-99e3-4af0b6316669', 'If the original price is $1005$, what is the final price after both changes?', 'A price is marked up 40%, then discounted 25% on the new price.', NULL, '[{"id":"A","text":"$1055$","is_correct":true,"explanation":"Correct (A). **Step 1:** $1005×1.4=1407$. **Step 2:** $1407×0.75=1055$."},{"id":"B","text":"$1005$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1407$","is_correct":false,"explanation":"Choice C ($1407$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$1156$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1:** Markup: $1005×(1+40/100)=1407$.
**Step 2:** Discount on new price: $1407×(1-25/100)=1055$.
**Step 3:** Do not net the percents — order matters.

**Distractor analysis:**
- **B** ($1005$): Ignores both percent changes.
- **C** ($1407$): Choice C ($1407$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($1156$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"PER","insert_index":79}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('db9d1d32-1057-44ac-be11-5eb4f1d0b825', 'What is the missing score $x$?', 'Five test scores: 7, 11, 15, 19, and one score $x$ is unknown. The mean is 11.2.', NULL, '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=11.2×5=56$. **Step 2:** $x=4$."},{"id":"C","text":"$7$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$11$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1:** Total sum $=11.2×5=56$.
**Step 2:** Known sum $=52$.
**Step 3:** $x=56-52=4$.
**Step 4:** Verify mean.

**Distractor analysis:**
- **A** ($1$): Pulls the mean down too far.
- **C** ($7$): Too high for the given mean.
- **D** ($11$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"OIA","insert_index":80}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7c031c78-c1a1-4017-8310-a6678bc3e8e6', 'What is the missing score $x$?', 'Five test scores: 8, 12, 16, 20, and one score $x$ is unknown. The mean is 12.2.', NULL, '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$5$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=12.2×5=61$. **Step 2:** $x=5$."},{"id":"C","text":"$8$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$12$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1:** Total sum $=12.2×5=61$.
**Step 2:** Known sum $=56$.
**Step 3:** $x=61-56=5$.
**Step 4:** Verify mean.

**Distractor analysis:**
- **A** ($2$): Pulls the mean down too far.
- **C** ($8$): Too high for the given mean.
- **D** ($12$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"OIA","insert_index":81}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1e20ebcf-026c-47b9-b635-92c1b992d70e', 'What is the missing score $x$?', 'Five test scores: 9, 13, 17, 21, and one score $x$ is unknown. The mean is 13.2.', NULL, '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$6$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=13.2×5=66$. **Step 2:** $x=6$."},{"id":"C","text":"$9$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$13$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1:** Total sum $=13.2×5=66$.
**Step 2:** Known sum $=60$.
**Step 3:** $x=66-60=6$.
**Step 4:** Verify mean.

**Distractor analysis:**
- **A** ($3$): Pulls the mean down too far.
- **C** ($9$): Too high for the given mean.
- **D** ($13$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"OIA","insert_index":82}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c1b1d5ed-d21c-4e91-8055-c62b9f2e6bc3', 'What is the missing score $x$?', 'Five test scores: 10, 14, 18, 22, and one score $x$ is unknown. The mean is 14.2.', NULL, '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$7$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=14.2×5=71$. **Step 2:** $x=7$."},{"id":"C","text":"$10$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$14$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1:** Total sum $=14.2×5=71$.
**Step 2:** Known sum $=64$.
**Step 3:** $x=71-64=7$.
**Step 4:** Verify mean.

**Distractor analysis:**
- **A** ($4$): Pulls the mean down too far.
- **C** ($10$): Too high for the given mean.
- **D** ($14$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"OIA","insert_index":83}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('76c83138-c662-41a4-a7d2-74f83e2d1010', 'What is the missing score $x$?', 'Five test scores: 11, 15, 19, 23, and one score $x$ is unknown. The mean is 15.2.', NULL, '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$8$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=15.2×5=76$. **Step 2:** $x=8$."},{"id":"C","text":"$11$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$15$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1:** Total sum $=15.2×5=76$.
**Step 2:** Known sum $=68$.
**Step 3:** $x=76-68=8$.
**Step 4:** Verify mean.

**Distractor analysis:**
- **A** ($5$): Pulls the mean down too far.
- **C** ($11$): Too high for the given mean.
- **D** ($15$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"OIA","insert_index":84}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d62a6df9-ac91-483c-87ce-2768a353b4fe', 'What is the missing score $x$?', 'Five test scores: 12, 16, 20, 24, and one score $x$ is unknown. The mean is 16.2.', NULL, '[{"id":"A","text":"$6$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$9$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=16.2×5=81$. **Step 2:** $x=9$."},{"id":"C","text":"$12$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$16$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1:** Total sum $=16.2×5=81$.
**Step 2:** Known sum $=72$.
**Step 3:** $x=81-72=9$.
**Step 4:** Verify mean.

**Distractor analysis:**
- **A** ($6$): Pulls the mean down too far.
- **C** ($12$): Too high for the given mean.
- **D** ($16$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"OIA","insert_index":85}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0da02dce-eeea-4f84-96c6-f30ec79abe89', 'What is the missing score $x$?', 'Five test scores: 13, 17, 21, 25, and one score $x$ is unknown. The mean is 17.2.', NULL, '[{"id":"A","text":"$7$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$10$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=17.2×5=86$. **Step 2:** $x=10$."},{"id":"C","text":"$13$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$17$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1:** Total sum $=17.2×5=86$.
**Step 2:** Known sum $=76$.
**Step 3:** $x=86-76=10$.
**Step 4:** Verify mean.

**Distractor analysis:**
- **A** ($7$): Pulls the mean down too far.
- **C** ($13$): Too high for the given mean.
- **D** ($17$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"OIA","insert_index":86}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e4dd7fda-970b-4560-9feb-cac63dc2ff9b', 'What is the missing score $x$?', 'Five test scores: 14, 18, 22, 26, and one score $x$ is unknown. The mean is 18.2.', NULL, '[{"id":"A","text":"$8$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$11$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=18.2×5=91$. **Step 2:** $x=11$."},{"id":"C","text":"$14$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$18$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1:** Total sum $=18.2×5=91$.
**Step 2:** Known sum $=80$.
**Step 3:** $x=91-80=11$.
**Step 4:** Verify mean.

**Distractor analysis:**
- **A** ($8$): Pulls the mean down too far.
- **C** ($14$): Too high for the given mean.
- **D** ($18$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"OIA","insert_index":87}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1534fbc7-b796-4cbd-a2bf-fe027068c398', 'Which equation models the line, and what does the slope represent?', 'A line models cost vs. units, passing through $(11,42)$ and $(19,74)$.', NULL, '[{"id":"A","text":"$y=4x-2$; cost increases $4$ per unit","is_correct":true,"explanation":"Correct (A). **Step 1:** Slope $=\\frac{74-42}{19-11}=4$. **Step 2:** $y=4x-2$."},{"id":"B","text":"$y=3x+-2$; cost decreases per unit","is_correct":false,"explanation":"Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$y=74$; fixed total cost","is_correct":false,"explanation":"That is a single point''s $y$-value, not the line."},{"id":"D","text":"$y=\\frac{74}{19}x$; average cost per unit from origin","is_correct":false,"explanation":"Slope from origin is not the line''s slope."}]'::jsonb, 'A', '**Step 1:** Slope $=\frac{32}{8}=4$.
**Step 2:** $y=4x-2$.
**Step 3:** Slope $4$ = dollars per additional unit.
**Step 4:** Check both points.

**Distractor analysis:**
- **B** ($y=3x+-2$; cost decreases per unit): Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($y=74$; fixed total cost): That is a single point''s $y$-value, not the line.
- **D** ($y=\frac{74}{19}x$; average cost per unit from origin): Slope from origin is not the line''s slope.', NULL, 'Problem-Solving and Data Analysis', 'Two-variable data', 'math', 'psda', 'TVA', 'TVA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"TVA","insert_index":88}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7962b051-6881-4ebc-84d4-686bbc262ef3', 'Which equation models the line, and what does the slope represent?', 'A line models cost vs. units, passing through $(12,46)$ and $(20,78)$.', NULL, '[{"id":"A","text":"$y=4x-2$; cost increases $4$ per unit","is_correct":true,"explanation":"Correct (A). **Step 1:** Slope $=\\frac{78-46}{20-12}=4$. **Step 2:** $y=4x-2$."},{"id":"B","text":"$y=3x+-2$; cost decreases per unit","is_correct":false,"explanation":"Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$y=78$; fixed total cost","is_correct":false,"explanation":"That is a single point''s $y$-value, not the line."},{"id":"D","text":"$y=\\frac{78}{20}x$; average cost per unit from origin","is_correct":false,"explanation":"Slope from origin is not the line''s slope."}]'::jsonb, 'A', '**Step 1:** Slope $=\frac{32}{8}=4$.
**Step 2:** $y=4x-2$.
**Step 3:** Slope $4$ = dollars per additional unit.
**Step 4:** Check both points.

**Distractor analysis:**
- **B** ($y=3x+-2$; cost decreases per unit): Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($y=78$; fixed total cost): That is a single point''s $y$-value, not the line.
- **D** ($y=\frac{78}{20}x$; average cost per unit from origin): Slope from origin is not the line''s slope.', NULL, 'Problem-Solving and Data Analysis', 'Two-variable data', 'math', 'psda', 'TVA', 'TVA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"TVA","insert_index":89}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e650f430-c1d2-49ed-a80a-b84037da48ad', 'Which equation models the line, and what does the slope represent?', 'A line models cost vs. units, passing through $(13,50)$ and $(21,82)$.', NULL, '[{"id":"A","text":"$y=4x-2$; cost increases $4$ per unit","is_correct":true,"explanation":"Correct (A). **Step 1:** Slope $=\\frac{82-50}{21-13}=4$. **Step 2:** $y=4x-2$."},{"id":"B","text":"$y=3x+-2$; cost decreases per unit","is_correct":false,"explanation":"Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$y=82$; fixed total cost","is_correct":false,"explanation":"That is a single point''s $y$-value, not the line."},{"id":"D","text":"$y=\\frac{82}{21}x$; average cost per unit from origin","is_correct":false,"explanation":"Slope from origin is not the line''s slope."}]'::jsonb, 'A', '**Step 1:** Slope $=\frac{32}{8}=4$.
**Step 2:** $y=4x-2$.
**Step 3:** Slope $4$ = dollars per additional unit.
**Step 4:** Check both points.

**Distractor analysis:**
- **B** ($y=3x+-2$; cost decreases per unit): Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($y=82$; fixed total cost): That is a single point''s $y$-value, not the line.
- **D** ($y=\frac{82}{21}x$; average cost per unit from origin): Slope from origin is not the line''s slope.', NULL, 'Problem-Solving and Data Analysis', 'Two-variable data', 'math', 'psda', 'TVA', 'TVA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"TVA","insert_index":90}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8f838589-095a-4b35-a3b4-560388be31de', 'Which equation models the line, and what does the slope represent?', 'A line models cost vs. units, passing through $(14,54)$ and $(22,86)$.', NULL, '[{"id":"A","text":"$y=4x-2$; cost increases $4$ per unit","is_correct":true,"explanation":"Correct (A). **Step 1:** Slope $=\\frac{86-54}{22-14}=4$. **Step 2:** $y=4x-2$."},{"id":"B","text":"$y=3x+-2$; cost decreases per unit","is_correct":false,"explanation":"Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$y=86$; fixed total cost","is_correct":false,"explanation":"That is a single point''s $y$-value, not the line."},{"id":"D","text":"$y=\\frac{86}{22}x$; average cost per unit from origin","is_correct":false,"explanation":"Slope from origin is not the line''s slope."}]'::jsonb, 'A', '**Step 1:** Slope $=\frac{32}{8}=4$.
**Step 2:** $y=4x-2$.
**Step 3:** Slope $4$ = dollars per additional unit.
**Step 4:** Check both points.

**Distractor analysis:**
- **B** ($y=3x+-2$; cost decreases per unit): Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($y=86$; fixed total cost): That is a single point''s $y$-value, not the line.
- **D** ($y=\frac{86}{22}x$; average cost per unit from origin): Slope from origin is not the line''s slope.', NULL, 'Problem-Solving and Data Analysis', 'Two-variable data', 'math', 'psda', 'TVA', 'TVA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"TVA","insert_index":91}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('995e45aa-4140-4086-bb3f-ba300e813cd3', 'Which equation models the line, and what does the slope represent?', 'A line models cost vs. units, passing through $(15,58)$ and $(23,90)$.', NULL, '[{"id":"A","text":"$y=4x-2$; cost increases $4$ per unit","is_correct":true,"explanation":"Correct (A). **Step 1:** Slope $=\\frac{90-58}{23-15}=4$. **Step 2:** $y=4x-2$."},{"id":"B","text":"$y=3x+-2$; cost decreases per unit","is_correct":false,"explanation":"Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$y=90$; fixed total cost","is_correct":false,"explanation":"That is a single point''s $y$-value, not the line."},{"id":"D","text":"$y=\\frac{90}{23}x$; average cost per unit from origin","is_correct":false,"explanation":"Slope from origin is not the line''s slope."}]'::jsonb, 'A', '**Step 1:** Slope $=\frac{32}{8}=4$.
**Step 2:** $y=4x-2$.
**Step 3:** Slope $4$ = dollars per additional unit.
**Step 4:** Check both points.

**Distractor analysis:**
- **B** ($y=3x+-2$; cost decreases per unit): Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($y=90$; fixed total cost): That is a single point''s $y$-value, not the line.
- **D** ($y=\frac{90}{23}x$; average cost per unit from origin): Slope from origin is not the line''s slope.', NULL, 'Problem-Solving and Data Analysis', 'Two-variable data', 'math', 'psda', 'TVA', 'TVA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"TVA","insert_index":92}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('38e06714-cd92-4ece-969a-e2363bd49bef', 'Which equation models the line, and what does the slope represent?', 'A line models cost vs. units, passing through $(16,62)$ and $(24,94)$.', NULL, '[{"id":"A","text":"$y=4x-2$; cost increases $4$ per unit","is_correct":true,"explanation":"Correct (A). **Step 1:** Slope $=\\frac{94-62}{24-16}=4$. **Step 2:** $y=4x-2$."},{"id":"B","text":"$y=3x+-2$; cost decreases per unit","is_correct":false,"explanation":"Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$y=94$; fixed total cost","is_correct":false,"explanation":"That is a single point''s $y$-value, not the line."},{"id":"D","text":"$y=\\frac{94}{24}x$; average cost per unit from origin","is_correct":false,"explanation":"Slope from origin is not the line''s slope."}]'::jsonb, 'A', '**Step 1:** Slope $=\frac{32}{8}=4$.
**Step 2:** $y=4x-2$.
**Step 3:** Slope $4$ = dollars per additional unit.
**Step 4:** Check both points.

**Distractor analysis:**
- **B** ($y=3x+-2$; cost decreases per unit): Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($y=94$; fixed total cost): That is a single point''s $y$-value, not the line.
- **D** ($y=\frac{94}{24}x$; average cost per unit from origin): Slope from origin is not the line''s slope.', NULL, 'Problem-Solving and Data Analysis', 'Two-variable data', 'math', 'psda', 'TVA', 'TVA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"TVA","insert_index":93}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4cf7d4cf-b2bf-4fdb-a4bb-9429795c7cff', 'Which equation models the line, and what does the slope represent?', 'A line models cost vs. units, passing through $(17,66)$ and $(25,98)$.', NULL, '[{"id":"A","text":"$y=4x-2$; cost increases $4$ per unit","is_correct":true,"explanation":"Correct (A). **Step 1:** Slope $=\\frac{98-66}{25-17}=4$. **Step 2:** $y=4x-2$."},{"id":"B","text":"$y=3x+-2$; cost decreases per unit","is_correct":false,"explanation":"Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$y=98$; fixed total cost","is_correct":false,"explanation":"That is a single point''s $y$-value, not the line."},{"id":"D","text":"$y=\\frac{98}{25}x$; average cost per unit from origin","is_correct":false,"explanation":"Slope from origin is not the line''s slope."}]'::jsonb, 'A', '**Step 1:** Slope $=\frac{32}{8}=4$.
**Step 2:** $y=4x-2$.
**Step 3:** Slope $4$ = dollars per additional unit.
**Step 4:** Check both points.

**Distractor analysis:**
- **B** ($y=3x+-2$; cost decreases per unit): Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($y=98$; fixed total cost): That is a single point''s $y$-value, not the line.
- **D** ($y=\frac{98}{25}x$; average cost per unit from origin): Slope from origin is not the line''s slope.', NULL, 'Problem-Solving and Data Analysis', 'Two-variable data', 'math', 'psda', 'TVA', 'TVA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"TVA","insert_index":94}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0eb6ec9f-05a9-4411-9703-b745b4473587', 'Which equation models the line, and what does the slope represent?', 'A line models cost vs. units, passing through $(18,70)$ and $(26,102)$.', NULL, '[{"id":"A","text":"$y=4x-2$; cost increases $4$ per unit","is_correct":true,"explanation":"Correct (A). **Step 1:** Slope $=\\frac{102-70}{26-18}=4$. **Step 2:** $y=4x-2$."},{"id":"B","text":"$y=3x+-2$; cost decreases per unit","is_correct":false,"explanation":"Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$y=102$; fixed total cost","is_correct":false,"explanation":"That is a single point''s $y$-value, not the line."},{"id":"D","text":"$y=\\frac{102}{26}x$; average cost per unit from origin","is_correct":false,"explanation":"Slope from origin is not the line''s slope."}]'::jsonb, 'A', '**Step 1:** Slope $=\frac{32}{8}=4$.
**Step 2:** $y=4x-2$.
**Step 3:** Slope $4$ = dollars per additional unit.
**Step 4:** Check both points.

**Distractor analysis:**
- **B** ($y=3x+-2$; cost decreases per unit): Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($y=102$; fixed total cost): That is a single point''s $y$-value, not the line.
- **D** ($y=\frac{102}{26}x$; average cost per unit from origin): Slope from origin is not the line''s slope.', NULL, 'Problem-Solving and Data Analysis', 'Two-variable data', 'math', 'psda', 'TVA', 'TVA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"TVA","insert_index":95}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('27f6d28c-18c0-4d48-ac79-3937631a3c1c', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 5 red and 24 blue chips. Two chips drawn without replacement; first is red.', NULL, '[{"id":"A","text":"$\\frac{5}{29}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{5}{28}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{5}{29}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{4}{28}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 4 red remain of 28. **Step 2:** P $=\\frac{4}{28}$."}]'::jsonb, 'D', '**Step 1:** First chip red → 4 red left, 28 total.
**Step 2:** Conditional probability $=\frac{4}{28}$.
**Step 3:** Do not use $\frac{5}{29}$ — that ignores the first draw.

**Distractor analysis:**
- **A** ($\frac{5}{29}$): Ignores that one red chip was removed.
- **B** ($\frac{5}{28}$): Uses original count in numerator.
- **C** ($\frac{5}{29}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"PRO","insert_index":96}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8dd23c75-cee0-44fa-ae52-64d78caf19e0', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 6 red and 25 blue chips. Two chips drawn without replacement; first is red.', NULL, '[{"id":"A","text":"$\\frac{6}{31}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{30}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{31}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{30}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 5 red remain of 30. **Step 2:** P $=\\frac{5}{30}$."}]'::jsonb, 'D', '**Step 1:** First chip red → 5 red left, 30 total.
**Step 2:** Conditional probability $=\frac{5}{30}$.
**Step 3:** Do not use $\frac{6}{31}$ — that ignores the first draw.

**Distractor analysis:**
- **A** ($\frac{6}{31}$): Ignores that one red chip was removed.
- **B** ($\frac{6}{30}$): Uses original count in numerator.
- **C** ($\frac{6}{31}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"PRO","insert_index":97}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2ac3414b-2b9c-4fe7-a169-ee2831670050', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 7 red and 26 blue chips. Two chips drawn without replacement; first is red.', NULL, '[{"id":"A","text":"$\\frac{7}{33}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{7}{32}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{7}{33}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{6}{32}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 6 red remain of 32. **Step 2:** P $=\\frac{6}{32}$."}]'::jsonb, 'D', '**Step 1:** First chip red → 6 red left, 32 total.
**Step 2:** Conditional probability $=\frac{6}{32}$.
**Step 3:** Do not use $\frac{7}{33}$ — that ignores the first draw.

**Distractor analysis:**
- **A** ($\frac{7}{33}$): Ignores that one red chip was removed.
- **B** ($\frac{7}{32}$): Uses original count in numerator.
- **C** ($\frac{7}{33}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"PRO","insert_index":98}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('60c4bf6d-9ed4-49ee-a3d7-215b953c60f0', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 8 red and 27 blue chips. Two chips drawn without replacement; first is red.', NULL, '[{"id":"A","text":"$\\frac{8}{35}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{8}{34}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{8}{35}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{7}{34}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 7 red remain of 34. **Step 2:** P $=\\frac{7}{34}$."}]'::jsonb, 'D', '**Step 1:** First chip red → 7 red left, 34 total.
**Step 2:** Conditional probability $=\frac{7}{34}$.
**Step 3:** Do not use $\frac{8}{35}$ — that ignores the first draw.

**Distractor analysis:**
- **A** ($\frac{8}{35}$): Ignores that one red chip was removed.
- **B** ($\frac{8}{34}$): Uses original count in numerator.
- **C** ($\frac{8}{35}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"PRO","insert_index":99}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a69e64da-1795-4d17-b0bf-2132dda123a6', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 5 red and 28 blue chips. Two chips drawn without replacement; first is red.', NULL, '[{"id":"A","text":"$\\frac{5}{33}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{5}{32}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{5}{33}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{4}{32}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 4 red remain of 32. **Step 2:** P $=\\frac{4}{32}$."}]'::jsonb, 'D', '**Step 1:** First chip red → 4 red left, 32 total.
**Step 2:** Conditional probability $=\frac{4}{32}$.
**Step 3:** Do not use $\frac{5}{33}$ — that ignores the first draw.

**Distractor analysis:**
- **A** ($\frac{5}{33}$): Ignores that one red chip was removed.
- **B** ($\frac{5}{32}$): Uses original count in numerator.
- **C** ($\frac{5}{33}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"PRO","insert_index":100}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('49e2fbc4-8ae7-4c95-9e40-44b676c87dc4', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 6 red and 29 blue chips. Two chips drawn without replacement; first is red.', NULL, '[{"id":"A","text":"$\\frac{6}{35}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{34}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{35}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{34}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 5 red remain of 34. **Step 2:** P $=\\frac{5}{34}$."}]'::jsonb, 'D', '**Step 1:** First chip red → 5 red left, 34 total.
**Step 2:** Conditional probability $=\frac{5}{34}$.
**Step 3:** Do not use $\frac{6}{35}$ — that ignores the first draw.

**Distractor analysis:**
- **A** ($\frac{6}{35}$): Ignores that one red chip was removed.
- **B** ($\frac{6}{34}$): Uses original count in numerator.
- **C** ($\frac{6}{35}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"PRO","insert_index":101}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2cd4d44f-f94a-4bbf-a509-d7dc36dfe4f4', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 7 red and 30 blue chips. Two chips drawn without replacement; first is red.', NULL, '[{"id":"A","text":"$\\frac{7}{37}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{7}{36}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{7}{37}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{6}{36}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 6 red remain of 36. **Step 2:** P $=\\frac{6}{36}$."}]'::jsonb, 'D', '**Step 1:** First chip red → 6 red left, 36 total.
**Step 2:** Conditional probability $=\frac{6}{36}$.
**Step 3:** Do not use $\frac{7}{37}$ — that ignores the first draw.

**Distractor analysis:**
- **A** ($\frac{7}{37}$): Ignores that one red chip was removed.
- **B** ($\frac{7}{36}$): Uses original count in numerator.
- **C** ($\frac{7}{37}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"PRO","insert_index":102}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('08fedb97-0b02-45d8-ad2a-5275e6e5eb3c', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 8 red and 31 blue chips. Two chips drawn without replacement; first is red.', NULL, '[{"id":"A","text":"$\\frac{8}{39}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{8}{38}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{8}{39}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{7}{38}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 7 red remain of 38. **Step 2:** P $=\\frac{7}{38}$."}]'::jsonb, 'D', '**Step 1:** First chip red → 7 red left, 38 total.
**Step 2:** Conditional probability $=\frac{7}{38}$.
**Step 3:** Do not use $\frac{8}{39}$ — that ignores the first draw.

**Distractor analysis:**
- **A** ($\frac{8}{39}$): Ignores that one red chip was removed.
- **B** ($\frac{8}{38}$): Uses original count in numerator.
- **C** ($\frac{8}{39}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"PRO","insert_index":103}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0b6dd4bb-2258-4314-a8a7-814bc79f048a', 'Which conclusion is best supported?', 'Poll: 62% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.', NULL, '[{"id":"A","text":"Exactly 62% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 58% and 66%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 58% to 66%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb, 'B', '**Step 1:** Compute interval: 58% to 66%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Distractor analysis:**
- **A** (Exactly 62% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.', NULL, 'Problem-Solving and Data Analysis', 'Inference from sample statistics', 'math', 'psda', 'IEE', 'IEE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"IEE","insert_index":104}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f95c1909-2df1-4ec5-8980-032d8f69348a', 'Which conclusion is best supported?', 'Poll: 63% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.', NULL, '[{"id":"A","text":"Exactly 63% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 59% and 67%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 59% to 67%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb, 'B', '**Step 1:** Compute interval: 59% to 67%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Distractor analysis:**
- **A** (Exactly 63% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.', NULL, 'Problem-Solving and Data Analysis', 'Inference from sample statistics', 'math', 'psda', 'IEE', 'IEE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"IEE","insert_index":105}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bb2e11f4-b271-4f3b-86fb-3d1078c18e20', 'Which conclusion is best supported?', 'Poll: 64% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.', NULL, '[{"id":"A","text":"Exactly 64% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 60% and 68%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 60% to 68%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb, 'B', '**Step 1:** Compute interval: 60% to 68%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Distractor analysis:**
- **A** (Exactly 64% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.', NULL, 'Problem-Solving and Data Analysis', 'Inference from sample statistics', 'math', 'psda', 'IEE', 'IEE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"IEE","insert_index":106}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('91de7aec-04fa-4fce-bf55-ba2d3d36301b', 'Which conclusion is best supported?', 'Poll: 65% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.', NULL, '[{"id":"A","text":"Exactly 65% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 61% and 69%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 61% to 69%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb, 'B', '**Step 1:** Compute interval: 61% to 69%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Distractor analysis:**
- **A** (Exactly 65% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.', NULL, 'Problem-Solving and Data Analysis', 'Inference from sample statistics', 'math', 'psda', 'IEE', 'IEE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"IEE","insert_index":107}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5fc03799-ec56-405e-a5a1-257f0288b1b9', 'Which conclusion is best supported?', 'Poll: 66% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.', NULL, '[{"id":"A","text":"Exactly 66% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 62% and 70%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 62% to 70%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb, 'B', '**Step 1:** Compute interval: 62% to 70%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Distractor analysis:**
- **A** (Exactly 66% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.', NULL, 'Problem-Solving and Data Analysis', 'Inference from sample statistics', 'math', 'psda', 'IEE', 'IEE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"IEE","insert_index":108}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c4e5f4a8-4110-45d8-a56e-8ab346576717', 'Which conclusion is best supported?', 'Poll: 67% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.', NULL, '[{"id":"A","text":"Exactly 67% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 63% and 71%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 63% to 71%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb, 'B', '**Step 1:** Compute interval: 63% to 71%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Distractor analysis:**
- **A** (Exactly 67% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.', NULL, 'Problem-Solving and Data Analysis', 'Inference from sample statistics', 'math', 'psda', 'IEE', 'IEE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"IEE","insert_index":109}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('aa38abd8-3c47-4df6-b7c6-6c80829ac400', 'Which conclusion is best supported?', 'Poll: 68% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.', NULL, '[{"id":"A","text":"Exactly 68% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 64% and 72%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 64% to 72%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb, 'B', '**Step 1:** Compute interval: 64% to 72%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Distractor analysis:**
- **A** (Exactly 68% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.', NULL, 'Problem-Solving and Data Analysis', 'Inference from sample statistics', 'math', 'psda', 'IEE', 'IEE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"IEE","insert_index":110}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f1997271-afae-4eb7-9e29-b4f9f08f0f04', 'Which conclusion is best supported?', 'Poll: 69% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.', NULL, '[{"id":"A","text":"Exactly 69% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 65% and 73%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 65% to 73%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb, 'B', '**Step 1:** Compute interval: 65% to 73%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Distractor analysis:**
- **A** (Exactly 69% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.', NULL, 'Problem-Solving and Data Analysis', 'Inference from sample statistics', 'math', 'psda', 'IEE', 'IEE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"IEE","insert_index":111}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('dc8f5b10-8a50-4835-93c8-f9b27574dd6c', 'Which choice best evaluates the claim?', 'A critic claims "nobody likes the new app" after surveying 237 followers who commented on one negative post.', NULL, '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"Correct (A). **Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because ${sample} responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb, 'A', '**Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.
**Step 4:** Larger convenience sample still biased.

**Distractor analysis:**
- **B** (The claim is valid because ${sample} responses is large): Size alone does not fix selection bias.
- **C** (The claim is valid because social media represents everyone): Platform users are not the entire population.
- **D** (The claim is valid because one post reflects all opinions): One thread is not representative.', NULL, 'Problem-Solving and Data Analysis', 'Evaluating statistical claims', 'math', 'psda', 'EVA', 'EVA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"EVA","insert_index":112}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a05b52a8-09d0-4434-b550-0723ef0b41f6', 'Which choice best evaluates the claim?', 'A critic claims "nobody likes the new app" after surveying 243 followers who commented on one negative post.', NULL, '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"Correct (A). **Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because ${sample} responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb, 'A', '**Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.
**Step 4:** Larger convenience sample still biased.

**Distractor analysis:**
- **B** (The claim is valid because ${sample} responses is large): Size alone does not fix selection bias.
- **C** (The claim is valid because social media represents everyone): Platform users are not the entire population.
- **D** (The claim is valid because one post reflects all opinions): One thread is not representative.', NULL, 'Problem-Solving and Data Analysis', 'Evaluating statistical claims', 'math', 'psda', 'EVA', 'EVA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"EVA","insert_index":113}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9b1dad09-0ad1-4716-a102-94dfc084ae03', 'Which choice best evaluates the claim?', 'A critic claims "nobody likes the new app" after surveying 249 followers who commented on one negative post.', NULL, '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"Correct (A). **Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because ${sample} responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb, 'A', '**Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.
**Step 4:** Larger convenience sample still biased.

**Distractor analysis:**
- **B** (The claim is valid because ${sample} responses is large): Size alone does not fix selection bias.
- **C** (The claim is valid because social media represents everyone): Platform users are not the entire population.
- **D** (The claim is valid because one post reflects all opinions): One thread is not representative.', NULL, 'Problem-Solving and Data Analysis', 'Evaluating statistical claims', 'math', 'psda', 'EVA', 'EVA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"EVA","insert_index":114}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0645d261-f6bc-44e6-83e2-c2863a4dd5f2', 'Which choice best evaluates the claim?', 'A critic claims "nobody likes the new app" after surveying 255 followers who commented on one negative post.', NULL, '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"Correct (A). **Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because ${sample} responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb, 'A', '**Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.
**Step 4:** Larger convenience sample still biased.

**Distractor analysis:**
- **B** (The claim is valid because ${sample} responses is large): Size alone does not fix selection bias.
- **C** (The claim is valid because social media represents everyone): Platform users are not the entire population.
- **D** (The claim is valid because one post reflects all opinions): One thread is not representative.', NULL, 'Problem-Solving and Data Analysis', 'Evaluating statistical claims', 'math', 'psda', 'EVA', 'EVA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"EVA","insert_index":115}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('23fe8025-a387-4243-adf9-11f409bfad11', 'Which choice best evaluates the claim?', 'A critic claims "nobody likes the new app" after surveying 261 followers who commented on one negative post.', NULL, '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"Correct (A). **Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because ${sample} responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb, 'A', '**Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.
**Step 4:** Larger convenience sample still biased.

**Distractor analysis:**
- **B** (The claim is valid because ${sample} responses is large): Size alone does not fix selection bias.
- **C** (The claim is valid because social media represents everyone): Platform users are not the entire population.
- **D** (The claim is valid because one post reflects all opinions): One thread is not representative.', NULL, 'Problem-Solving and Data Analysis', 'Evaluating statistical claims', 'math', 'psda', 'EVA', 'EVA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"EVA","insert_index":116}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5849c87f-2fcf-4f5e-8f6f-6b58382ff53f', 'Which choice best evaluates the claim?', 'A critic claims "nobody likes the new app" after surveying 267 followers who commented on one negative post.', NULL, '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"Correct (A). **Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because ${sample} responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb, 'A', '**Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.
**Step 4:** Larger convenience sample still biased.

**Distractor analysis:**
- **B** (The claim is valid because ${sample} responses is large): Size alone does not fix selection bias.
- **C** (The claim is valid because social media represents everyone): Platform users are not the entire population.
- **D** (The claim is valid because one post reflects all opinions): One thread is not representative.', NULL, 'Problem-Solving and Data Analysis', 'Evaluating statistical claims', 'math', 'psda', 'EVA', 'EVA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"EVA","insert_index":117}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2f1901a6-be65-4dfd-b777-685fd843dff0', 'Which choice best evaluates the claim?', 'A critic claims "nobody likes the new app" after surveying 273 followers who commented on one negative post.', NULL, '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"Correct (A). **Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because ${sample} responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb, 'A', '**Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.
**Step 4:** Larger convenience sample still biased.

**Distractor analysis:**
- **B** (The claim is valid because ${sample} responses is large): Size alone does not fix selection bias.
- **C** (The claim is valid because social media represents everyone): Platform users are not the entire population.
- **D** (The claim is valid because one post reflects all opinions): One thread is not representative.', NULL, 'Problem-Solving and Data Analysis', 'Evaluating statistical claims', 'math', 'psda', 'EVA', 'EVA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"EVA","insert_index":118}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('21b5a982-c0b3-4cd6-a01b-146ae41c14bd', 'Which choice best evaluates the claim?', 'A critic claims "nobody likes the new app" after surveying 279 followers who commented on one negative post.', NULL, '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"Correct (A). **Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because ${sample} responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb, 'A', '**Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.
**Step 4:** Larger convenience sample still biased.

**Distractor analysis:**
- **B** (The claim is valid because ${sample} responses is large): Size alone does not fix selection bias.
- **C** (The claim is valid because social media represents everyone): Platform users are not the entire population.
- **D** (The claim is valid because one post reflects all opinions): One thread is not representative.', NULL, 'Problem-Solving and Data Analysis', 'Evaluating statistical claims', 'math', 'psda', 'EVA', 'EVA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"EVA","insert_index":119}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3e455764-4c6d-4d08-9f04-6367291fa51a', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 46 by 45 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', NULL, '[{"id":"A","text":"$2070$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$2061$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$4122$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $2070-3^2=2061$. **Step 2:** Volume $=2061×2=4122$."},{"id":"D","text":"$4125$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1:** Rectangle: $46×45=2070$.
**Step 2:** Remove corner: $3^2=9$ → base $2061$.
**Step 3:** Volume $=2061×2=4122$ cu in.

**Distractor analysis:**
- **A** ($2070$): Forgot to subtract the removed corner.
- **B** ($2061$): Area of base only, not volume.
- **D** ($4125$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"ARE","insert_index":120}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1558f534-b374-4ce1-8bd1-3b4361da1bf7', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 47 by 46 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', NULL, '[{"id":"A","text":"$2162$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$2153$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$4306$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $2162-3^2=2153$. **Step 2:** Volume $=2153×2=4306$."},{"id":"D","text":"$4309$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1:** Rectangle: $47×46=2162$.
**Step 2:** Remove corner: $3^2=9$ → base $2153$.
**Step 3:** Volume $=2153×2=4306$ cu in.

**Distractor analysis:**
- **A** ($2162$): Forgot to subtract the removed corner.
- **B** ($2153$): Area of base only, not volume.
- **D** ($4309$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"ARE","insert_index":121}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bc7665ba-66f4-4196-8142-363e861f0ebc', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 48 by 47 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', NULL, '[{"id":"A","text":"$2256$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$2247$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$4494$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $2256-3^2=2247$. **Step 2:** Volume $=2247×2=4494$."},{"id":"D","text":"$4497$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1:** Rectangle: $48×47=2256$.
**Step 2:** Remove corner: $3^2=9$ → base $2247$.
**Step 3:** Volume $=2247×2=4494$ cu in.

**Distractor analysis:**
- **A** ($2256$): Forgot to subtract the removed corner.
- **B** ($2247$): Area of base only, not volume.
- **D** ($4497$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"ARE","insert_index":122}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('84fbe56f-3ddb-4255-b7e7-f12fcb95e047', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 49 by 48 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', NULL, '[{"id":"A","text":"$2352$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$2343$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$4686$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $2352-3^2=2343$. **Step 2:** Volume $=2343×2=4686$."},{"id":"D","text":"$4689$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1:** Rectangle: $49×48=2352$.
**Step 2:** Remove corner: $3^2=9$ → base $2343$.
**Step 3:** Volume $=2343×2=4686$ cu in.

**Distractor analysis:**
- **A** ($2352$): Forgot to subtract the removed corner.
- **B** ($2343$): Area of base only, not volume.
- **D** ($4689$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"ARE","insert_index":123}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ad24c533-1615-481f-aad6-285289e9abd8', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 50 by 49 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', NULL, '[{"id":"A","text":"$2450$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$2441$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$4882$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $2450-3^2=2441$. **Step 2:** Volume $=2441×2=4882$."},{"id":"D","text":"$4885$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1:** Rectangle: $50×49=2450$.
**Step 2:** Remove corner: $3^2=9$ → base $2441$.
**Step 3:** Volume $=2441×2=4882$ cu in.

**Distractor analysis:**
- **A** ($2450$): Forgot to subtract the removed corner.
- **B** ($2441$): Area of base only, not volume.
- **D** ($4885$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"ARE","insert_index":124}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e5d37792-11e3-45b8-806b-f5802bf1aaff', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 51 by 50 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', NULL, '[{"id":"A","text":"$2550$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$2541$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$5082$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $2550-3^2=2541$. **Step 2:** Volume $=2541×2=5082$."},{"id":"D","text":"$5085$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1:** Rectangle: $51×50=2550$.
**Step 2:** Remove corner: $3^2=9$ → base $2541$.
**Step 3:** Volume $=2541×2=5082$ cu in.

**Distractor analysis:**
- **A** ($2550$): Forgot to subtract the removed corner.
- **B** ($2541$): Area of base only, not volume.
- **D** ($5085$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"ARE","insert_index":125}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3087e9ee-297e-465d-9676-654a49686a50', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 52 by 51 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', NULL, '[{"id":"A","text":"$2652$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$2643$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$5286$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $2652-3^2=2643$. **Step 2:** Volume $=2643×2=5286$."},{"id":"D","text":"$5289$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1:** Rectangle: $52×51=2652$.
**Step 2:** Remove corner: $3^2=9$ → base $2643$.
**Step 3:** Volume $=2643×2=5286$ cu in.

**Distractor analysis:**
- **A** ($2652$): Forgot to subtract the removed corner.
- **B** ($2643$): Area of base only, not volume.
- **D** ($5289$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"ARE","insert_index":126}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0c521aea-d2b2-438b-a7d8-b3c67ced9ff1', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 53 by 52 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', NULL, '[{"id":"A","text":"$2756$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$2747$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$5494$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $2756-3^2=2747$. **Step 2:** Volume $=2747×2=5494$."},{"id":"D","text":"$5497$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1:** Rectangle: $53×52=2756$.
**Step 2:** Remove corner: $3^2=9$ → base $2747$.
**Step 3:** Volume $=2747×2=5494$ cu in.

**Distractor analysis:**
- **A** ($2756$): Forgot to subtract the removed corner.
- **B** ($2747$): Area of base only, not volume.
- **D** ($5497$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"ARE","insert_index":127}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('68341ecf-e14c-4d2f-8dcb-f3aed58ec6e4', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 88°$ and $m\angle B = 60°$. Line through $C$ forms exterior angle 148° with side $AB$.', NULL, '[{"id":"A","text":"$88°$","is_correct":false,"explanation":"Choice A ($88°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$60°$","is_correct":false,"explanation":"Choice B ($60°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$42°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$32°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 32°$."}]'::jsonb, 'D', '**Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 88 - 60 = 32°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 88° + 60° + 32° = 180°.

**Distractor analysis:**
- **A** ($88°$): Choice A ($88°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($60°$): Choice B ($60°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($42°$): Too large for the triangle angle sum.', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"LIN_G","insert_index":128}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e57c5a12-129b-425a-ac58-b9eb5f3a432d', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 52°$ and $m\angle B = 64°$. Line through $C$ forms exterior angle 116° with side $AB$.', NULL, '[{"id":"A","text":"$52°$","is_correct":false,"explanation":"Choice A ($52°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$64°$","is_correct":false,"explanation":"Choice B ($64°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$74°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$64°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 64°$."}]'::jsonb, 'D', '**Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 52 - 64 = 64°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 52° + 64° + 64° = 180°.

**Distractor analysis:**
- **A** ($52°$): Choice A ($52°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($64°$): Choice B ($64°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($74°$): Too large for the triangle angle sum.', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"LIN_G","insert_index":129}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('36bec16d-aa76-40c6-8182-babe18b84d2b', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 58°$ and $m\angle B = 48°$. Line through $C$ forms exterior angle 106° with side $AB$.', NULL, '[{"id":"A","text":"$58°$","is_correct":false,"explanation":"Choice A ($58°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$48°$","is_correct":false,"explanation":"Choice B ($48°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$84°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$74°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 74°$."}]'::jsonb, 'D', '**Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 58 - 48 = 74°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 58° + 48° + 74° = 180°.

**Distractor analysis:**
- **A** ($58°$): Choice A ($58°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($48°$): Choice B ($48°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($84°$): Too large for the triangle angle sum.', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"LIN_G","insert_index":130}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('883dac60-6d9d-4ccd-b960-bdaa189a6c24', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 64°$ and $m\angle B = 52°$. Line through $C$ forms exterior angle 116° with side $AB$.', NULL, '[{"id":"A","text":"$64°$","is_correct":false,"explanation":"Choice A ($64°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$52°$","is_correct":false,"explanation":"Choice B ($52°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$74°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$64°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 64°$."}]'::jsonb, 'D', '**Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 64 - 52 = 64°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 64° + 52° + 64° = 180°.

**Distractor analysis:**
- **A** ($64°$): Choice A ($64°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($52°$): Choice B ($52°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($74°$): Too large for the triangle angle sum.', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"LIN_G","insert_index":131}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('21874894-0187-4505-a6bc-b4df76cc3417', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 70°$ and $m\angle B = 56°$. Line through $C$ forms exterior angle 126° with side $AB$.', NULL, '[{"id":"A","text":"$70°$","is_correct":false,"explanation":"Choice A ($70°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$56°$","is_correct":false,"explanation":"Choice B ($56°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$64°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$54°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 54°$."}]'::jsonb, 'D', '**Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 70 - 56 = 54°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 70° + 56° + 54° = 180°.

**Distractor analysis:**
- **A** ($70°$): Choice A ($70°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($56°$): Choice B ($56°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($64°$): Too large for the triangle angle sum.', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"LIN_G","insert_index":132}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d5c2c9f4-66f8-48b3-b435-ac888aa9d366', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 76°$ and $m\angle B = 60°$. Line through $C$ forms exterior angle 136° with side $AB$.', NULL, '[{"id":"A","text":"$76°$","is_correct":false,"explanation":"Choice A ($76°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$60°$","is_correct":false,"explanation":"Choice B ($60°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$54°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$44°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 44°$."}]'::jsonb, 'D', '**Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 76 - 60 = 44°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 76° + 60° + 44° = 180°.

**Distractor analysis:**
- **A** ($76°$): Choice A ($76°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($60°$): Choice B ($60°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($54°$): Too large for the triangle angle sum.', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"LIN_G","insert_index":133}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8c7dec81-6d6e-4746-8845-2e54e135acae', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 82°$ and $m\angle B = 64°$. Line through $C$ forms exterior angle 146° with side $AB$.', NULL, '[{"id":"A","text":"$82°$","is_correct":false,"explanation":"Choice A ($82°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$64°$","is_correct":false,"explanation":"Choice B ($64°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$44°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$34°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 34°$."}]'::jsonb, 'D', '**Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 82 - 64 = 34°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 82° + 64° + 34° = 180°.

**Distractor analysis:**
- **A** ($82°$): Choice A ($82°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($64°$): Choice B ($64°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($44°$): Too large for the triangle angle sum.', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"LIN_G","insert_index":134}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a8833a3c-e440-4c9e-a781-2f8633ab8f6f', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 88°$ and $m\angle B = 48°$. Line through $C$ forms exterior angle 136° with side $AB$.', NULL, '[{"id":"A","text":"$88°$","is_correct":false,"explanation":"Choice A ($88°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$48°$","is_correct":false,"explanation":"Choice B ($48°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$54°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$44°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 44°$."}]'::jsonb, 'D', '**Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 88 - 48 = 44°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 88° + 48° + 44° = 180°.

**Distractor analysis:**
- **A** ($88°$): Choice A ($88°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($48°$): Choice B ($48°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($54°$): Too large for the triangle angle sum.', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"LIN_G","insert_index":135}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7cd7240f-7e9d-42a9-8b9d-f0d810b2898c', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 62 ft from a wall; the top is 69 ft high. The ladder length is 93 ft.', NULL, '[{"id":"A","text":"$\\frac{62}{93}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{69}{93}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=69$, hypotenuse $=93$. **Step 2:** $\\sin\\theta=\\frac{69}{93}≈0.742$."},{"id":"C","text":"$\\frac{93}{69}$","is_correct":false,"explanation":"Choice C ($\\frac{93}{69}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{62}{69}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1:** Right triangle: opposite $=69$, hypotenuse $=93$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{69}{93}$.
**Step 3:** Pythagorean check: $62^2+69^2=93^2$.
**Step 4:** $\cos\theta=\frac{62}{93}$, not the answer.

**Distractor analysis:**
- **A** ($\frac{62}{93}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{93}{69}$): Choice C ($\frac{93}{69}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{62}{69}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"RIG","insert_index":136}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bd3d869d-4a23-4d03-8d23-d54187716f43', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 63 ft from a wall; the top is 70 ft high. The ladder length is 94 ft.', NULL, '[{"id":"A","text":"$\\frac{63}{94}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{70}{94}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=70$, hypotenuse $=94$. **Step 2:** $\\sin\\theta=\\frac{70}{94}≈0.745$."},{"id":"C","text":"$\\frac{94}{70}$","is_correct":false,"explanation":"Choice C ($\\frac{94}{70}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{63}{70}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1:** Right triangle: opposite $=70$, hypotenuse $=94$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{70}{94}$.
**Step 3:** Pythagorean check: $63^2+70^2=94^2$.
**Step 4:** $\cos\theta=\frac{63}{94}$, not the answer.

**Distractor analysis:**
- **A** ($\frac{63}{94}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{94}{70}$): Choice C ($\frac{94}{70}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{63}{70}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"RIG","insert_index":137}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a44aa014-5b00-45ab-9e77-8b05e39ca45e', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 64 ft from a wall; the top is 71 ft high. The ladder length is 96 ft.', NULL, '[{"id":"A","text":"$\\frac{64}{96}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{71}{96}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=71$, hypotenuse $=96$. **Step 2:** $\\sin\\theta=\\frac{71}{96}≈0.740$."},{"id":"C","text":"$\\frac{96}{71}$","is_correct":false,"explanation":"Choice C ($\\frac{96}{71}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{64}{71}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1:** Right triangle: opposite $=71$, hypotenuse $=96$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{71}{96}$.
**Step 3:** Pythagorean check: $64^2+71^2=96^2$.
**Step 4:** $\cos\theta=\frac{64}{96}$, not the answer.

**Distractor analysis:**
- **A** ($\frac{64}{96}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{96}{71}$): Choice C ($\frac{96}{71}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{64}{71}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"RIG","insert_index":138}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6acf10e4-717c-4a19-aafb-906284b73edf', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 65 ft from a wall; the top is 72 ft high. The ladder length is 97 ft.', NULL, '[{"id":"A","text":"$\\frac{65}{97}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{72}{97}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=72$, hypotenuse $=97$. **Step 2:** $\\sin\\theta=\\frac{72}{97}≈0.742$."},{"id":"C","text":"$\\frac{97}{72}$","is_correct":false,"explanation":"Choice C ($\\frac{97}{72}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{65}{72}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1:** Right triangle: opposite $=72$, hypotenuse $=97$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{72}{97}$.
**Step 3:** Pythagorean check: $65^2+72^2=97^2$.
**Step 4:** $\cos\theta=\frac{65}{97}$, not the answer.

**Distractor analysis:**
- **A** ($\frac{65}{97}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{97}{72}$): Choice C ($\frac{97}{72}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{65}{72}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"RIG","insert_index":139}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('260785fa-d651-4422-93be-984f3315c130', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 6 ft from a wall; the top is 13 ft high. The ladder length is 14 ft.', NULL, '[{"id":"A","text":"$\\frac{6}{14}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{13}{14}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=13$, hypotenuse $=14$. **Step 2:** $\\sin\\theta=\\frac{13}{14}≈0.929$."},{"id":"C","text":"$\\frac{14}{13}$","is_correct":false,"explanation":"Choice C ($\\frac{14}{13}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{6}{13}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1:** Right triangle: opposite $=13$, hypotenuse $=14$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{13}{14}$.
**Step 3:** Pythagorean check: $6^2+13^2=14^2$.
**Step 4:** $\cos\theta=\frac{6}{14}$, not the answer.

**Distractor analysis:**
- **A** ($\frac{6}{14}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{14}{13}$): Choice C ($\frac{14}{13}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{6}{13}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"RIG","insert_index":140}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1a4dd268-851c-43ce-bade-d03e541f9474', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 7 ft from a wall; the top is 14 ft high. The ladder length is 16 ft.', NULL, '[{"id":"A","text":"$\\frac{7}{16}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{14}{16}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=14$, hypotenuse $=16$. **Step 2:** $\\sin\\theta=\\frac{14}{16}≈0.875$."},{"id":"C","text":"$\\frac{16}{14}$","is_correct":false,"explanation":"Choice C ($\\frac{16}{14}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{7}{14}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1:** Right triangle: opposite $=14$, hypotenuse $=16$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{14}{16}$.
**Step 3:** Pythagorean check: $7^2+14^2=16^2$.
**Step 4:** $\cos\theta=\frac{7}{16}$, not the answer.

**Distractor analysis:**
- **A** ($\frac{7}{16}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{16}{14}$): Choice C ($\frac{16}{14}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{7}{14}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"RIG","insert_index":141}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a83a7747-2e39-4d66-acfa-cc7f67fb9b55', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 8 ft from a wall; the top is 15 ft high. The ladder length is 17 ft.', NULL, '[{"id":"A","text":"$\\frac{8}{17}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{15}{17}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=15$, hypotenuse $=17$. **Step 2:** $\\sin\\theta=\\frac{15}{17}≈0.882$."},{"id":"C","text":"$\\frac{17}{15}$","is_correct":false,"explanation":"Choice C ($\\frac{17}{15}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{8}{15}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1:** Right triangle: opposite $=15$, hypotenuse $=17$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{15}{17}$.
**Step 3:** Pythagorean check: $8^2+15^2=17^2$.
**Step 4:** $\cos\theta=\frac{8}{17}$, not the answer.

**Distractor analysis:**
- **A** ($\frac{8}{17}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{17}{15}$): Choice C ($\frac{17}{15}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{8}{15}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"RIG","insert_index":142}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9acb6a27-604c-4f6f-8d1c-3f6f4dbf918c', 'How far is half the circumference? (Use $\pi \approx 3.14$.)', 'A circular track has radius 8 meters. A runner completes half the circumference.', NULL, '[{"id":"A","text":"$25.12$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈50.24$. **Step 2:** Half $≈25.12$ m."},{"id":"B","text":"$200.96$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$50.24$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$25.12$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb, 'A', '**Step 1:** $C=2\pi r≈2(3.14)(8)=50.24$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈25.12$ m.
**Step 3:** Do not confuse with area $πr^2≈200.96$.

**Distractor analysis:**
- **B** ($200.96$): Area formula $\pi r^2$, not arc length.
- **C** ($50.24$): Full circumference, not half.
- **D** ($25.12$): Half of $\pi r$, not half of $2\pi r$.', NULL, 'Geometry and Trigonometry', 'Circles', 'math', 'geometry', 'CIR', 'CIR', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"CIR","insert_index":143}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('098d4242-15f5-4003-96e2-670d0ef491d4', 'How far is half the circumference? (Use $\pi \approx 3.14$.)', 'A circular track has radius 9 meters. A runner completes half the circumference.', NULL, '[{"id":"A","text":"$28.26$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈56.52$. **Step 2:** Half $≈28.26$ m."},{"id":"B","text":"$254.34$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$56.52$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$28.26$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb, 'A', '**Step 1:** $C=2\pi r≈2(3.14)(9)=56.52$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈28.26$ m.
**Step 3:** Do not confuse with area $πr^2≈254.34$.

**Distractor analysis:**
- **B** ($254.34$): Area formula $\pi r^2$, not arc length.
- **C** ($56.52$): Full circumference, not half.
- **D** ($28.26$): Half of $\pi r$, not half of $2\pi r$.', NULL, 'Geometry and Trigonometry', 'Circles', 'math', 'geometry', 'CIR', 'CIR', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"CIR","insert_index":144}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a0611fc8-3639-4754-beaa-5f82a4e4d801', 'How far is half the circumference? (Use $\pi \approx 3.14$.)', 'A circular track has radius 10 meters. A runner completes half the circumference.', NULL, '[{"id":"A","text":"$31.40$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈62.80$. **Step 2:** Half $≈31.40$ m."},{"id":"B","text":"$314.00$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$62.80$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$31.40$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb, 'A', '**Step 1:** $C=2\pi r≈2(3.14)(10)=62.80$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈31.40$ m.
**Step 3:** Do not confuse with area $πr^2≈314.00$.

**Distractor analysis:**
- **B** ($314.00$): Area formula $\pi r^2$, not arc length.
- **C** ($62.80$): Full circumference, not half.
- **D** ($31.40$): Half of $\pi r$, not half of $2\pi r$.', NULL, 'Geometry and Trigonometry', 'Circles', 'math', 'geometry', 'CIR', 'CIR', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"CIR","insert_index":145}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('424ec10c-9da4-4a9b-9c93-7757a8be08e2', 'How far is half the circumference? (Use $\pi \approx 3.14$.)', 'A circular track has radius 11 meters. A runner completes half the circumference.', NULL, '[{"id":"A","text":"$34.54$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈69.08$. **Step 2:** Half $≈34.54$ m."},{"id":"B","text":"$379.94$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$69.08$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$34.54$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb, 'A', '**Step 1:** $C=2\pi r≈2(3.14)(11)=69.08$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈34.54$ m.
**Step 3:** Do not confuse with area $πr^2≈379.94$.

**Distractor analysis:**
- **B** ($379.94$): Area formula $\pi r^2$, not arc length.
- **C** ($69.08$): Full circumference, not half.
- **D** ($34.54$): Half of $\pi r$, not half of $2\pi r$.', NULL, 'Geometry and Trigonometry', 'Circles', 'math', 'geometry', 'CIR', 'CIR', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.628Z","skill":"CIR","insert_index":146}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('acb96d9f-ea81-46f2-9f25-46fec4575b41', 'How far is half the circumference? (Use $\pi \approx 3.14$.)', 'A circular track has radius 12 meters. A runner completes half the circumference.', NULL, '[{"id":"A","text":"$37.68$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈75.36$. **Step 2:** Half $≈37.68$ m."},{"id":"B","text":"$452.16$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$75.36$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$37.68$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb, 'A', '**Step 1:** $C=2\pi r≈2(3.14)(12)=75.36$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈37.68$ m.
**Step 3:** Do not confuse with area $πr^2≈452.16$.

**Distractor analysis:**
- **B** ($452.16$): Area formula $\pi r^2$, not arc length.
- **C** ($75.36$): Full circumference, not half.
- **D** ($37.68$): Half of $\pi r$, not half of $2\pi r$.', NULL, 'Geometry and Trigonometry', 'Circles', 'math', 'geometry', 'CIR', 'CIR', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.629Z","skill":"CIR","insert_index":147}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6064ce6a-fb13-4148-84f1-81ac33d24544', 'How far is half the circumference? (Use $\pi \approx 3.14$.)', 'A circular track has radius 13 meters. A runner completes half the circumference.', NULL, '[{"id":"A","text":"$40.82$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈81.64$. **Step 2:** Half $≈40.82$ m."},{"id":"B","text":"$530.66$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$81.64$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$40.82$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb, 'A', '**Step 1:** $C=2\pi r≈2(3.14)(13)=81.64$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈40.82$ m.
**Step 3:** Do not confuse with area $πr^2≈530.66$.

**Distractor analysis:**
- **B** ($530.66$): Area formula $\pi r^2$, not arc length.
- **C** ($81.64$): Full circumference, not half.
- **D** ($40.82$): Half of $\pi r$, not half of $2\pi r$.', NULL, 'Geometry and Trigonometry', 'Circles', 'math', 'geometry', 'CIR', 'CIR', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.629Z","skill":"CIR","insert_index":148}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2d09907a-ad73-482d-a3a1-a95d05780c6f', 'How far is half the circumference? (Use $\pi \approx 3.14$.)', 'A circular track has radius 14 meters. A runner completes half the circumference.', NULL, '[{"id":"A","text":"$43.96$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈87.92$. **Step 2:** Half $≈43.96$ m."},{"id":"B","text":"$615.44$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$87.92$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$43.96$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb, 'A', '**Step 1:** $C=2\pi r≈2(3.14)(14)=87.92$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈43.96$ m.
**Step 3:** Do not confuse with area $πr^2≈615.44$.

**Distractor analysis:**
- **B** ($615.44$): Area formula $\pi r^2$, not arc length.
- **C** ($87.92$): Full circumference, not half.
- **D** ($43.96$): Half of $\pi r$, not half of $2\pi r$.', NULL, 'Geometry and Trigonometry', 'Circles', 'math', 'geometry', 'CIR', 'CIR', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.629Z","skill":"CIR","insert_index":149}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
