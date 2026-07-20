BEGIN;
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
COMMIT;

BEGIN;
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

COMMIT;

BEGIN;
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
COMMIT;

BEGIN;
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

COMMIT;

BEGIN;
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
COMMIT;