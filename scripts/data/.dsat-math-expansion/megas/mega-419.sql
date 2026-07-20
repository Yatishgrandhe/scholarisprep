BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bae60eb0-e82f-4c54-b260-1cdc1377732b', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 38 by 37 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$1406$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$1397$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$2794$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $1406-3^2=1397$. **Step 2:** Volume $=1397×2=2794$."},{"id":"D","text":"$2797$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $38×37=1406$.
**Step 2:** Remove corner: $3^2=9$ → base $1397$.
**Step 3:** Volume $=1397×2=2794$ cu in.

**Step 3 — Answer C.** $2794$

**Distractor analysis:**
- **A** ($1406$): Forgot to subtract the removed corner.
- **B** ($1397$): Area of base only, not volume.
- **D** ($2797$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1804c71a-de05-437d-b57c-32d38a757e24', 'What is the volume of the box, in cubic inches? Enter your answer as a number.', 'A rectangular sheet is 39 by 38 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"SPR","text":"2946","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the volume of the box, in cubic inches? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Rectangle: $39×38=1482$.
**Step 2:** Remove corner: $3^2=9$ → base $1473$.
**Step 3:** Volume $=1473×2=2946$ cu in.

**Step 3 — Answer SPR.** 2946', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c7491bc4-d0ba-4dce-8c30-fb253ffd3a6e', 'What is the volume of the box, in cubic inches?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 140" width="200" height="140" role="img" aria-label="Rectangle 40 by 39">
  <rect x="30" y="30" width="140" height="80" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="90" y="125" font-size="11">40 in</text>
  <text x="8" y="75" font-size="11" transform="rotate(-90 8 75)">39 in</text>
</svg>

A rectangular sheet is 40 by 39 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'figure', '[{"id":"A","text":"$1560$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$1551$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$3102$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $1560-3^2=1551$. **Step 2:** Volume $=1551×2=3102$."},{"id":"D","text":"$3105$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $40×39=1560$.
**Step 2:** Remove corner: $3^2=9$ → base $1551$.
**Step 3:** Volume $=1551×2=3102$ cu in.

**Step 3 — Answer C.** $3102$

**Distractor analysis:**
- **A** ($1560$): Forgot to subtract the removed corner.
- **B** ($1551$): Area of base only, not volume.
- **D** ($3105$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('938cb119-067e-4d19-aee8-3f3d302c779d', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 41 by 40 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$1640$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$1631$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$3262$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $1640-3^2=1631$. **Step 2:** Volume $=1631×2=3262$."},{"id":"D","text":"$3265$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $41×40=1640$.
**Step 2:** Remove corner: $3^2=9$ → base $1631$.
**Step 3:** Volume $=1631×2=3262$ cu in.

**Step 3 — Answer C.** $3262$

**Distractor analysis:**
- **A** ($1640$): Forgot to subtract the removed corner.
- **B** ($1631$): Area of base only, not volume.
- **D** ($3265$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('960f5bdc-386d-4caa-b582-ba07f72c517a', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 42 by 41 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$1722$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$1713$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$3426$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $1722-3^2=1713$. **Step 2:** Volume $=1713×2=3426$."},{"id":"D","text":"$3429$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $42×41=1722$.
**Step 2:** Remove corner: $3^2=9$ → base $1713$.
**Step 3:** Volume $=1713×2=3426$ cu in.

**Step 3 — Answer C.** $3426$

**Distractor analysis:**
- **A** ($1722$): Forgot to subtract the removed corner.
- **B** ($1713$): Area of base only, not volume.
- **D** ($3429$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('597c6cf2-5d5f-45bc-b45d-fda09c612c26', 'What is the volume of the box, in cubic inches? Enter your answer as a number.', 'A rectangular sheet is 43 by 42 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"SPR","text":"3594","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the volume of the box, in cubic inches? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Rectangle: $43×42=1806$.
**Step 2:** Remove corner: $3^2=9$ → base $1797$.
**Step 3:** Volume $=1797×2=3594$ cu in.

**Step 3 — Answer SPR.** 3594', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f5d0ab6d-bf4c-47e5-a7b7-c991955b6282', 'What is the volume of the box, in cubic inches?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 140" width="200" height="140" role="img" aria-label="Rectangle 44 by 43">
  <rect x="30" y="30" width="140" height="80" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="90" y="125" font-size="11">44 in</text>
  <text x="8" y="75" font-size="11" transform="rotate(-90 8 75)">43 in</text>
</svg>

A rectangular sheet is 44 by 43 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'figure', '[{"id":"A","text":"$1892$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$1883$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$3766$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $1892-3^2=1883$. **Step 2:** Volume $=1883×2=3766$."},{"id":"D","text":"$3769$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $44×43=1892$.
**Step 2:** Remove corner: $3^2=9$ → base $1883$.
**Step 3:** Volume $=1883×2=3766$ cu in.

**Step 3 — Answer C.** $3766$

**Distractor analysis:**
- **A** ($1892$): Forgot to subtract the removed corner.
- **B** ($1883$): Area of base only, not volume.
- **D** ($3769$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('90b24b88-bc44-46f6-abec-8c4186987e76', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 45 by 44 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$1980$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$1971$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$3942$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $1980-3^2=1971$. **Step 2:** Volume $=1971×2=3942$."},{"id":"D","text":"$3945$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $45×44=1980$.
**Step 2:** Remove corner: $3^2=9$ → base $1971$.
**Step 3:** Volume $=1971×2=3942$ cu in.

**Step 3 — Answer C.** $3942$

**Distractor analysis:**
- **A** ($1980$): Forgot to subtract the removed corner.
- **B** ($1971$): Area of base only, not volume.
- **D** ($3945$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a404d719-07c4-415f-a0b9-73e3d4a2c892', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 46 by 45 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$2070$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$2061$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$4122$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $2070-3^2=2061$. **Step 2:** Volume $=2061×2=4122$."},{"id":"D","text":"$4125$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $46×45=2070$.
**Step 2:** Remove corner: $3^2=9$ → base $2061$.
**Step 3:** Volume $=2061×2=4122$ cu in.

**Step 3 — Answer C.** $4122$

**Distractor analysis:**
- **A** ($2070$): Forgot to subtract the removed corner.
- **B** ($2061$): Area of base only, not volume.
- **D** ($4125$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ba248b26-b5a2-46f2-97df-cafd72eb2d44', 'What is the volume of the box, in cubic inches? Enter your answer as a number.', 'A rectangular sheet is 47 by 46 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"SPR","text":"4306","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the volume of the box, in cubic inches? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Rectangle: $47×46=2162$.
**Step 2:** Remove corner: $3^2=9$ → base $2153$.
**Step 3:** Volume $=2153×2=4306$ cu in.

**Step 3 — Answer SPR.** 4306', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d01c6bfd-c2db-4f86-8a93-4e0da39b728d', 'What is the volume of the box, in cubic inches?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 140" width="200" height="140" role="img" aria-label="Rectangle 8 by 7">
  <rect x="30" y="30" width="140" height="80" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="90" y="125" font-size="11">8 in</text>
  <text x="8" y="75" font-size="11" transform="rotate(-90 8 75)">7 in</text>
</svg>

A rectangular sheet is 48 by 47 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'figure', '[{"id":"A","text":"$2256$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$2247$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$4494$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $2256-3^2=2247$. **Step 2:** Volume $=2247×2=4494$."},{"id":"D","text":"$4497$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $48×47=2256$.
**Step 2:** Remove corner: $3^2=9$ → base $2247$.
**Step 3:** Volume $=2247×2=4494$ cu in.

**Step 3 — Answer C.** $4494$

**Distractor analysis:**
- **A** ($2256$): Forgot to subtract the removed corner.
- **B** ($2247$): Area of base only, not volume.
- **D** ($4497$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('210e553e-b7d5-4ad8-9889-6ba8b01f2dab', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 49 by 48 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$2352$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$2343$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$4686$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $2352-3^2=2343$. **Step 2:** Volume $=2343×2=4686$."},{"id":"D","text":"$4689$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $49×48=2352$.
**Step 2:** Remove corner: $3^2=9$ → base $2343$.
**Step 3:** Volume $=2343×2=4686$ cu in.

**Step 3 — Answer C.** $4686$

**Distractor analysis:**
- **A** ($2352$): Forgot to subtract the removed corner.
- **B** ($2343$): Area of base only, not volume.
- **D** ($4689$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
