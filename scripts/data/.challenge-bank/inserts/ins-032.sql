BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('db6358da-7ae5-4720-9a19-4c6f077a63a2', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $4:11$ over 28 hours at 3 tasks/hour combined.', 'passage', '[{"id":"A","text":"$331$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$334$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$336$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=3×28×(4+11)=1260$. **Step 2:** A''s share $\\frac{4}{15}×1260=336$."},{"id":"D","text":"$1260$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=3×28×(4+11)=1260$ tasks.
**Step 2:** A''s fraction $\frac{4}{15}$.
**Step 3:** $\frac{4}{15}×1260=336$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $336$

**Distractor analysis:**
- **A** ($331$): Underestimates A''s share of the total.
- **B** ($334$): Close but ratio arithmetic is off.
- **D** ($1260$): That is the combined total, not worker A''s count.', NULL, 'Algebra', NULL, 'math', NULL, 'RAT', 'RAT', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('89d53e14-b138-4f41-85d3-ae65f8f21136', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $5:7$ over 29 hours at 4 tasks/hour combined.', 'passage', '[{"id":"A","text":"$575$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$578$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$580$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=4×29×(5+7)=1392$. **Step 2:** A''s share $\\frac{5}{12}×1392=580$."},{"id":"D","text":"$1392$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=4×29×(5+7)=1392$ tasks.
**Step 2:** A''s fraction $\frac{5}{12}$.
**Step 3:** $\frac{5}{12}×1392=580$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $580$

**Distractor analysis:**
- **A** ($575$): Underestimates A''s share of the total.
- **B** ($578$): Close but ratio arithmetic is off.
- **D** ($1392$): That is the combined total, not worker A''s count.', NULL, 'Algebra', NULL, 'math', NULL, 'RAT', 'RAT', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('c3a3f87f-1247-4b67-a2fe-a823b872a421', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $6:8$ over 30 hours at 5 tasks/hour combined.', 'passage', '[{"id":"A","text":"$895$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$898$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$900$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=5×30×(6+8)=2100$. **Step 2:** A''s share $\\frac{6}{14}×2100=900$."},{"id":"D","text":"$2100$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=5×30×(6+8)=2100$ tasks.
**Step 2:** A''s fraction $\frac{6}{14}$.
**Step 3:** $\frac{6}{14}×2100=900$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $900$

**Distractor analysis:**
- **A** ($895$): Underestimates A''s share of the total.
- **B** ($898$): Close but ratio arithmetic is off.
- **D** ($2100$): That is the combined total, not worker A''s count.', NULL, 'Algebra', NULL, 'math', NULL, 'RAT', 'RAT', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('7c113694-3efb-4da8-b566-49de7c24cced', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $7:9$ over 31 hours at 3 tasks/hour combined.', 'passage', '[{"id":"A","text":"$646$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$649$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$651$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=3×31×(7+9)=1488$. **Step 2:** A''s share $\\frac{7}{16}×1488=651$."},{"id":"D","text":"$1488$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=3×31×(7+9)=1488$ tasks.
**Step 2:** A''s fraction $\frac{7}{16}$.
**Step 3:** $\frac{7}{16}×1488=651$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $651$

**Distractor analysis:**
- **A** ($646$): Underestimates A''s share of the total.
- **B** ($649$): Close but ratio arithmetic is off.
- **D** ($1488$): That is the combined total, not worker A''s count.', NULL, 'Algebra', NULL, 'math', NULL, 'RAT', 'RAT', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('f0e70e24-16a0-47a5-913e-30e4f2933e9c', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $4:10$ over 32 hours at 4 tasks/hour combined.', 'passage', '[{"id":"A","text":"$507$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$510$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$512$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=4×32×(4+10)=1792$. **Step 2:** A''s share $\\frac{4}{14}×1792=512$."},{"id":"D","text":"$1792$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=4×32×(4+10)=1792$ tasks.
**Step 2:** A''s fraction $\frac{4}{14}$.
**Step 3:** $\frac{4}{14}×1792=512$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $512$

**Distractor analysis:**
- **A** ($507$): Underestimates A''s share of the total.
- **B** ($510$): Close but ratio arithmetic is off.
- **D** ($1792$): That is the combined total, not worker A''s count.', NULL, 'Algebra', NULL, 'math', NULL, 'RAT', 'RAT', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('10c4b492-745e-40f4-9332-3cc186ec3d18', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $5:11$ over 33 hours at 5 tasks/hour combined.', 'passage', '[{"id":"A","text":"$820$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$823$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$825$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=5×33×(5+11)=2640$. **Step 2:** A''s share $\\frac{5}{16}×2640=825$."},{"id":"D","text":"$2640$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=5×33×(5+11)=2640$ tasks.
**Step 2:** A''s fraction $\frac{5}{16}$.
**Step 3:** $\frac{5}{16}×2640=825$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $825$

**Distractor analysis:**
- **A** ($820$): Underestimates A''s share of the total.
- **B** ($823$): Close but ratio arithmetic is off.
- **D** ($2640$): That is the combined total, not worker A''s count.', NULL, 'Algebra', NULL, 'math', NULL, 'RAT', 'RAT', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('5626b048-27b5-4b70-b387-831b24dc9b05', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $6:7$ over 34 hours at 3 tasks/hour combined.', 'passage', '[{"id":"A","text":"$607$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$610$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$612$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=3×34×(6+7)=1326$. **Step 2:** A''s share $\\frac{6}{13}×1326=612$."},{"id":"D","text":"$1326$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=3×34×(6+7)=1326$ tasks.
**Step 2:** A''s fraction $\frac{6}{13}$.
**Step 3:** $\frac{6}{13}×1326=612$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $612$

**Distractor analysis:**
- **A** ($607$): Underestimates A''s share of the total.
- **B** ($610$): Close but ratio arithmetic is off.
- **D** ($1326$): That is the combined total, not worker A''s count.', NULL, 'Algebra', NULL, 'math', NULL, 'RAT', 'RAT', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('813f6d1a-c7a5-4299-afef-c29c419a0b5f', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $7:8$ over 35 hours at 4 tasks/hour combined.', 'passage', '[{"id":"A","text":"$975$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$978$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$980$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=4×35×(7+8)=2100$. **Step 2:** A''s share $\\frac{7}{15}×2100=980$."},{"id":"D","text":"$2100$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=4×35×(7+8)=2100$ tasks.
**Step 2:** A''s fraction $\frac{7}{15}$.
**Step 3:** $\frac{7}{15}×2100=980$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $980$

**Distractor analysis:**
- **A** ($975$): Underestimates A''s share of the total.
- **B** ($978$): Close but ratio arithmetic is off.
- **D** ($2100$): That is the combined total, not worker A''s count.', NULL, 'Algebra', NULL, 'math', NULL, 'RAT', 'RAT', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('a3fa08dd-34c1-4552-b416-9f8cb5fb65ce', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $4:9$ over 36 hours at 5 tasks/hour combined.', 'passage', '[{"id":"A","text":"$715$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$718$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$720$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=5×36×(4+9)=2340$. **Step 2:** A''s share $\\frac{4}{13}×2340=720$."},{"id":"D","text":"$2340$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=5×36×(4+9)=2340$ tasks.
**Step 2:** A''s fraction $\frac{4}{13}$.
**Step 3:** $\frac{4}{13}×2340=720$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $720$

**Distractor analysis:**
- **A** ($715$): Underestimates A''s share of the total.
- **B** ($718$): Close but ratio arithmetic is off.
- **D** ($2340$): That is the combined total, not worker A''s count.', NULL, 'Algebra', NULL, 'math', NULL, 'RAT', 'RAT', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('3934524d-3f65-4d2a-ad13-5972403d2532', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $5:10$ over 37 hours at 3 tasks/hour combined.', 'passage', '[{"id":"A","text":"$550$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$553$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$555$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=3×37×(5+10)=1665$. **Step 2:** A''s share $\\frac{5}{15}×1665=555$."},{"id":"D","text":"$1665$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=3×37×(5+10)=1665$ tasks.
**Step 2:** A''s fraction $\frac{5}{15}$.
**Step 3:** $\frac{5}{15}×1665=555$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $555$

**Distractor analysis:**
- **A** ($550$): Underestimates A''s share of the total.
- **B** ($553$): Close but ratio arithmetic is off.
- **D** ($1665$): That is the combined total, not worker A''s count.', NULL, 'Algebra', NULL, 'math', NULL, 'RAT', 'RAT', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('17d3b4bb-4437-402c-9cbe-7f98982c9c4c', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $6:11$ over 38 hours at 4 tasks/hour combined.', 'passage', '[{"id":"A","text":"$907$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$910$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$912$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=4×38×(6+11)=2584$. **Step 2:** A''s share $\\frac{6}{17}×2584=912$."},{"id":"D","text":"$2584$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=4×38×(6+11)=2584$ tasks.
**Step 2:** A''s fraction $\frac{6}{17}$.
**Step 3:** $\frac{6}{17}×2584=912$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $912$

**Distractor analysis:**
- **A** ($907$): Underestimates A''s share of the total.
- **B** ($910$): Close but ratio arithmetic is off.
- **D** ($2584$): That is the combined total, not worker A''s count.', NULL, 'Algebra', NULL, 'math', NULL, 'RAT', 'RAT', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('cbac0b8c-2a32-40b6-b12c-9aeccf31d1eb', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $7:7$ over 39 hours at 5 tasks/hour combined.', 'passage', '[{"id":"A","text":"$1360$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$1363$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$1365$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=5×39×(7+7)=2730$. **Step 2:** A''s share $\\frac{7}{14}×2730=1365$."},{"id":"D","text":"$2730$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=5×39×(7+7)=2730$ tasks.
**Step 2:** A''s fraction $\frac{7}{14}$.
**Step 3:** $\frac{7}{14}×2730=1365$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $1365$

**Distractor analysis:**
- **A** ($1360$): Underestimates A''s share of the total.
- **B** ($1363$): Close but ratio arithmetic is off.
- **D** ($2730$): That is the combined total, not worker A''s count.', NULL, 'Algebra', NULL, 'math', NULL, 'RAT', 'RAT', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('7e7945c2-883c-4bb2-904d-7ab70fca390c', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $4:8$ over 40 hours at 3 tasks/hour combined.', 'passage', '[{"id":"A","text":"$475$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$478$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$480$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=3×40×(4+8)=1440$. **Step 2:** A''s share $\\frac{4}{12}×1440=480$."},{"id":"D","text":"$1440$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=3×40×(4+8)=1440$ tasks.
**Step 2:** A''s fraction $\frac{4}{12}$.
**Step 3:** $\frac{4}{12}×1440=480$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $480$

**Distractor analysis:**
- **A** ($475$): Underestimates A''s share of the total.
- **B** ($478$): Close but ratio arithmetic is off.
- **D** ($1440$): That is the combined total, not worker A''s count.', NULL, 'Algebra', NULL, 'math', NULL, 'RAT', 'RAT', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('08f5f5da-3efe-4c5c-a237-6643afaa72f0', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $5:9$ over 41 hours at 4 tasks/hour combined.', 'passage', '[{"id":"A","text":"$815$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$818$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$820$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=4×41×(5+9)=2296$. **Step 2:** A''s share $\\frac{5}{14}×2296=820$."},{"id":"D","text":"$2296$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=4×41×(5+9)=2296$ tasks.
**Step 2:** A''s fraction $\frac{5}{14}$.
**Step 3:** $\frac{5}{14}×2296=820$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $820$

**Distractor analysis:**
- **A** ($815$): Underestimates A''s share of the total.
- **B** ($818$): Close but ratio arithmetic is off.
- **D** ($2296$): That is the combined total, not worker A''s count.', NULL, 'Algebra', NULL, 'math', NULL, 'RAT', 'RAT', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('1ccce59a-ef38-4759-903a-a94abc2a83da', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $6:10$ over 42 hours at 5 tasks/hour combined.', 'passage', '[{"id":"A","text":"$1255$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$1258$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$1260$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=5×42×(6+10)=3360$. **Step 2:** A''s share $\\frac{6}{16}×3360=1260$."},{"id":"D","text":"$3360$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=5×42×(6+10)=3360$ tasks.
**Step 2:** A''s fraction $\frac{6}{16}$.
**Step 3:** $\frac{6}{16}×3360=1260$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $1260$

**Distractor analysis:**
- **A** ($1255$): Underestimates A''s share of the total.
- **B** ($1258$): Close but ratio arithmetic is off.
- **D** ($3360$): That is the combined total, not worker A''s count.', NULL, 'Algebra', NULL, 'math', NULL, 'RAT', 'RAT', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('b61a8434-1727-4500-9a91-a5e66a1ef14f', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $7:11$ over 43 hours at 3 tasks/hour combined.', 'passage', '[{"id":"A","text":"$898$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$901$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$903$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=3×43×(7+11)=2322$. **Step 2:** A''s share $\\frac{7}{18}×2322=903$."},{"id":"D","text":"$2322$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=3×43×(7+11)=2322$ tasks.
**Step 2:** A''s fraction $\frac{7}{18}$.
**Step 3:** $\frac{7}{18}×2322=903$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $903$

**Distractor analysis:**
- **A** ($898$): Underestimates A''s share of the total.
- **B** ($901$): Close but ratio arithmetic is off.
- **D** ($2322$): That is the combined total, not worker A''s count.', NULL, 'Algebra', NULL, 'math', NULL, 'RAT', 'RAT', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('10f09a57-3658-471f-9c55-ec907d314768', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $4:7$ over 44 hours at 4 tasks/hour combined.', 'passage', '[{"id":"A","text":"$699$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$702$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$704$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=4×44×(4+7)=1936$. **Step 2:** A''s share $\\frac{4}{11}×1936=704$."},{"id":"D","text":"$1936$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=4×44×(4+7)=1936$ tasks.
**Step 2:** A''s fraction $\frac{4}{11}$.
**Step 3:** $\frac{4}{11}×1936=704$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $704$

**Distractor analysis:**
- **A** ($699$): Underestimates A''s share of the total.
- **B** ($702$): Close but ratio arithmetic is off.
- **D** ($1936$): That is the combined total, not worker A''s count.', NULL, 'Algebra', NULL, 'math', NULL, 'RAT', 'RAT', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('a5eac41a-1c76-43b2-9b0d-9d7b336fd8e4', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $5:8$ over 45 hours at 5 tasks/hour combined.', 'passage', '[{"id":"A","text":"$1120$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$1123$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$1125$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=5×45×(5+8)=2925$. **Step 2:** A''s share $\\frac{5}{13}×2925=1125$."},{"id":"D","text":"$2925$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=5×45×(5+8)=2925$ tasks.
**Step 2:** A''s fraction $\frac{5}{13}$.
**Step 3:** $\frac{5}{13}×2925=1125$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $1125$

**Distractor analysis:**
- **A** ($1120$): Underestimates A''s share of the total.
- **B** ($1123$): Close but ratio arithmetic is off.
- **D** ($2925$): That is the combined total, not worker A''s count.', NULL, 'Algebra', NULL, 'math', NULL, 'RAT', 'RAT', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('91792c09-31c8-4999-b776-aabb180f31a4', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $6:9$ over 46 hours at 3 tasks/hour combined.', 'passage', '[{"id":"A","text":"$823$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$826$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$828$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=3×46×(6+9)=2070$. **Step 2:** A''s share $\\frac{6}{15}×2070=828$."},{"id":"D","text":"$2070$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=3×46×(6+9)=2070$ tasks.
**Step 2:** A''s fraction $\frac{6}{15}$.
**Step 3:** $\frac{6}{15}×2070=828$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $828$

**Distractor analysis:**
- **A** ($823$): Underestimates A''s share of the total.
- **B** ($826$): Close but ratio arithmetic is off.
- **D** ($2070$): That is the combined total, not worker A''s count.', NULL, 'Algebra', NULL, 'math', NULL, 'RAT', 'RAT', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('66b5f2f6-7a44-4d78-88fa-749c1dee6020', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $7:10$ over 47 hours at 4 tasks/hour combined.', 'passage', '[{"id":"A","text":"$1311$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$1314$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$1316$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=4×47×(7+10)=3196$. **Step 2:** A''s share $\\frac{7}{17}×3196=1316$."},{"id":"D","text":"$3196$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=4×47×(7+10)=3196$ tasks.
**Step 2:** A''s fraction $\frac{7}{17}$.
**Step 3:** $\frac{7}{17}×3196=1316$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $1316$

**Distractor analysis:**
- **A** ($1311$): Underestimates A''s share of the total.
- **B** ($1314$): Close but ratio arithmetic is off.
- **D** ($3196$): That is the combined total, not worker A''s count.', NULL, 'Algebra', NULL, 'math', NULL, 'RAT', 'RAT', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('336b0a39-9f49-45db-a53f-bb3e94d9983f', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $4:11$ over 48 hours at 5 tasks/hour combined.', 'passage', '[{"id":"A","text":"$955$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$958$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$960$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=5×48×(4+11)=3600$. **Step 2:** A''s share $\\frac{4}{15}×3600=960$."},{"id":"D","text":"$3600$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=5×48×(4+11)=3600$ tasks.
**Step 2:** A''s fraction $\frac{4}{15}$.
**Step 3:** $\frac{4}{15}×3600=960$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $960$

**Distractor analysis:**
- **A** ($955$): Underestimates A''s share of the total.
- **B** ($958$): Close but ratio arithmetic is off.
- **D** ($3600$): That is the combined total, not worker A''s count.', NULL, 'Algebra', NULL, 'math', NULL, 'RAT', 'RAT', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('260a23cd-021b-4d5a-b74d-344517b9521f', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $5:7$ over 49 hours at 3 tasks/hour combined.', 'passage', '[{"id":"A","text":"$730$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$733$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$735$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=3×49×(5+7)=1764$. **Step 2:** A''s share $\\frac{5}{12}×1764=735$."},{"id":"D","text":"$1764$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=3×49×(5+7)=1764$ tasks.
**Step 2:** A''s fraction $\frac{5}{12}$.
**Step 3:** $\frac{5}{12}×1764=735$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $735$

**Distractor analysis:**
- **A** ($730$): Underestimates A''s share of the total.
- **B** ($733$): Close but ratio arithmetic is off.
- **D** ($1764$): That is the combined total, not worker A''s count.', NULL, 'Algebra', NULL, 'math', NULL, 'RAT', 'RAT', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('5455b68e-a18d-44e7-864a-b5d14e1f05fc', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $6:8$ over 50 hours at 4 tasks/hour combined.', 'passage', '[{"id":"A","text":"$1195$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$1198$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$1200$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=4×50×(6+8)=2800$. **Step 2:** A''s share $\\frac{6}{14}×2800=1200$."},{"id":"D","text":"$2800$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=4×50×(6+8)=2800$ tasks.
**Step 2:** A''s fraction $\frac{6}{14}$.
**Step 3:** $\frac{6}{14}×2800=1200$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $1200$

**Distractor analysis:**
- **A** ($1195$): Underestimates A''s share of the total.
- **B** ($1198$): Close but ratio arithmetic is off.
- **D** ($2800$): That is the combined total, not worker A''s count.', NULL, 'Algebra', NULL, 'math', NULL, 'RAT', 'RAT', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('f198ed6a-000a-42f6-aab2-f0b1d216af4c', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $7:9$ over 51 hours at 5 tasks/hour combined.', 'passage', '[{"id":"A","text":"$1780$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$1783$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$1785$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=5×51×(7+9)=4080$. **Step 2:** A''s share $\\frac{7}{16}×4080=1785$."},{"id":"D","text":"$4080$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=5×51×(7+9)=4080$ tasks.
**Step 2:** A''s fraction $\frac{7}{16}$.
**Step 3:** $\frac{7}{16}×4080=1785$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $1785$

**Distractor analysis:**
- **A** ($1780$): Underestimates A''s share of the total.
- **B** ($1783$): Close but ratio arithmetic is off.
- **D** ($4080$): That is the combined total, not worker A''s count.', NULL, 'Algebra', NULL, 'math', NULL, 'RAT', 'RAT', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('eb16104c-f856-4c04-a2b7-f5a72e197a84', 'If the original price is $120$, what is the final price after both changes?', 'A price is marked up 25%, then discounted 15% on the new price.', 'passage', '[{"id":"A","text":"$128$","is_correct":true,"explanation":"Correct (A). **Step 1:** $120×1.25=150$. **Step 2:** $150×0.85=128$."},{"id":"B","text":"$120$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$150$","is_correct":false,"explanation":"Choice C ($150$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$132$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $120$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $120×(1+25/100)=150$.
**Step 2:** Discount on new price: $150×(1-15/100)=128$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $128$

**Distractor analysis:**
- **B** ($120$): Ignores both percent changes.
- **C** ($150$): Choice C ($150$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($132$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('34b4959d-dfbd-4fdd-be4f-4e0d46437dbc', 'If the original price is $135$, what is the final price after both changes?', 'A price is marked up 30%, then discounted 20% on the new price.', 'passage', '[{"id":"A","text":"$141$","is_correct":true,"explanation":"Correct (A). **Step 1:** $135×1.3=176$. **Step 2:** $176×0.8=141$."},{"id":"B","text":"$135$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$176$","is_correct":false,"explanation":"Choice C ($176$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$149$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $135$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $135×(1+30/100)=176$.
**Step 2:** Discount on new price: $176×(1-20/100)=141$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $141$

**Distractor analysis:**
- **B** ($135$): Ignores both percent changes.
- **C** ($176$): Choice C ($176$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($149$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('257e9af0-68f9-4c49-ba8d-d01efd9fe901', 'If the original price is $150$, what is the final price after both changes?', 'A price is marked up 35%, then discounted 25% on the new price.', 'passage', '[{"id":"A","text":"$152$","is_correct":true,"explanation":"Correct (A). **Step 1:** $150×1.35=203$. **Step 2:** $203×0.75=152$."},{"id":"B","text":"$150$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$203$","is_correct":false,"explanation":"Choice C ($203$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$165$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $150$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $150×(1+35/100)=203$.
**Step 2:** Discount on new price: $203×(1-25/100)=152$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $152$

**Distractor analysis:**
- **B** ($150$): Ignores both percent changes.
- **C** ($203$): Choice C ($203$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($165$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('80543131-0dfd-4262-9084-146860febf73', 'If the original price is $165$, what is the final price after both changes?', 'A price is marked up 40%, then discounted 15% on the new price.', 'passage', '[{"id":"A","text":"$196$","is_correct":true,"explanation":"Correct (A). **Step 1:** $165×1.4=231$. **Step 2:** $231×0.85=196$."},{"id":"B","text":"$165$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$231$","is_correct":false,"explanation":"Choice C ($231$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$206$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $165$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $165×(1+40/100)=231$.
**Step 2:** Discount on new price: $231×(1-15/100)=196$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $196$

**Distractor analysis:**
- **B** ($165$): Ignores both percent changes.
- **C** ($231$): Choice C ($231$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($206$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('f9c6bd9e-a78d-4b20-bc6c-b65617e37818', 'If the original price is $180$, what is the final price after both changes?', 'A price is marked up 25%, then discounted 20% on the new price.', 'passage', '[{"id":"A","text":"$180$","is_correct":true,"explanation":"Correct (A). **Step 1:** $180×1.25=225$. **Step 2:** $225×0.8=180$."},{"id":"B","text":"$180$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$225$","is_correct":false,"explanation":"Choice C ($225$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$189$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $180$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $180×(1+25/100)=225$.
**Step 2:** Discount on new price: $225×(1-20/100)=180$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $180$

**Distractor analysis:**
- **B** ($180$): Ignores both percent changes.
- **C** ($225$): Choice C ($225$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($189$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('52c9a503-c019-4747-9145-942a02323dd0', 'If the original price is $195$, what is the final price after both changes?', 'A price is marked up 30%, then discounted 25% on the new price.', 'passage', '[{"id":"A","text":"$191$","is_correct":true,"explanation":"Correct (A). **Step 1:** $195×1.3=254$. **Step 2:** $254×0.75=191$."},{"id":"B","text":"$195$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$254$","is_correct":false,"explanation":"Choice C ($254$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$205$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $195$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $195×(1+30/100)=254$.
**Step 2:** Discount on new price: $254×(1-25/100)=191$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $191$

**Distractor analysis:**
- **B** ($195$): Ignores both percent changes.
- **C** ($254$): Choice C ($254$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($205$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('15ab40ba-8798-4e40-ae7e-8a4b2d3fa102', 'If the original price is $210$, what is the final price after both changes?', 'A price is marked up 35%, then discounted 15% on the new price.', 'passage', '[{"id":"A","text":"$241$","is_correct":true,"explanation":"Correct (A). **Step 1:** $210×1.35=284$. **Step 2:** $284×0.85=241$."},{"id":"B","text":"$210$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$284$","is_correct":false,"explanation":"Choice C ($284$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$252$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $210$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $210×(1+35/100)=284$.
**Step 2:** Discount on new price: $284×(1-15/100)=241$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $241$

**Distractor analysis:**
- **B** ($210$): Ignores both percent changes.
- **C** ($284$): Choice C ($284$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($252$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('bd5a39b3-533f-4e97-9612-ec3a933f7028', 'If the original price is $225$, what is the final price after both changes?', 'A price is marked up 40%, then discounted 20% on the new price.', 'passage', '[{"id":"A","text":"$252$","is_correct":true,"explanation":"Correct (A). **Step 1:** $225×1.4=315$. **Step 2:** $315×0.8=252$."},{"id":"B","text":"$225$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$315$","is_correct":false,"explanation":"Choice C ($315$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$270$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $225$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $225×(1+40/100)=315$.
**Step 2:** Discount on new price: $315×(1-20/100)=252$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $252$

**Distractor analysis:**
- **B** ($225$): Ignores both percent changes.
- **C** ($315$): Choice C ($315$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($270$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('a59d15b7-4149-44d5-bdaa-a03b278f241f', 'If the original price is $240$, what is the final price after both changes?', 'A price is marked up 25%, then discounted 25% on the new price.', 'passage', '[{"id":"A","text":"$225$","is_correct":true,"explanation":"Correct (A). **Step 1:** $240×1.25=300$. **Step 2:** $300×0.75=225$."},{"id":"B","text":"$240$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$300$","is_correct":false,"explanation":"Choice C ($300$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$240$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $240$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $240×(1+25/100)=300$.
**Step 2:** Discount on new price: $300×(1-25/100)=225$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $225$

**Distractor analysis:**
- **B** ($240$): Ignores both percent changes.
- **C** ($300$): Choice C ($300$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($240$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('cd244093-4fae-4c1d-9a05-a01e3ee6a6d4', 'If the original price is $255$, what is the final price after both changes?', 'A price is marked up 30%, then discounted 15% on the new price.', 'passage', '[{"id":"A","text":"$282$","is_correct":true,"explanation":"Correct (A). **Step 1:** $255×1.3=332$. **Step 2:** $332×0.85=282$."},{"id":"B","text":"$255$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$332$","is_correct":false,"explanation":"Choice C ($332$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$293$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $255$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $255×(1+30/100)=332$.
**Step 2:** Discount on new price: $332×(1-15/100)=282$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $282$

**Distractor analysis:**
- **B** ($255$): Ignores both percent changes.
- **C** ($332$): Choice C ($332$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($293$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('be8c30fc-2be2-48f5-9dd1-a0152debaff8', 'If the original price is $270$, what is the final price after both changes?', 'A price is marked up 35%, then discounted 20% on the new price.', 'passage', '[{"id":"A","text":"$292$","is_correct":true,"explanation":"Correct (A). **Step 1:** $270×1.35=365$. **Step 2:** $365×0.8=292$."},{"id":"B","text":"$270$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$365$","is_correct":false,"explanation":"Choice C ($365$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$311$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $270$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $270×(1+35/100)=365$.
**Step 2:** Discount on new price: $365×(1-20/100)=292$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $292$

**Distractor analysis:**
- **B** ($270$): Ignores both percent changes.
- **C** ($365$): Choice C ($365$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($311$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('ee951225-1527-4141-86c8-91b878116984', 'If the original price is $285$, what is the final price after both changes?', 'A price is marked up 40%, then discounted 25% on the new price.', 'passage', '[{"id":"A","text":"$299$","is_correct":true,"explanation":"Correct (A). **Step 1:** $285×1.4=399$. **Step 2:** $399×0.75=299$."},{"id":"B","text":"$285$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$399$","is_correct":false,"explanation":"Choice C ($399$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$328$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $285$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $285×(1+40/100)=399$.
**Step 2:** Discount on new price: $399×(1-25/100)=299$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $299$

**Distractor analysis:**
- **B** ($285$): Ignores both percent changes.
- **C** ($399$): Choice C ($399$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($328$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('75b6579e-d9f3-4cfe-a516-da1252537faf', 'If the original price is $300$, what is the final price after both changes?', 'A price is marked up 25%, then discounted 15% on the new price.', 'passage', '[{"id":"A","text":"$319$","is_correct":true,"explanation":"Correct (A). **Step 1:** $300×1.25=375$. **Step 2:** $375×0.85=319$."},{"id":"B","text":"$300$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$375$","is_correct":false,"explanation":"Choice C ($375$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$330$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $300$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $300×(1+25/100)=375$.
**Step 2:** Discount on new price: $375×(1-15/100)=319$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $319$

**Distractor analysis:**
- **B** ($300$): Ignores both percent changes.
- **C** ($375$): Choice C ($375$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($330$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('74d9ca9b-8bc0-43f2-b235-4d9b598d7cb7', 'If the original price is $315$, what is the final price after both changes?', 'A price is marked up 30%, then discounted 20% on the new price.', 'passage', '[{"id":"A","text":"$328$","is_correct":true,"explanation":"Correct (A). **Step 1:** $315×1.3=410$. **Step 2:** $410×0.8=328$."},{"id":"B","text":"$315$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$410$","is_correct":false,"explanation":"Choice C ($410$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$347$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $315$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $315×(1+30/100)=410$.
**Step 2:** Discount on new price: $410×(1-20/100)=328$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $328$

**Distractor analysis:**
- **B** ($315$): Ignores both percent changes.
- **C** ($410$): Choice C ($410$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($347$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('df22bbe8-cf36-463e-9bbe-d4cddb21cb52', 'If the original price is $330$, what is the final price after both changes?', 'A price is marked up 35%, then discounted 25% on the new price.', 'passage', '[{"id":"A","text":"$335$","is_correct":true,"explanation":"Correct (A). **Step 1:** $330×1.35=446$. **Step 2:** $446×0.75=335$."},{"id":"B","text":"$330$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$446$","is_correct":false,"explanation":"Choice C ($446$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$363$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $330$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $330×(1+35/100)=446$.
**Step 2:** Discount on new price: $446×(1-25/100)=335$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $335$

**Distractor analysis:**
- **B** ($330$): Ignores both percent changes.
- **C** ($446$): Choice C ($446$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($363$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('a480f810-736d-4e68-9c31-7359a30565a7', 'If the original price is $345$, what is the final price after both changes?', 'A price is marked up 40%, then discounted 15% on the new price.', 'passage', '[{"id":"A","text":"$411$","is_correct":true,"explanation":"Correct (A). **Step 1:** $345×1.4=483$. **Step 2:** $483×0.85=411$."},{"id":"B","text":"$345$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$483$","is_correct":false,"explanation":"Choice C ($483$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$431$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $345$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $345×(1+40/100)=483$.
**Step 2:** Discount on new price: $483×(1-15/100)=411$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $411$

**Distractor analysis:**
- **B** ($345$): Ignores both percent changes.
- **C** ($483$): Choice C ($483$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($431$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
COMMIT;
