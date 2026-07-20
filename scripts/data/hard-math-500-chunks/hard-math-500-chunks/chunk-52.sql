BEGIN;
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

COMMIT;
