BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a71d43ec-07fb-4c43-a405-60b75cfff67e', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 26 by 25 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$650$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$641$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$1282$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $650-3^2=641$. **Step 2:** Volume $=641×2=1282$."},{"id":"D","text":"$1285$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $26×25=650$.
**Step 2:** Remove corner: $3^2=9$ → base $641$.
**Step 3:** Volume $=641×2=1282$ cu in.

**Step 3 — Answer C.** $1282$

**Distractor analysis:**
- **A** ($650$): Forgot to subtract the removed corner.
- **B** ($641$): Area of base only, not volume.
- **D** ($1285$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9633ced9-c647-4603-9aaf-0666abff25e7', 'What is the volume of the box, in cubic inches? Enter your answer as a number.', 'A rectangular sheet is 27 by 26 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"SPR","text":"1386","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the volume of the box, in cubic inches? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Rectangle: $27×26=702$.
**Step 2:** Remove corner: $3^2=9$ → base $693$.
**Step 3:** Volume $=693×2=1386$ cu in.

**Step 3 — Answer SPR.** 1386', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('419f1d2b-fb1c-4752-9cdc-33a083ae5e14', 'What is the volume of the box, in cubic inches?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 140" width="200" height="140" role="img" aria-label="Rectangle 28 by 27">
  <rect x="30" y="30" width="140" height="80" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="90" y="125" font-size="11">28 in</text>
  <text x="8" y="75" font-size="11" transform="rotate(-90 8 75)">27 in</text>
</svg>

A rectangular sheet is 28 by 27 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'figure', '[{"id":"A","text":"$756$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$747$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$1494$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $756-3^2=747$. **Step 2:** Volume $=747×2=1494$."},{"id":"D","text":"$1497$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $28×27=756$.
**Step 2:** Remove corner: $3^2=9$ → base $747$.
**Step 3:** Volume $=747×2=1494$ cu in.

**Step 3 — Answer C.** $1494$

**Distractor analysis:**
- **A** ($756$): Forgot to subtract the removed corner.
- **B** ($747$): Area of base only, not volume.
- **D** ($1497$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e53a9a47-bda2-4122-8fe3-70fa8089bfd1', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 29 by 28 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$812$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$803$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$1606$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $812-3^2=803$. **Step 2:** Volume $=803×2=1606$."},{"id":"D","text":"$1609$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $29×28=812$.
**Step 2:** Remove corner: $3^2=9$ → base $803$.
**Step 3:** Volume $=803×2=1606$ cu in.

**Step 3 — Answer C.** $1606$

**Distractor analysis:**
- **A** ($812$): Forgot to subtract the removed corner.
- **B** ($803$): Area of base only, not volume.
- **D** ($1609$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f33a4452-5d68-4fe5-a5b9-45780e6a16b0', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 30 by 29 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$870$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$861$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$1722$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $870-3^2=861$. **Step 2:** Volume $=861×2=1722$."},{"id":"D","text":"$1725$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $30×29=870$.
**Step 2:** Remove corner: $3^2=9$ → base $861$.
**Step 3:** Volume $=861×2=1722$ cu in.

**Step 3 — Answer C.** $1722$

**Distractor analysis:**
- **A** ($870$): Forgot to subtract the removed corner.
- **B** ($861$): Area of base only, not volume.
- **D** ($1725$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5e36bb17-f098-4107-bdf8-ee97e1714614', 'What is the volume of the box, in cubic inches? Enter your answer as a number.', 'A rectangular sheet is 31 by 30 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"SPR","text":"1842","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the volume of the box, in cubic inches? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Rectangle: $31×30=930$.
**Step 2:** Remove corner: $3^2=9$ → base $921$.
**Step 3:** Volume $=921×2=1842$ cu in.

**Step 3 — Answer SPR.** 1842', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('03beee14-00ba-4e49-8a6b-0e96491d5e69', 'What is the volume of the box, in cubic inches?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 140" width="200" height="140" role="img" aria-label="Rectangle 32 by 31">
  <rect x="30" y="30" width="140" height="80" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="90" y="125" font-size="11">32 in</text>
  <text x="8" y="75" font-size="11" transform="rotate(-90 8 75)">31 in</text>
</svg>

A rectangular sheet is 32 by 31 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'figure', '[{"id":"A","text":"$992$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$983$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$1966$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $992-3^2=983$. **Step 2:** Volume $=983×2=1966$."},{"id":"D","text":"$1969$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $32×31=992$.
**Step 2:** Remove corner: $3^2=9$ → base $983$.
**Step 3:** Volume $=983×2=1966$ cu in.

**Step 3 — Answer C.** $1966$

**Distractor analysis:**
- **A** ($992$): Forgot to subtract the removed corner.
- **B** ($983$): Area of base only, not volume.
- **D** ($1969$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f5332aa3-5dc0-4ffa-ae59-25b0808a814f', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 33 by 32 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$1056$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$1047$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$2094$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $1056-3^2=1047$. **Step 2:** Volume $=1047×2=2094$."},{"id":"D","text":"$2097$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $33×32=1056$.
**Step 2:** Remove corner: $3^2=9$ → base $1047$.
**Step 3:** Volume $=1047×2=2094$ cu in.

**Step 3 — Answer C.** $2094$

**Distractor analysis:**
- **A** ($1056$): Forgot to subtract the removed corner.
- **B** ($1047$): Area of base only, not volume.
- **D** ($2097$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('660663e3-93c5-46de-a32d-7fcf0c54d11e', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 34 by 33 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$1122$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$1113$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$2226$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $1122-3^2=1113$. **Step 2:** Volume $=1113×2=2226$."},{"id":"D","text":"$2229$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $34×33=1122$.
**Step 2:** Remove corner: $3^2=9$ → base $1113$.
**Step 3:** Volume $=1113×2=2226$ cu in.

**Step 3 — Answer C.** $2226$

**Distractor analysis:**
- **A** ($1122$): Forgot to subtract the removed corner.
- **B** ($1113$): Area of base only, not volume.
- **D** ($2229$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('006a4620-56c4-447b-863f-50790bd972e4', 'What is the volume of the box, in cubic inches? Enter your answer as a number.', 'A rectangular sheet is 35 by 34 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"SPR","text":"2362","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the volume of the box, in cubic inches? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Rectangle: $35×34=1190$.
**Step 2:** Remove corner: $3^2=9$ → base $1181$.
**Step 3:** Volume $=1181×2=2362$ cu in.

**Step 3 — Answer SPR.** 2362', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b538de46-2821-4d56-a40a-4a77234c2386', 'What is the volume of the box, in cubic inches?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 140" width="200" height="140" role="img" aria-label="Rectangle 36 by 35">
  <rect x="30" y="30" width="140" height="80" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="90" y="125" font-size="11">36 in</text>
  <text x="8" y="75" font-size="11" transform="rotate(-90 8 75)">35 in</text>
</svg>

A rectangular sheet is 36 by 35 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'figure', '[{"id":"A","text":"$1260$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$1251$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$2502$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $1260-3^2=1251$. **Step 2:** Volume $=1251×2=2502$."},{"id":"D","text":"$2505$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $36×35=1260$.
**Step 2:** Remove corner: $3^2=9$ → base $1251$.
**Step 3:** Volume $=1251×2=2502$ cu in.

**Step 3 — Answer C.** $2502$

**Distractor analysis:**
- **A** ($1260$): Forgot to subtract the removed corner.
- **B** ($1251$): Area of base only, not volume.
- **D** ($2505$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e87e7671-9c9f-43d8-a2d0-15ae3266f2d8', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 37 by 36 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$1332$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$1323$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$2646$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $1332-3^2=1323$. **Step 2:** Volume $=1323×2=2646$."},{"id":"D","text":"$2649$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $37×36=1332$.
**Step 2:** Remove corner: $3^2=9$ → base $1323$.
**Step 3:** Volume $=1323×2=2646$ cu in.

**Step 3 — Answer C.** $2646$

**Distractor analysis:**
- **A** ($1332$): Forgot to subtract the removed corner.
- **B** ($1323$): Area of base only, not volume.
- **D** ($2649$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
