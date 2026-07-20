BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('13102caa-bc0e-4056-bfcd-17d48ec7b4f4', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 62 by 61 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$3782$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$3773$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$7546$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $3782-3^2=3773$. **Step 2:** Volume $=3773×2=7546$."},{"id":"D","text":"$7549$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

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
VALUES ('30c8389a-79d1-47cb-95c7-57d858510707', 'What is the volume of the box, in cubic inches? Enter your answer as a number.', 'A rectangular sheet is 63 by 62 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"SPR","text":"7794","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the volume of the box, in cubic inches? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Rectangle: $63×62=3906$.
**Step 2:** Remove corner: $3^2=9$ → base $3897$.
**Step 3:** Volume $=3897×2=7794$ cu in.

**Step 3 — Answer SPR.** 7794', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('98a8aebc-5ad7-4938-8370-0e799b80ec2f', 'What is the volume of the box, in cubic inches?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 140" width="200" height="140" role="img" aria-label="Rectangle 24 by 23">
  <rect x="30" y="30" width="140" height="80" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="90" y="125" font-size="11">24 in</text>
  <text x="8" y="75" font-size="11" transform="rotate(-90 8 75)">23 in</text>
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
VALUES ('7530213b-24c7-456d-839b-0b6aa9ec0689', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 65 by 64 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$4160$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$4151$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$8302$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $4160-3^2=4151$. **Step 2:** Volume $=4151×2=8302$."},{"id":"D","text":"$8305$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

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
VALUES ('3fe4d9da-fd00-4c4b-afe5-87b9e289db64', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 6 by 5 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$30$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$21$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$42$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $30-3^2=21$. **Step 2:** Volume $=21×2=42$."},{"id":"D","text":"$45$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $6×5=30$.
**Step 2:** Remove corner: $3^2=9$ → base $21$.
**Step 3:** Volume $=21×2=42$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $42$

**Distractor analysis:**
- **A** ($30$): Forgot to subtract the removed corner.
- **B** ($21$): Area of base only, not volume.
- **D** ($45$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e588414c-dd1b-4e22-a6f1-c62a2e7c485e', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 7 by 6 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$42$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$33$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$66$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $42-3^2=33$. **Step 2:** Volume $=33×2=66$."},{"id":"D","text":"$69$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $7×6=42$.
**Step 2:** Remove corner: $3^2=9$ → base $33$.
**Step 3:** Volume $=33×2=66$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $66$

**Distractor analysis:**
- **A** ($42$): Forgot to subtract the removed corner.
- **B** ($33$): Area of base only, not volume.
- **D** ($69$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b6abba4f-ef97-4919-a8e9-c7d2698764d3', 'What is the volume of the box, in cubic inches?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 140" width="200" height="140" role="img" aria-label="Rectangle 8 by 7">
  <rect x="30" y="30" width="140" height="80" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="90" y="125" font-size="11">8 in</text>
  <text x="8" y="75" font-size="11" transform="rotate(-90 8 75)">7 in</text>
</svg>

A rectangular sheet is 8 by 7 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'figure', '[{"id":"A","text":"$56$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$47$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$94$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $56-3^2=47$. **Step 2:** Volume $=47×2=94$."},{"id":"D","text":"$97$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $8×7=56$.
**Step 2:** Remove corner: $3^2=9$ → base $47$.
**Step 3:** Volume $=47×2=94$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $94$

**Distractor analysis:**
- **A** ($56$): Forgot to subtract the removed corner.
- **B** ($47$): Area of base only, not volume.
- **D** ($97$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c2cc1494-5461-4eed-a11d-3f89a32c264d', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 9 by 8 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$72$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$63$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$126$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $72-3^2=63$. **Step 2:** Volume $=63×2=126$."},{"id":"D","text":"$129$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $9×8=72$.
**Step 2:** Remove corner: $3^2=9$ → base $63$.
**Step 3:** Volume $=63×2=126$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $126$

**Distractor analysis:**
- **A** ($72$): Forgot to subtract the removed corner.
- **B** ($63$): Area of base only, not volume.
- **D** ($129$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('957f7710-2d47-4584-a348-3cc86203e8a0', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 10 by 9 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$90$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$81$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$162$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $90-3^2=81$. **Step 2:** Volume $=81×2=162$."},{"id":"D","text":"$165$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $10×9=90$.
**Step 2:** Remove corner: $3^2=9$ → base $81$.
**Step 3:** Volume $=81×2=162$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $162$

**Distractor analysis:**
- **A** ($90$): Forgot to subtract the removed corner.
- **B** ($81$): Area of base only, not volume.
- **D** ($165$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ed00500b-4e82-4fee-aa4b-870827631523', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 11 by 10 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$110$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$101$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$202$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $110-3^2=101$. **Step 2:** Volume $=101×2=202$."},{"id":"D","text":"$205$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $11×10=110$.
**Step 2:** Remove corner: $3^2=9$ → base $101$.
**Step 3:** Volume $=101×2=202$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $202$

**Distractor analysis:**
- **A** ($110$): Forgot to subtract the removed corner.
- **B** ($101$): Area of base only, not volume.
- **D** ($205$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9a487f2e-2418-4bf5-af41-021ea9b65368', 'What is the volume of the box, in cubic inches?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 140" width="200" height="140" role="img" aria-label="Rectangle 12 by 11">
  <rect x="30" y="30" width="140" height="80" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="90" y="125" font-size="11">12 in</text>
  <text x="8" y="75" font-size="11" transform="rotate(-90 8 75)">11 in</text>
</svg>

A rectangular sheet is 12 by 11 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'figure', '[{"id":"A","text":"$132$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$123$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$246$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $132-3^2=123$. **Step 2:** Volume $=123×2=246$."},{"id":"D","text":"$249$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $12×11=132$.
**Step 2:** Remove corner: $3^2=9$ → base $123$.
**Step 3:** Volume $=123×2=246$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $246$

**Distractor analysis:**
- **A** ($132$): Forgot to subtract the removed corner.
- **B** ($123$): Area of base only, not volume.
- **D** ($249$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6daa5455-22d6-49f5-b404-8e6efdb3a1bd', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 13 by 12 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$156$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$147$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$294$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $156-3^2=147$. **Step 2:** Volume $=147×2=294$."},{"id":"D","text":"$297$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $13×12=156$.
**Step 2:** Remove corner: $3^2=9$ → base $147$.
**Step 3:** Volume $=147×2=294$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $294$

**Distractor analysis:**
- **A** ($156$): Forgot to subtract the removed corner.
- **B** ($147$): Area of base only, not volume.
- **D** ($297$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
