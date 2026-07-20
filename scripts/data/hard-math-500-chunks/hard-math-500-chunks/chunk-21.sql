BEGIN;
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

COMMIT;
