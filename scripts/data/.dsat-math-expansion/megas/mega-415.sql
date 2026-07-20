BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f0a014aa-6ed8-4227-b2ee-216aac061437', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 50 by 49 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$2450$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$2441$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$4882$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $2450-3^2=2441$. **Step 2:** Volume $=2441×2=4882$."},{"id":"D","text":"$4885$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $50×49=2450$.
**Step 2:** Remove corner: $3^2=9$ → base $2441$.
**Step 3:** Volume $=2441×2=4882$ cu in.

**Step 3 — Answer C.** $4882$

**Distractor analysis:**
- **A** ($2450$): Forgot to subtract the removed corner.
- **B** ($2441$): Area of base only, not volume.
- **D** ($4885$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('65cb0a65-f6ae-4a17-a151-9ff6f2d97027', 'What is the volume of the box, in cubic inches? Enter your answer as a number.', 'A rectangular sheet is 51 by 50 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"SPR","text":"5082","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the volume of the box, in cubic inches? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Rectangle: $51×50=2550$.
**Step 2:** Remove corner: $3^2=9$ → base $2541$.
**Step 3:** Volume $=2541×2=5082$ cu in.

**Step 3 — Answer SPR.** 5082', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('aed77e1c-91ab-4f94-a858-ad796905fbe6', 'What is the volume of the box, in cubic inches?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 140" width="200" height="140" role="img" aria-label="Rectangle 32 by 31">
  <rect x="30" y="30" width="140" height="80" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="90" y="125" font-size="11">32 in</text>
  <text x="8" y="75" font-size="11" transform="rotate(-90 8 75)">31 in</text>
</svg>

A rectangular sheet is 52 by 51 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'figure', '[{"id":"A","text":"$2652$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$2643$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$5286$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $2652-3^2=2643$. **Step 2:** Volume $=2643×2=5286$."},{"id":"D","text":"$5289$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $52×51=2652$.
**Step 2:** Remove corner: $3^2=9$ → base $2643$.
**Step 3:** Volume $=2643×2=5286$ cu in.

**Step 3 — Answer C.** $5286$

**Distractor analysis:**
- **A** ($2652$): Forgot to subtract the removed corner.
- **B** ($2643$): Area of base only, not volume.
- **D** ($5289$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('65b51183-72d1-485b-949f-3a2ff0998291', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 53 by 52 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$2756$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$2747$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$5494$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $2756-3^2=2747$. **Step 2:** Volume $=2747×2=5494$."},{"id":"D","text":"$5497$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $53×52=2756$.
**Step 2:** Remove corner: $3^2=9$ → base $2747$.
**Step 3:** Volume $=2747×2=5494$ cu in.

**Step 3 — Answer C.** $5494$

**Distractor analysis:**
- **A** ($2756$): Forgot to subtract the removed corner.
- **B** ($2747$): Area of base only, not volume.
- **D** ($5497$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9ea84008-f451-401f-aa8a-14b7626f67f6', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 54 by 53 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$2862$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$2853$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$5706$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $2862-3^2=2853$. **Step 2:** Volume $=2853×2=5706$."},{"id":"D","text":"$5709$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $54×53=2862$.
**Step 2:** Remove corner: $3^2=9$ → base $2853$.
**Step 3:** Volume $=2853×2=5706$ cu in.

**Step 3 — Answer C.** $5706$

**Distractor analysis:**
- **A** ($2862$): Forgot to subtract the removed corner.
- **B** ($2853$): Area of base only, not volume.
- **D** ($5709$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0ec07546-570c-4285-bd84-970052040d15', 'What is the volume of the box, in cubic inches? Enter your answer as a number.', 'A rectangular sheet is 55 by 54 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"SPR","text":"5922","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the volume of the box, in cubic inches? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Rectangle: $55×54=2970$.
**Step 2:** Remove corner: $3^2=9$ → base $2961$.
**Step 3:** Volume $=2961×2=5922$ cu in.

**Step 3 — Answer SPR.** 5922', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('71cc1e37-548d-42a7-a614-582c36f09260', 'What is the volume of the box, in cubic inches?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 140" width="200" height="140" role="img" aria-label="Rectangle 36 by 35">
  <rect x="30" y="30" width="140" height="80" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="90" y="125" font-size="11">36 in</text>
  <text x="8" y="75" font-size="11" transform="rotate(-90 8 75)">35 in</text>
</svg>

A rectangular sheet is 56 by 55 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'figure', '[{"id":"A","text":"$3080$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$3071$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$6142$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $3080-3^2=3071$. **Step 2:** Volume $=3071×2=6142$."},{"id":"D","text":"$6145$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $56×55=3080$.
**Step 2:** Remove corner: $3^2=9$ → base $3071$.
**Step 3:** Volume $=3071×2=6142$ cu in.

**Step 3 — Answer C.** $6142$

**Distractor analysis:**
- **A** ($3080$): Forgot to subtract the removed corner.
- **B** ($3071$): Area of base only, not volume.
- **D** ($6145$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f8fe35ed-4128-49c0-acd5-a8be8fb5315d', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 57 by 56 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$3192$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$3183$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$6366$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $3192-3^2=3183$. **Step 2:** Volume $=3183×2=6366$."},{"id":"D","text":"$6369$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $57×56=3192$.
**Step 2:** Remove corner: $3^2=9$ → base $3183$.
**Step 3:** Volume $=3183×2=6366$ cu in.

**Step 3 — Answer C.** $6366$

**Distractor analysis:**
- **A** ($3192$): Forgot to subtract the removed corner.
- **B** ($3183$): Area of base only, not volume.
- **D** ($6369$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4b0c1b6d-912d-455c-a2cf-498085c26b64', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 58 by 57 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$3306$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$3297$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$6594$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $3306-3^2=3297$. **Step 2:** Volume $=3297×2=6594$."},{"id":"D","text":"$6597$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $58×57=3306$.
**Step 2:** Remove corner: $3^2=9$ → base $3297$.
**Step 3:** Volume $=3297×2=6594$ cu in.

**Step 3 — Answer C.** $6594$

**Distractor analysis:**
- **A** ($3306$): Forgot to subtract the removed corner.
- **B** ($3297$): Area of base only, not volume.
- **D** ($6597$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fb3ae7c6-e6bd-458b-b23a-2d9ff48ebd42', 'What is the volume of the box, in cubic inches? Enter your answer as a number.', 'A rectangular sheet is 59 by 58 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"SPR","text":"6826","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the volume of the box, in cubic inches? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Rectangle: $59×58=3422$.
**Step 2:** Remove corner: $3^2=9$ → base $3413$.
**Step 3:** Volume $=3413×2=6826$ cu in.

**Step 3 — Answer SPR.** 6826', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5aa37091-6df5-420d-94bc-4078db9d4d91', 'What is the volume of the box, in cubic inches?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 140" width="200" height="140" role="img" aria-label="Rectangle 40 by 39">
  <rect x="30" y="30" width="140" height="80" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="90" y="125" font-size="11">40 in</text>
  <text x="8" y="75" font-size="11" transform="rotate(-90 8 75)">39 in</text>
</svg>

A rectangular sheet is 60 by 59 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'figure', '[{"id":"A","text":"$3540$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$3531$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$7062$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $3540-3^2=3531$. **Step 2:** Volume $=3531×2=7062$."},{"id":"D","text":"$7065$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $60×59=3540$.
**Step 2:** Remove corner: $3^2=9$ → base $3531$.
**Step 3:** Volume $=3531×2=7062$ cu in.

**Step 3 — Answer C.** $7062$

**Distractor analysis:**
- **A** ($3540$): Forgot to subtract the removed corner.
- **B** ($3531$): Area of base only, not volume.
- **D** ($7065$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c87d4b2d-4dc3-4ee7-8b40-42cb3d45251b', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 61 by 60 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$3660$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$3651$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$7302$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $3660-3^2=3651$. **Step 2:** Volume $=3651×2=7302$."},{"id":"D","text":"$7305$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $61×60=3660$.
**Step 2:** Remove corner: $3^2=9$ → base $3651$.
**Step 3:** Volume $=3651×2=7302$ cu in.

**Step 3 — Answer C.** $7302$

**Distractor analysis:**
- **A** ($3660$): Forgot to subtract the removed corner.
- **B** ($3651$): Area of base only, not volume.
- **D** ($7305$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
