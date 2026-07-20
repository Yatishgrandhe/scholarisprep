BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0625ef8e-0c23-415a-a1d6-9215a8730804', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 62 by 61 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$3782$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$3773$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$7546$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $3782-3^2=3773$. **Step 2:** Volume $=3773×2=7546$."},{"id":"D","text":"$7549$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $62×61=3782$.
**Step 2:** Remove corner: $3^2=9$ → base $3773$.
**Step 3:** Volume $=3773×2=7546$ cu in.

**Step 3 — Answer C.** $7546$

**Distractor analysis:**
- **A** ($3782$): Forgot to subtract the removed corner.
- **B** ($3773$): Area of base only, not volume.
- **D** ($7549$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f2dc4466-55c0-497b-ba22-57fe4207c69c', 'What is the volume of the box, in cubic inches? Enter your answer as a number.', 'A rectangular sheet is 63 by 62 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"SPR","text":"7794","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the volume of the box, in cubic inches? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Rectangle: $63×62=3906$.
**Step 2:** Remove corner: $3^2=9$ → base $3897$.
**Step 3:** Volume $=3897×2=7794$ cu in.

**Step 3 — Answer SPR.** 7794', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7d9a7c80-0fe8-4567-955d-e81737366d0a', 'What is the volume of the box, in cubic inches?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 140" width="200" height="140" role="img" aria-label="Rectangle 44 by 43">
  <rect x="30" y="30" width="140" height="80" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="90" y="125" font-size="11">44 in</text>
  <text x="8" y="75" font-size="11" transform="rotate(-90 8 75)">43 in</text>
</svg>

A rectangular sheet is 64 by 63 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'figure', '[{"id":"A","text":"$4032$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$4023$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$8046$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $4032-3^2=4023$. **Step 2:** Volume $=4023×2=8046$."},{"id":"D","text":"$8049$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $64×63=4032$.
**Step 2:** Remove corner: $3^2=9$ → base $4023$.
**Step 3:** Volume $=4023×2=8046$ cu in.

**Step 3 — Answer C.** $8046$

**Distractor analysis:**
- **A** ($4032$): Forgot to subtract the removed corner.
- **B** ($4023$): Area of base only, not volume.
- **D** ($8049$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('de77ae98-829a-4fbc-baf4-9d9e9cf68a2d', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 65 by 64 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$4160$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$4151$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$8302$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $4160-3^2=4151$. **Step 2:** Volume $=4151×2=8302$."},{"id":"D","text":"$8305$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $65×64=4160$.
**Step 2:** Remove corner: $3^2=9$ → base $4151$.
**Step 3:** Volume $=4151×2=8302$ cu in.

**Step 3 — Answer C.** $8302$

**Distractor analysis:**
- **A** ($4160$): Forgot to subtract the removed corner.
- **B** ($4151$): Area of base only, not volume.
- **D** ($8305$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c4f833c4-b563-4841-b846-47b2b139aac3', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 6 by 5 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$30$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$21$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$42$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $30-3^2=21$. **Step 2:** Volume $=21×2=42$."},{"id":"D","text":"$45$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $6×5=30$.
**Step 2:** Remove corner: $3^2=9$ → base $21$.
**Step 3:** Volume $=21×2=42$ cu in.

**Step 3 — Answer C.** $42$

**Distractor analysis:**
- **A** ($30$): Forgot to subtract the removed corner.
- **B** ($21$): Area of base only, not volume.
- **D** ($45$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ffb575e4-5b28-466e-98c4-d12d93eb8bb2', 'What is the volume of the box, in cubic inches? Enter your answer as a number.', 'A rectangular sheet is 7 by 6 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"SPR","text":"66","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the volume of the box, in cubic inches? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Rectangle: $7×6=42$.
**Step 2:** Remove corner: $3^2=9$ → base $33$.
**Step 3:** Volume $=33×2=66$ cu in.

**Step 3 — Answer SPR.** 66', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2ac904f3-d434-404c-99fe-e465f72a64dc', 'What is the volume of the box, in cubic inches?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 140" width="200" height="140" role="img" aria-label="Rectangle 8 by 7">
  <rect x="30" y="30" width="140" height="80" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="90" y="125" font-size="11">8 in</text>
  <text x="8" y="75" font-size="11" transform="rotate(-90 8 75)">7 in</text>
</svg>

A rectangular sheet is 8 by 7 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'figure', '[{"id":"A","text":"$56$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$47$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$94$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $56-3^2=47$. **Step 2:** Volume $=47×2=94$."},{"id":"D","text":"$97$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $8×7=56$.
**Step 2:** Remove corner: $3^2=9$ → base $47$.
**Step 3:** Volume $=47×2=94$ cu in.

**Step 3 — Answer C.** $94$

**Distractor analysis:**
- **A** ($56$): Forgot to subtract the removed corner.
- **B** ($47$): Area of base only, not volume.
- **D** ($97$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a0579262-afbd-4d62-9e59-b88a017dc41f', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 9 by 8 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$72$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$63$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$126$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $72-3^2=63$. **Step 2:** Volume $=63×2=126$."},{"id":"D","text":"$129$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $9×8=72$.
**Step 2:** Remove corner: $3^2=9$ → base $63$.
**Step 3:** Volume $=63×2=126$ cu in.

**Step 3 — Answer C.** $126$

**Distractor analysis:**
- **A** ($72$): Forgot to subtract the removed corner.
- **B** ($63$): Area of base only, not volume.
- **D** ($129$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('173a668a-d444-43b8-a37a-ddadef23004c', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 10 by 9 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$90$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$81$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$162$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $90-3^2=81$. **Step 2:** Volume $=81×2=162$."},{"id":"D","text":"$165$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $10×9=90$.
**Step 2:** Remove corner: $3^2=9$ → base $81$.
**Step 3:** Volume $=81×2=162$ cu in.

**Step 3 — Answer C.** $162$

**Distractor analysis:**
- **A** ($90$): Forgot to subtract the removed corner.
- **B** ($81$): Area of base only, not volume.
- **D** ($165$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6059213e-d087-4d9c-9edd-3f8b212bdec4', 'What is the volume of the box, in cubic inches? Enter your answer as a number.', 'A rectangular sheet is 11 by 10 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"SPR","text":"202","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the volume of the box, in cubic inches? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Rectangle: $11×10=110$.
**Step 2:** Remove corner: $3^2=9$ → base $101$.
**Step 3:** Volume $=101×2=202$ cu in.

**Step 3 — Answer SPR.** 202', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6382fbff-5e0f-4414-84f1-363d42e6ec59', 'What is the volume of the box, in cubic inches?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 140" width="200" height="140" role="img" aria-label="Rectangle 12 by 11">
  <rect x="30" y="30" width="140" height="80" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="90" y="125" font-size="11">12 in</text>
  <text x="8" y="75" font-size="11" transform="rotate(-90 8 75)">11 in</text>
</svg>

A rectangular sheet is 12 by 11 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'figure', '[{"id":"A","text":"$132$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$123$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$246$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $132-3^2=123$. **Step 2:** Volume $=123×2=246$."},{"id":"D","text":"$249$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $12×11=132$.
**Step 2:** Remove corner: $3^2=9$ → base $123$.
**Step 3:** Volume $=123×2=246$ cu in.

**Step 3 — Answer C.** $246$

**Distractor analysis:**
- **A** ($132$): Forgot to subtract the removed corner.
- **B** ($123$): Area of base only, not volume.
- **D** ($249$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ad6327e4-da08-4440-8c81-6efe8dd1287b', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 13 by 12 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$156$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$147$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$294$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $156-3^2=147$. **Step 2:** Volume $=147×2=294$."},{"id":"D","text":"$297$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $13×12=156$.
**Step 2:** Remove corner: $3^2=9$ → base $147$.
**Step 3:** Volume $=147×2=294$ cu in.

**Step 3 — Answer C.** $294$

**Distractor analysis:**
- **A** ($156$): Forgot to subtract the removed corner.
- **B** ($147$): Area of base only, not volume.
- **D** ($297$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
