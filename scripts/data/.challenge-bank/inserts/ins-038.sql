BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('6218c465-56df-42e6-8b15-51e9e9c64b7b', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 13 by 12 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$156$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$147$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$294$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $156-3^2=147$. **Step 2:** Volume $=147×2=294$."},{"id":"D","text":"$297$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $13×12=156$.
**Step 2:** Remove corner: $3^2=9$ → base $147$.
**Step 3:** Volume $=147×2=294$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $294$

**Distractor analysis:**
- **A** ($156$): Forgot to subtract the removed corner.
- **B** ($147$): Area of base only, not volume.
- **D** ($297$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('a9612107-faa5-435d-b6bf-52aefaa466c5', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 14 by 13 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$182$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$173$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$346$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $182-3^2=173$. **Step 2:** Volume $=173×2=346$."},{"id":"D","text":"$349$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $14×13=182$.
**Step 2:** Remove corner: $3^2=9$ → base $173$.
**Step 3:** Volume $=173×2=346$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $346$

**Distractor analysis:**
- **A** ($182$): Forgot to subtract the removed corner.
- **B** ($173$): Area of base only, not volume.
- **D** ($349$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('1223d8af-b83a-4c77-be37-27b3d7bf919c', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 15 by 14 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$210$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$201$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$402$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $210-3^2=201$. **Step 2:** Volume $=201×2=402$."},{"id":"D","text":"$405$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $15×14=210$.
**Step 2:** Remove corner: $3^2=9$ → base $201$.
**Step 3:** Volume $=201×2=402$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $402$

**Distractor analysis:**
- **A** ($210$): Forgot to subtract the removed corner.
- **B** ($201$): Area of base only, not volume.
- **D** ($405$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('46e567e8-1be2-4ecd-8f90-ca5e4f9eb5e0', 'What is the volume of the box, in cubic inches?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 140" width="200" height="140" role="img" aria-label="Rectangle 16 by 15">
  <rect x="30" y="30" width="140" height="80" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="90" y="125" font-size="11">16 in</text>
  <text x="8" y="75" font-size="11" transform="rotate(-90 8 75)">15 in</text>
</svg>

A rectangular sheet is 16 by 15 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'figure', '[{"id":"A","text":"$240$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$231$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$462$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $240-3^2=231$. **Step 2:** Volume $=231×2=462$."},{"id":"D","text":"$465$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $16×15=240$.
**Step 2:** Remove corner: $3^2=9$ → base $231$.
**Step 3:** Volume $=231×2=462$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $462$

**Distractor analysis:**
- **A** ($240$): Forgot to subtract the removed corner.
- **B** ($231$): Area of base only, not volume.
- **D** ($465$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('6c6ac4ff-17d5-4e1e-931a-04b880f08422', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 17 by 16 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$272$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$263$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$526$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $272-3^2=263$. **Step 2:** Volume $=263×2=526$."},{"id":"D","text":"$529$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $17×16=272$.
**Step 2:** Remove corner: $3^2=9$ → base $263$.
**Step 3:** Volume $=263×2=526$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $526$

**Distractor analysis:**
- **A** ($272$): Forgot to subtract the removed corner.
- **B** ($263$): Area of base only, not volume.
- **D** ($529$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('8748a556-97d2-47c7-a8fb-396a7c88c066', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 18 by 17 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$306$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$297$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$594$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $306-3^2=297$. **Step 2:** Volume $=297×2=594$."},{"id":"D","text":"$597$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $18×17=306$.
**Step 2:** Remove corner: $3^2=9$ → base $297$.
**Step 3:** Volume $=297×2=594$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $594$

**Distractor analysis:**
- **A** ($306$): Forgot to subtract the removed corner.
- **B** ($297$): Area of base only, not volume.
- **D** ($597$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('fee0ae9e-c71c-484c-bb8b-9d2fa594f83c', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 19 by 18 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$342$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$333$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$666$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $342-3^2=333$. **Step 2:** Volume $=333×2=666$."},{"id":"D","text":"$669$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $19×18=342$.
**Step 2:** Remove corner: $3^2=9$ → base $333$.
**Step 3:** Volume $=333×2=666$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $666$

**Distractor analysis:**
- **A** ($342$): Forgot to subtract the removed corner.
- **B** ($333$): Area of base only, not volume.
- **D** ($669$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('b794d3d3-f5c7-4224-8f3a-a9a90eb7de4b', 'What is the volume of the box, in cubic inches?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 140" width="200" height="140" role="img" aria-label="Rectangle 20 by 19">
  <rect x="30" y="30" width="140" height="80" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="90" y="125" font-size="11">20 in</text>
  <text x="8" y="75" font-size="11" transform="rotate(-90 8 75)">19 in</text>
</svg>

A rectangular sheet is 20 by 19 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'figure', '[{"id":"A","text":"$380$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$371$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$742$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $380-3^2=371$. **Step 2:** Volume $=371×2=742$."},{"id":"D","text":"$745$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $20×19=380$.
**Step 2:** Remove corner: $3^2=9$ → base $371$.
**Step 3:** Volume $=371×2=742$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $742$

**Distractor analysis:**
- **A** ($380$): Forgot to subtract the removed corner.
- **B** ($371$): Area of base only, not volume.
- **D** ($745$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('ba30814b-a85f-45f0-9d65-e0a3ffdea681', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 21 by 20 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$420$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$411$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$822$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $420-3^2=411$. **Step 2:** Volume $=411×2=822$."},{"id":"D","text":"$825$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $21×20=420$.
**Step 2:** Remove corner: $3^2=9$ → base $411$.
**Step 3:** Volume $=411×2=822$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $822$

**Distractor analysis:**
- **A** ($420$): Forgot to subtract the removed corner.
- **B** ($411$): Area of base only, not volume.
- **D** ($825$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('27bf4c79-d9b6-431c-9a43-627e5fd5d1be', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 22 by 21 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$462$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$453$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$906$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $462-3^2=453$. **Step 2:** Volume $=453×2=906$."},{"id":"D","text":"$909$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $22×21=462$.
**Step 2:** Remove corner: $3^2=9$ → base $453$.
**Step 3:** Volume $=453×2=906$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $906$

**Distractor analysis:**
- **A** ($462$): Forgot to subtract the removed corner.
- **B** ($453$): Area of base only, not volume.
- **D** ($909$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('dae7d034-e88f-4f3a-b176-71c8bed582bc', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 23 by 22 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$506$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$497$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$994$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $506-3^2=497$. **Step 2:** Volume $=497×2=994$."},{"id":"D","text":"$997$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $23×22=506$.
**Step 2:** Remove corner: $3^2=9$ → base $497$.
**Step 3:** Volume $=497×2=994$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $994$

**Distractor analysis:**
- **A** ($506$): Forgot to subtract the removed corner.
- **B** ($497$): Area of base only, not volume.
- **D** ($997$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('9e78a8a8-ef27-466a-9249-0047a7602078', 'What is the volume of the box, in cubic inches?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 140" width="200" height="140" role="img" aria-label="Rectangle 24 by 23">
  <rect x="30" y="30" width="140" height="80" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="90" y="125" font-size="11">24 in</text>
  <text x="8" y="75" font-size="11" transform="rotate(-90 8 75)">23 in</text>
</svg>

A rectangular sheet is 24 by 23 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'figure', '[{"id":"A","text":"$552$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$543$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$1086$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $552-3^2=543$. **Step 2:** Volume $=543×2=1086$."},{"id":"D","text":"$1089$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $24×23=552$.
**Step 2:** Remove corner: $3^2=9$ → base $543$.
**Step 3:** Volume $=543×2=1086$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $1086$

**Distractor analysis:**
- **A** ($552$): Forgot to subtract the removed corner.
- **B** ($543$): Area of base only, not volume.
- **D** ($1089$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('dc230e49-b7de-468b-991d-047922e20c65', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 25 by 24 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$600$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$591$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$1182$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $600-3^2=591$. **Step 2:** Volume $=591×2=1182$."},{"id":"D","text":"$1185$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $25×24=600$.
**Step 2:** Remove corner: $3^2=9$ → base $591$.
**Step 3:** Volume $=591×2=1182$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $1182$

**Distractor analysis:**
- **A** ($600$): Forgot to subtract the removed corner.
- **B** ($591$): Area of base only, not volume.
- **D** ($1185$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('170211f7-27c0-47e7-8c65-359096631e97', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 26 by 25 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$650$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$641$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$1282$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $650-3^2=641$. **Step 2:** Volume $=641×2=1282$."},{"id":"D","text":"$1285$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $26×25=650$.
**Step 2:** Remove corner: $3^2=9$ → base $641$.
**Step 3:** Volume $=641×2=1282$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $1282$

**Distractor analysis:**
- **A** ($650$): Forgot to subtract the removed corner.
- **B** ($641$): Area of base only, not volume.
- **D** ($1285$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('8f2585f1-d417-40dd-bf47-d1ef0c37ef2d', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 27 by 26 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$702$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$693$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$1386$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $702-3^2=693$. **Step 2:** Volume $=693×2=1386$."},{"id":"D","text":"$1389$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $27×26=702$.
**Step 2:** Remove corner: $3^2=9$ → base $693$.
**Step 3:** Volume $=693×2=1386$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $1386$

**Distractor analysis:**
- **A** ($702$): Forgot to subtract the removed corner.
- **B** ($693$): Area of base only, not volume.
- **D** ($1389$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('4b770753-43f4-4111-83d0-67a83e2fc13a', 'What is the volume of the box, in cubic inches?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 140" width="200" height="140" role="img" aria-label="Rectangle 28 by 27">
  <rect x="30" y="30" width="140" height="80" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="90" y="125" font-size="11">28 in</text>
  <text x="8" y="75" font-size="11" transform="rotate(-90 8 75)">27 in</text>
</svg>

A rectangular sheet is 28 by 27 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'figure', '[{"id":"A","text":"$756$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$747$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$1494$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $756-3^2=747$. **Step 2:** Volume $=747×2=1494$."},{"id":"D","text":"$1497$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $28×27=756$.
**Step 2:** Remove corner: $3^2=9$ → base $747$.
**Step 3:** Volume $=747×2=1494$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $1494$

**Distractor analysis:**
- **A** ($756$): Forgot to subtract the removed corner.
- **B** ($747$): Area of base only, not volume.
- **D** ($1497$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('bb09cc41-335b-45c4-ae29-d2c5221cc808', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 29 by 28 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$812$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$803$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$1606$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $812-3^2=803$. **Step 2:** Volume $=803×2=1606$."},{"id":"D","text":"$1609$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $29×28=812$.
**Step 2:** Remove corner: $3^2=9$ → base $803$.
**Step 3:** Volume $=803×2=1606$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $1606$

**Distractor analysis:**
- **A** ($812$): Forgot to subtract the removed corner.
- **B** ($803$): Area of base only, not volume.
- **D** ($1609$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('adc60bd5-6c77-4637-a4b9-eed08f5dcce0', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 30 by 29 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$870$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$861$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$1722$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $870-3^2=861$. **Step 2:** Volume $=861×2=1722$."},{"id":"D","text":"$1725$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $30×29=870$.
**Step 2:** Remove corner: $3^2=9$ → base $861$.
**Step 3:** Volume $=861×2=1722$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $1722$

**Distractor analysis:**
- **A** ($870$): Forgot to subtract the removed corner.
- **B** ($861$): Area of base only, not volume.
- **D** ($1725$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('8144eef2-b440-4179-8384-fb8a6b46917e', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 31 by 30 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$930$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$921$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$1842$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $930-3^2=921$. **Step 2:** Volume $=921×2=1842$."},{"id":"D","text":"$1845$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $31×30=930$.
**Step 2:** Remove corner: $3^2=9$ → base $921$.
**Step 3:** Volume $=921×2=1842$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $1842$

**Distractor analysis:**
- **A** ($930$): Forgot to subtract the removed corner.
- **B** ($921$): Area of base only, not volume.
- **D** ($1845$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('6050ad53-2971-406d-be7f-fcd4556d1f69', 'What is the volume of the box, in cubic inches?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 140" width="200" height="140" role="img" aria-label="Rectangle 32 by 31">
  <rect x="30" y="30" width="140" height="80" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="90" y="125" font-size="11">32 in</text>
  <text x="8" y="75" font-size="11" transform="rotate(-90 8 75)">31 in</text>
</svg>

A rectangular sheet is 32 by 31 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'figure', '[{"id":"A","text":"$992$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$983$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$1966$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $992-3^2=983$. **Step 2:** Volume $=983×2=1966$."},{"id":"D","text":"$1969$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $32×31=992$.
**Step 2:** Remove corner: $3^2=9$ → base $983$.
**Step 3:** Volume $=983×2=1966$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $1966$

**Distractor analysis:**
- **A** ($992$): Forgot to subtract the removed corner.
- **B** ($983$): Area of base only, not volume.
- **D** ($1969$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('9a200432-188b-42a8-b484-11060bc5c1a1', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 33 by 32 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$1056$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$1047$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$2094$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $1056-3^2=1047$. **Step 2:** Volume $=1047×2=2094$."},{"id":"D","text":"$2097$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $33×32=1056$.
**Step 2:** Remove corner: $3^2=9$ → base $1047$.
**Step 3:** Volume $=1047×2=2094$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $2094$

**Distractor analysis:**
- **A** ($1056$): Forgot to subtract the removed corner.
- **B** ($1047$): Area of base only, not volume.
- **D** ($2097$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('6ad75f5f-ac05-4c81-aec4-4aa9ea7b9a3e', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 34 by 33 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$1122$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$1113$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$2226$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $1122-3^2=1113$. **Step 2:** Volume $=1113×2=2226$."},{"id":"D","text":"$2229$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $34×33=1122$.
**Step 2:** Remove corner: $3^2=9$ → base $1113$.
**Step 3:** Volume $=1113×2=2226$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $2226$

**Distractor analysis:**
- **A** ($1122$): Forgot to subtract the removed corner.
- **B** ($1113$): Area of base only, not volume.
- **D** ($2229$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('5b669485-8af1-4bee-a5f8-2029992ae585', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 35 by 34 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$1190$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$1181$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$2362$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $1190-3^2=1181$. **Step 2:** Volume $=1181×2=2362$."},{"id":"D","text":"$2365$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $35×34=1190$.
**Step 2:** Remove corner: $3^2=9$ → base $1181$.
**Step 3:** Volume $=1181×2=2362$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $2362$

**Distractor analysis:**
- **A** ($1190$): Forgot to subtract the removed corner.
- **B** ($1181$): Area of base only, not volume.
- **D** ($2365$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('28b28059-fd3a-4a32-af42-f561314e6159', 'What is the volume of the box, in cubic inches?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 140" width="200" height="140" role="img" aria-label="Rectangle 36 by 35">
  <rect x="30" y="30" width="140" height="80" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="90" y="125" font-size="11">36 in</text>
  <text x="8" y="75" font-size="11" transform="rotate(-90 8 75)">35 in</text>
</svg>

A rectangular sheet is 36 by 35 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'figure', '[{"id":"A","text":"$1260$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$1251$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$2502$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $1260-3^2=1251$. **Step 2:** Volume $=1251×2=2502$."},{"id":"D","text":"$2505$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $36×35=1260$.
**Step 2:** Remove corner: $3^2=9$ → base $1251$.
**Step 3:** Volume $=1251×2=2502$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $2502$

**Distractor analysis:**
- **A** ($1260$): Forgot to subtract the removed corner.
- **B** ($1251$): Area of base only, not volume.
- **D** ($2505$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('738e9cf5-b470-4011-a2d7-6e18eb758d78', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 37 by 36 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$1332$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$1323$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$2646$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $1332-3^2=1323$. **Step 2:** Volume $=1323×2=2646$."},{"id":"D","text":"$2649$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $37×36=1332$.
**Step 2:** Remove corner: $3^2=9$ → base $1323$.
**Step 3:** Volume $=1323×2=2646$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $2646$

**Distractor analysis:**
- **A** ($1332$): Forgot to subtract the removed corner.
- **B** ($1323$): Area of base only, not volume.
- **D** ($2649$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('4f57ef56-cbc2-4c8f-a3db-d55fd0b9e6c2', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 38 by 37 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$1406$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$1397$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$2794$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $1406-3^2=1397$. **Step 2:** Volume $=1397×2=2794$."},{"id":"D","text":"$2797$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $38×37=1406$.
**Step 2:** Remove corner: $3^2=9$ → base $1397$.
**Step 3:** Volume $=1397×2=2794$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $2794$

**Distractor analysis:**
- **A** ($1406$): Forgot to subtract the removed corner.
- **B** ($1397$): Area of base only, not volume.
- **D** ($2797$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('1e1367fb-97a5-435e-a612-e54278dc476d', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 39 by 38 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$1482$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$1473$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$2946$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $1482-3^2=1473$. **Step 2:** Volume $=1473×2=2946$."},{"id":"D","text":"$2949$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $39×38=1482$.
**Step 2:** Remove corner: $3^2=9$ → base $1473$.
**Step 3:** Volume $=1473×2=2946$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $2946$

**Distractor analysis:**
- **A** ($1482$): Forgot to subtract the removed corner.
- **B** ($1473$): Area of base only, not volume.
- **D** ($2949$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('cff343cc-a15e-4632-bb9e-de35477a2612', 'What is the volume of the box, in cubic inches?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 140" width="200" height="140" role="img" aria-label="Rectangle 40 by 39">
  <rect x="30" y="30" width="140" height="80" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="90" y="125" font-size="11">40 in</text>
  <text x="8" y="75" font-size="11" transform="rotate(-90 8 75)">39 in</text>
</svg>

A rectangular sheet is 40 by 39 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'figure', '[{"id":"A","text":"$1560$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$1551$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$3102$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $1560-3^2=1551$. **Step 2:** Volume $=1551×2=3102$."},{"id":"D","text":"$3105$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $40×39=1560$.
**Step 2:** Remove corner: $3^2=9$ → base $1551$.
**Step 3:** Volume $=1551×2=3102$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $3102$

**Distractor analysis:**
- **A** ($1560$): Forgot to subtract the removed corner.
- **B** ($1551$): Area of base only, not volume.
- **D** ($3105$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('0274d05a-9100-4cd6-a863-aafb69e16fe7', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 41 by 40 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$1640$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$1631$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$3262$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $1640-3^2=1631$. **Step 2:** Volume $=1631×2=3262$."},{"id":"D","text":"$3265$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $41×40=1640$.
**Step 2:** Remove corner: $3^2=9$ → base $1631$.
**Step 3:** Volume $=1631×2=3262$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $3262$

**Distractor analysis:**
- **A** ($1640$): Forgot to subtract the removed corner.
- **B** ($1631$): Area of base only, not volume.
- **D** ($3265$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('5ca11010-2381-4992-95f5-e34836c11390', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 42 by 41 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$1722$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$1713$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$3426$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $1722-3^2=1713$. **Step 2:** Volume $=1713×2=3426$."},{"id":"D","text":"$3429$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $42×41=1722$.
**Step 2:** Remove corner: $3^2=9$ → base $1713$.
**Step 3:** Volume $=1713×2=3426$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $3426$

**Distractor analysis:**
- **A** ($1722$): Forgot to subtract the removed corner.
- **B** ($1713$): Area of base only, not volume.
- **D** ($3429$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('db0e4d5b-c21b-44f6-941b-1e28f0e7b0ff', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 43 by 42 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$1806$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$1797$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$3594$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $1806-3^2=1797$. **Step 2:** Volume $=1797×2=3594$."},{"id":"D","text":"$3597$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $43×42=1806$.
**Step 2:** Remove corner: $3^2=9$ → base $1797$.
**Step 3:** Volume $=1797×2=3594$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $3594$

**Distractor analysis:**
- **A** ($1806$): Forgot to subtract the removed corner.
- **B** ($1797$): Area of base only, not volume.
- **D** ($3597$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('30ac5b80-531c-45a2-b3d6-b49740de81e4', 'What is the volume of the box, in cubic inches?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 140" width="200" height="140" role="img" aria-label="Rectangle 44 by 43">
  <rect x="30" y="30" width="140" height="80" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="90" y="125" font-size="11">44 in</text>
  <text x="8" y="75" font-size="11" transform="rotate(-90 8 75)">43 in</text>
</svg>

A rectangular sheet is 44 by 43 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'figure', '[{"id":"A","text":"$1892$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$1883$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$3766$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $1892-3^2=1883$. **Step 2:** Volume $=1883×2=3766$."},{"id":"D","text":"$3769$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $44×43=1892$.
**Step 2:** Remove corner: $3^2=9$ → base $1883$.
**Step 3:** Volume $=1883×2=3766$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $3766$

**Distractor analysis:**
- **A** ($1892$): Forgot to subtract the removed corner.
- **B** ($1883$): Area of base only, not volume.
- **D** ($3769$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('83f0e922-8d63-463a-a10a-7a83abe01464', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 45 by 44 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$1980$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$1971$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$3942$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $1980-3^2=1971$. **Step 2:** Volume $=1971×2=3942$."},{"id":"D","text":"$3945$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $45×44=1980$.
**Step 2:** Remove corner: $3^2=9$ → base $1971$.
**Step 3:** Volume $=1971×2=3942$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $3942$

**Distractor analysis:**
- **A** ($1980$): Forgot to subtract the removed corner.
- **B** ($1971$): Area of base only, not volume.
- **D** ($3945$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('14494cb0-a005-443f-b061-e13804df70f2', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 46 by 45 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$2070$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$2061$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$4122$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $2070-3^2=2061$. **Step 2:** Volume $=2061×2=4122$."},{"id":"D","text":"$4125$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $46×45=2070$.
**Step 2:** Remove corner: $3^2=9$ → base $2061$.
**Step 3:** Volume $=2061×2=4122$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $4122$

**Distractor analysis:**
- **A** ($2070$): Forgot to subtract the removed corner.
- **B** ($2061$): Area of base only, not volume.
- **D** ($4125$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('cf2a39fe-1c87-4b2e-bf47-b08eb38f56d2', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 47 by 46 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$2162$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$2153$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$4306$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $2162-3^2=2153$. **Step 2:** Volume $=2153×2=4306$."},{"id":"D","text":"$4309$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $47×46=2162$.
**Step 2:** Remove corner: $3^2=9$ → base $2153$.
**Step 3:** Volume $=2153×2=4306$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $4306$

**Distractor analysis:**
- **A** ($2162$): Forgot to subtract the removed corner.
- **B** ($2153$): Area of base only, not volume.
- **D** ($4309$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('a2be99cb-909e-4517-ab58-a182040abaf8', 'What is the volume of the box, in cubic inches?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 140" width="200" height="140" role="img" aria-label="Rectangle 8 by 7">
  <rect x="30" y="30" width="140" height="80" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="90" y="125" font-size="11">8 in</text>
  <text x="8" y="75" font-size="11" transform="rotate(-90 8 75)">7 in</text>
</svg>

A rectangular sheet is 48 by 47 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'figure', '[{"id":"A","text":"$2256$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$2247$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$4494$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $2256-3^2=2247$. **Step 2:** Volume $=2247×2=4494$."},{"id":"D","text":"$4497$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $48×47=2256$.
**Step 2:** Remove corner: $3^2=9$ → base $2247$.
**Step 3:** Volume $=2247×2=4494$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $4494$

**Distractor analysis:**
- **A** ($2256$): Forgot to subtract the removed corner.
- **B** ($2247$): Area of base only, not volume.
- **D** ($4497$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('be2b7ce9-4d54-45df-9fe5-568312f837ae', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 49 by 48 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$2352$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$2343$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$4686$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $2352-3^2=2343$. **Step 2:** Volume $=2343×2=4686$."},{"id":"D","text":"$4689$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $49×48=2352$.
**Step 2:** Remove corner: $3^2=9$ → base $2343$.
**Step 3:** Volume $=2343×2=4686$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $4686$

**Distractor analysis:**
- **A** ($2352$): Forgot to subtract the removed corner.
- **B** ($2343$): Area of base only, not volume.
- **D** ($4689$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('d6e69587-6a07-4dbf-a3f0-ae386777d38d', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 50 by 49 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$2450$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$2441$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$4882$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $2450-3^2=2441$. **Step 2:** Volume $=2441×2=4882$."},{"id":"D","text":"$4885$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $50×49=2450$.
**Step 2:** Remove corner: $3^2=9$ → base $2441$.
**Step 3:** Volume $=2441×2=4882$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $4882$

**Distractor analysis:**
- **A** ($2450$): Forgot to subtract the removed corner.
- **B** ($2441$): Area of base only, not volume.
- **D** ($4885$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('91bdf40d-5fcc-461f-8794-9fe768fb2bb2', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 51 by 50 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$2550$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$2541$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$5082$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $2550-3^2=2541$. **Step 2:** Volume $=2541×2=5082$."},{"id":"D","text":"$5085$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $51×50=2550$.
**Step 2:** Remove corner: $3^2=9$ → base $2541$.
**Step 3:** Volume $=2541×2=5082$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $5082$

**Distractor analysis:**
- **A** ($2550$): Forgot to subtract the removed corner.
- **B** ($2541$): Area of base only, not volume.
- **D** ($5085$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('10206cbc-5b31-4d04-81a9-c6bfc84e1b29', 'What is the volume of the box, in cubic inches?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 140" width="200" height="140" role="img" aria-label="Rectangle 12 by 11">
  <rect x="30" y="30" width="140" height="80" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="90" y="125" font-size="11">12 in</text>
  <text x="8" y="75" font-size="11" transform="rotate(-90 8 75)">11 in</text>
</svg>

A rectangular sheet is 52 by 51 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'figure', '[{"id":"A","text":"$2652$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$2643$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$5286$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $2652-3^2=2643$. **Step 2:** Volume $=2643×2=5286$."},{"id":"D","text":"$5289$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $52×51=2652$.
**Step 2:** Remove corner: $3^2=9$ → base $2643$.
**Step 3:** Volume $=2643×2=5286$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $5286$

**Distractor analysis:**
- **A** ($2652$): Forgot to subtract the removed corner.
- **B** ($2643$): Area of base only, not volume.
- **D** ($5289$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
COMMIT;
