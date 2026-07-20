BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ab207ea9-40f9-4df5-a3cf-f45103126b51', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 14 by 13 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$182$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$173$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$346$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $182-3^2=173$. **Step 2:** Volume $=173×2=346$."},{"id":"D","text":"$349$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $14×13=182$.
**Step 2:** Remove corner: $3^2=9$ → base $173$.
**Step 3:** Volume $=173×2=346$ cu in.

**Step 3 — Answer C.** $346$

**Distractor analysis:**
- **A** ($182$): Forgot to subtract the removed corner.
- **B** ($173$): Area of base only, not volume.
- **D** ($349$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ebc8803a-a439-496b-8730-9c479431e716', 'What is the volume of the box, in cubic inches? Enter your answer as a number.', 'A rectangular sheet is 15 by 14 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"SPR","text":"402","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the volume of the box, in cubic inches? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Rectangle: $15×14=210$.
**Step 2:** Remove corner: $3^2=9$ → base $201$.
**Step 3:** Volume $=201×2=402$ cu in.

**Step 3 — Answer SPR.** 402', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3cf09238-3ce1-4837-9474-1487662ca275', 'What is the volume of the box, in cubic inches?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 140" width="200" height="140" role="img" aria-label="Rectangle 16 by 15">
  <rect x="30" y="30" width="140" height="80" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="90" y="125" font-size="11">16 in</text>
  <text x="8" y="75" font-size="11" transform="rotate(-90 8 75)">15 in</text>
</svg>

A rectangular sheet is 16 by 15 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'figure', '[{"id":"A","text":"$240$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$231$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$462$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $240-3^2=231$. **Step 2:** Volume $=231×2=462$."},{"id":"D","text":"$465$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $16×15=240$.
**Step 2:** Remove corner: $3^2=9$ → base $231$.
**Step 3:** Volume $=231×2=462$ cu in.

**Step 3 — Answer C.** $462$

**Distractor analysis:**
- **A** ($240$): Forgot to subtract the removed corner.
- **B** ($231$): Area of base only, not volume.
- **D** ($465$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('04530d72-4137-4497-bbc9-eb65b3b7d3b6', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 17 by 16 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$272$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$263$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$526$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $272-3^2=263$. **Step 2:** Volume $=263×2=526$."},{"id":"D","text":"$529$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $17×16=272$.
**Step 2:** Remove corner: $3^2=9$ → base $263$.
**Step 3:** Volume $=263×2=526$ cu in.

**Step 3 — Answer C.** $526$

**Distractor analysis:**
- **A** ($272$): Forgot to subtract the removed corner.
- **B** ($263$): Area of base only, not volume.
- **D** ($529$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9a767e75-066f-471b-a368-b701d1ad3042', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 18 by 17 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$306$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$297$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$594$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $306-3^2=297$. **Step 2:** Volume $=297×2=594$."},{"id":"D","text":"$597$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $18×17=306$.
**Step 2:** Remove corner: $3^2=9$ → base $297$.
**Step 3:** Volume $=297×2=594$ cu in.

**Step 3 — Answer C.** $594$

**Distractor analysis:**
- **A** ($306$): Forgot to subtract the removed corner.
- **B** ($297$): Area of base only, not volume.
- **D** ($597$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('533dfe51-702d-483e-a809-fe53f1f49767', 'What is the volume of the box, in cubic inches? Enter your answer as a number.', 'A rectangular sheet is 19 by 18 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"SPR","text":"666","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the volume of the box, in cubic inches? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Rectangle: $19×18=342$.
**Step 2:** Remove corner: $3^2=9$ → base $333$.
**Step 3:** Volume $=333×2=666$ cu in.

**Step 3 — Answer SPR.** 666', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('af50c1f7-1d73-4f87-af94-f48dac3c0cc9', 'What is the volume of the box, in cubic inches?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 140" width="200" height="140" role="img" aria-label="Rectangle 20 by 19">
  <rect x="30" y="30" width="140" height="80" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="90" y="125" font-size="11">20 in</text>
  <text x="8" y="75" font-size="11" transform="rotate(-90 8 75)">19 in</text>
</svg>

A rectangular sheet is 20 by 19 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'figure', '[{"id":"A","text":"$380$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$371$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$742$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $380-3^2=371$. **Step 2:** Volume $=371×2=742$."},{"id":"D","text":"$745$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $20×19=380$.
**Step 2:** Remove corner: $3^2=9$ → base $371$.
**Step 3:** Volume $=371×2=742$ cu in.

**Step 3 — Answer C.** $742$

**Distractor analysis:**
- **A** ($380$): Forgot to subtract the removed corner.
- **B** ($371$): Area of base only, not volume.
- **D** ($745$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9306e06d-e02d-4615-9449-1fb4a2b1545e', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 21 by 20 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$420$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$411$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$822$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $420-3^2=411$. **Step 2:** Volume $=411×2=822$."},{"id":"D","text":"$825$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $21×20=420$.
**Step 2:** Remove corner: $3^2=9$ → base $411$.
**Step 3:** Volume $=411×2=822$ cu in.

**Step 3 — Answer C.** $822$

**Distractor analysis:**
- **A** ($420$): Forgot to subtract the removed corner.
- **B** ($411$): Area of base only, not volume.
- **D** ($825$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c5078850-492e-47fd-b0be-e3f50911e3d6', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 22 by 21 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$462$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$453$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$906$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $462-3^2=453$. **Step 2:** Volume $=453×2=906$."},{"id":"D","text":"$909$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $22×21=462$.
**Step 2:** Remove corner: $3^2=9$ → base $453$.
**Step 3:** Volume $=453×2=906$ cu in.

**Step 3 — Answer C.** $906$

**Distractor analysis:**
- **A** ($462$): Forgot to subtract the removed corner.
- **B** ($453$): Area of base only, not volume.
- **D** ($909$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8723802a-6f94-40ce-98c4-bf81dd1bf7e9', 'What is the volume of the box, in cubic inches? Enter your answer as a number.', 'A rectangular sheet is 23 by 22 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"SPR","text":"994","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the volume of the box, in cubic inches? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Rectangle: $23×22=506$.
**Step 2:** Remove corner: $3^2=9$ → base $497$.
**Step 3:** Volume $=497×2=994$ cu in.

**Step 3 — Answer SPR.** 994', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('907acef7-905a-48e6-9bbb-06889dfbd014', 'What is the volume of the box, in cubic inches?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 140" width="200" height="140" role="img" aria-label="Rectangle 24 by 23">
  <rect x="30" y="30" width="140" height="80" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="90" y="125" font-size="11">24 in</text>
  <text x="8" y="75" font-size="11" transform="rotate(-90 8 75)">23 in</text>
</svg>

A rectangular sheet is 24 by 23 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'figure', '[{"id":"A","text":"$552$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$543$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$1086$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $552-3^2=543$. **Step 2:** Volume $=543×2=1086$."},{"id":"D","text":"$1089$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $24×23=552$.
**Step 2:** Remove corner: $3^2=9$ → base $543$.
**Step 3:** Volume $=543×2=1086$ cu in.

**Step 3 — Answer C.** $1086$

**Distractor analysis:**
- **A** ($552$): Forgot to subtract the removed corner.
- **B** ($543$): Area of base only, not volume.
- **D** ($1089$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3abbe0a1-56ed-4126-a38b-e0579ebd5acc', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 25 by 24 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$600$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$591$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$1182$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $600-3^2=591$. **Step 2:** Volume $=591×2=1182$."},{"id":"D","text":"$1185$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $25×24=600$.
**Step 2:** Remove corner: $3^2=9$ → base $591$.
**Step 3:** Volume $=591×2=1182$ cu in.

**Step 3 — Answer C.** $1182$

**Distractor analysis:**
- **A** ($600$): Forgot to subtract the removed corner.
- **B** ($591$): Area of base only, not volume.
- **D** ($1185$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
