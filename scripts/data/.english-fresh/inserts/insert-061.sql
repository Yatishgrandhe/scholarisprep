BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3d53006a-7632-47f6-8e7c-62496dc41276', 'Which choice completes the text with the most logical transition?', 'An analysis of newly available records prompted scholars to reconsider a conclusion that earlier accounts had treated as well established. The new irrigation channels diverted a steady share of the river toward previously arid terraces on the valley''s western slope. ______ crop yields on those terraces nearly doubled within three growing seasons, transforming the village''s fragile subsistence economy.', 'passage', '[{"id":"A","text":"However,","is_correct":false,"explanation":"[Synonym Trap] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Therefore,","is_correct":true,"explanation":"Correct (B). Therefore, signals cause between the two clauses, matching the logical relationship in the passage."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Meanwhile,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'B', 'Step 1 — Identify the relationship
Focus on {{yellow:treated}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice B is correct: Therefore,.

Distractor analysis:
- A: [Synonym Trap] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- C: [Category Shift] [Synonym Trap] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses.
- D: [Register Clash] [Synonym Trap] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7125b54a-7bfa-427d-a247-e7c13ec965d8', 'Which choice completes the text with the most logical transition?', 'Examining the problem with improved instruments, a research team uncovered a pattern that earlier and cruder surveys had entirely missed. The apprenticeship program paired newcomers with veteran machinists who modeled careful, deliberate technique on every shop-floor task. ______ it reimbursed tuition for evening coursework, allowing participants to deepen the theory underlying the skills they practiced daily.', 'passage', '[{"id":"A","text":"However,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"[Category Shift] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Moreover,","is_correct":true,"explanation":"Correct (C). Moreover, signals addition between the two clauses, matching the logical relationship in the passage."},{"id":"D","text":"Similarly,","is_correct":false,"explanation":"[Register Clash] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'C', 'Step 1 — Identify the relationship
Focus on {{yellow:entirely}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice C is correct: Moreover,.

Distractor analysis:
- A: [Synonym Trap] [Category Shift] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- D: [Register Clash] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1525acb8-4a4b-46c7-910e-5a75c23464f9', 'Which choice completes the text with the most logical transition?', 'Drawing on data collected across many years, analysts reported a result that complicates the tidy account found in older textbooks. Certain coastal cities have begun redesigning public space to absorb rather than repel rising storm water. ______ one harbor district replaced acres of pavement with tiered gardens engineered to flood briefly and drain slowly.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Moreover,","is_correct":false,"explanation":"[Register Clash] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Notably,","is_correct":true,"explanation":"Correct (D). Notably, signals example between the two clauses, matching the logical relationship in the passage."}]'::jsonb, 'D', 'Step 1 — Identify the relationship
Focus on {{yellow:account}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice D is correct: Notably,.

Distractor analysis:
- A: [Synonym Trap] [Register Clash] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] [Register Clash] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Register Clash] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8dc04921-1282-43a7-ad31-264c9bb246d2', 'Which choice completes the text with the most logical transition?', 'Researchers revisiting a long-debated question in the field recently reported findings that have renewed scholarly discussion of the issue. The first clinical trial reported that the compound sharply reduced inflammation in nearly every treated participant. ______ a larger replication enrolling more diverse volunteers detected only a modest and inconsistent effect across the sample.', 'passage', '[{"id":"A","text":"Still,","is_correct":true,"explanation":"Correct (A). Still, signals contrast between the two clauses, matching the logical relationship in the passage."},{"id":"B","text":"Consequently,","is_correct":false,"explanation":"[Synonym Trap] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Furthermore,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Furthermore, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Instead,","is_correct":false,"explanation":"[Register Clash] [Category Shift] Instead, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:scholarly}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: Still,.

Distractor analysis:
- B: [Synonym Trap] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Category Shift] [Synonym Trap] Furthermore, suggests a different rhetorical relationship (addition) than the one required between the clauses.
- D: [Register Clash] [Category Shift] Instead, suggests a different rhetorical relationship (contrast) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8a867eca-ba93-420f-be47-8bf8187125c4', 'Which choice completes the text with the most logical transition?', 'A study published this year set out to test an assumption that practitioners had accepted with little scrutiny for years. The editor imposed a strict word limit on every submitted essay regardless of its subject or argumentative ambition. ______ contributors learned to prune digressions ruthlessly, and the journal''s prose grew noticeably tighter over the following issues.', 'passage', '[{"id":"A","text":"However,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Therefore,","is_correct":true,"explanation":"Correct (B). Therefore, signals cause between the two clauses, matching the logical relationship in the passage."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"[Category Shift] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Meanwhile,","is_correct":false,"explanation":"[Register Clash] [Category Shift] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'B', 'Step 1 — Identify the relationship
Focus on {{yellow:submitted}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice B is correct: Therefore,.

Distractor analysis:
- A: [Synonym Trap] [Category Shift] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- C: [Category Shift] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses.
- D: [Register Clash] [Category Shift] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4f4cd247-8e46-4b99-b9f6-c90749a44702', 'Which choice completes the text with the most logical transition?', 'Investigators comparing two competing explanations gathered fresh evidence intended to settle a dispute that had persisted for several decades. The restored marsh filtered agricultural runoff before it reached the bay, measurably improving water clarity downstream within a single season. ______ it provided sheltered nesting habitat for several waterbird species that had not been seen in the watershed for years.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Furthermore,","is_correct":true,"explanation":"Correct (C). Furthermore, signals addition between the two clauses, matching the logical relationship in the passage."},{"id":"D","text":"Meanwhile,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'C', 'Step 1 — Identify the relationship
Focus on {{yellow:several}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice C is correct: Furthermore,.

Distractor analysis:
- A: [Synonym Trap] [Register Clash] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] [Register Clash] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- D: [Register Clash] [Synonym Trap] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ec8d905f-2981-46fc-a8a7-14bf38beb61b', 'Which choice completes the text with the most logical transition?', 'An analysis of newly available records prompted scholars to reconsider a conclusion that earlier accounts had treated as well established. A few nineteenth-century cartographers embedded subtle errors in their maps to expose competitors who copied their work. ______ one celebrated atlas inserted a fictitious village whose later appearance in a rival edition proved deliberate plagiarism.', 'passage', '[{"id":"A","text":"Yet,","is_correct":false,"explanation":"[Synonym Trap] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Consequently,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Chiefly,","is_correct":true,"explanation":"Correct (D). Chiefly, signals example between the two clauses, matching the logical relationship in the passage."}]'::jsonb, 'D', 'Step 1 — Identify the relationship
Focus on {{yellow:earlier}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice D is correct: Chiefly,.

Distractor analysis:
- A: [Synonym Trap] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] [Synonym Trap] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Register Clash] [Synonym Trap] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('639d1160-8de3-4b88-b781-6137be2817a5', 'Which choice completes the text with the most logical transition?', 'Examining the problem with improved instruments, a research team uncovered a pattern that earlier and cruder surveys had entirely missed. Conventional accounts portray the medieval guilds as rigid institutions that stifled any meaningful technical innovation. ______ surviving workshop records reveal craftsmen quietly experimenting with new tools and materials whenever competition intensified.', 'passage', '[{"id":"A","text":"However,","is_correct":true,"explanation":"Correct (A). However, signals contrast between the two clauses, matching the logical relationship in the passage."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"[Category Shift] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Meanwhile,","is_correct":false,"explanation":"[Register Clash] [Category Shift] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:missed.}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: However,.

Distractor analysis:
- B: [Synonym Trap] [Category Shift] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Category Shift] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses.
- D: [Register Clash] [Category Shift] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f818d232-96ff-4fdd-a118-738b66ccbdc5', 'Which choice completes the text with the most logical transition?', 'Drawing on data collected across many years, analysts reported a result that complicates the tidy account found in older textbooks. Prolonged drought sharply reduced the flowering plants that the region''s native bees depend on for nectar each spring. ______ local pollinator numbers declined steeply, and nearby orchards reported their thinnest fruit set in more than a decade.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Thus,","is_correct":true,"explanation":"Correct (B). Thus, signals cause between the two clauses, matching the logical relationship in the passage."},{"id":"C","text":"Moreover,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Yet,","is_correct":false,"explanation":"[Register Clash] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'B', 'Step 1 — Identify the relationship
Focus on {{yellow:Prolonged}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice B is correct: Thus,.

Distractor analysis:
- A: [Synonym Trap] [Register Clash] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- C: [Category Shift] [Register Clash] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses.
- D: [Register Clash] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f4d702a9-8721-410d-868a-fdaa43fb1a9c', 'Which choice completes the text with the most logical transition?', 'Researchers revisiting a long-debated question in the field recently reported findings that have renewed scholarly discussion of the issue. The policy lowered commuting costs for residents of the city''s underserved outer districts almost immediately. ______ it reduced roadway congestion at peak hours, trimming the average downtown trip by several unhurried minutes.', 'passage', '[{"id":"A","text":"Yet,","is_correct":false,"explanation":"[Synonym Trap] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Consequently,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Similarly,","is_correct":true,"explanation":"Correct (C). Similarly, signals addition between the two clauses, matching the logical relationship in the passage."},{"id":"D","text":"Still,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Still, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'C', 'Step 1 — Identify the relationship
Focus on {{yellow:scholarly}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice C is correct: Similarly,.

Distractor analysis:
- A: [Synonym Trap] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] [Synonym Trap] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- D: [Register Clash] [Synonym Trap] Still, suggests a different rhetorical relationship (contrast) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('46f28dea-5c27-46aa-803d-a7d37a656336', 'Which choice completes the text with the most logical transition?', 'A study published this year set out to test an assumption that practitioners had accepted with little scrutiny for years. Several nocturnal desert mammals have evolved striking physiological strategies for conserving scarce water through the hottest months. ______ the kangaroo rat extracts nearly all the moisture it needs from dry seeds, rarely drinking free water at all.', 'passage', '[{"id":"A","text":"However,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"[Category Shift] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"[Register Clash] [Category Shift] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Specifically,","is_correct":true,"explanation":"Correct (D). Specifically, signals example between the two clauses, matching the logical relationship in the passage."}]'::jsonb, 'D', 'Step 1 — Identify the relationship
Focus on {{yellow:nocturnal}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice D is correct: Specifically,.

Distractor analysis:
- A: [Synonym Trap] [Category Shift] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Register Clash] [Category Shift] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('73164558-c0e9-401d-b05e-a8ecef57895e', 'Which choice completes the text with the most logical transition?', 'Investigators comparing two competing explanations gathered fresh evidence intended to settle a dispute that had persisted for several decades. The committee assumed that lowering ticket prices would immediately fill the concert hall''s many empty weeknight seats. ______ attendance barely changed, suggesting that scheduling, not cost, governed whether residents chose to attend evening performances.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Correct (A). Nevertheless, signals contrast between the two clauses, matching the logical relationship in the passage."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Moreover,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Yet,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:persisted}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: Nevertheless,.

Distractor analysis:
- B: [Synonym Trap] [Register Clash] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Category Shift] [Register Clash] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses.
- D: [Register Clash] [Synonym Trap] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('17996313-8ba6-4617-a12b-2b9884c3c58f', 'Which choice completes the text with the most logical transition?', 'An analysis of newly available records prompted scholars to reconsider a conclusion that earlier accounts had treated as well established. The museum extended its evening hours and waived admission on the first Friday of every month throughout the year. ______ weekly visitor counts rose sharply, drawing residents who had never before considered the galleries part of their routine.', 'passage', '[{"id":"A","text":"Still,","is_correct":false,"explanation":"[Synonym Trap] Still, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Consequently,","is_correct":true,"explanation":"Correct (B). Consequently, signals cause between the two clauses, matching the logical relationship in the passage."},{"id":"C","text":"Furthermore,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Furthermore, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Instead,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Instead, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'B', 'Step 1 — Identify the relationship
Focus on {{yellow:earlier}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice B is correct: Consequently,.

Distractor analysis:
- A: [Synonym Trap] Still, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- C: [Category Shift] [Synonym Trap] Furthermore, suggests a different rhetorical relationship (addition) than the one required between the clauses.
- D: [Register Clash] [Synonym Trap] Instead, suggests a different rhetorical relationship (contrast) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9dad1a42-a9f1-4cd0-a7bd-51663324977e', 'Which choice completes the text with the most logical transition?', 'Examining the problem with improved instruments, a research team uncovered a pattern that earlier and cruder surveys had entirely missed. The telescope''s upgraded sensor captured faint galaxies far beyond the reach of its original instruments. ______ it resolved fine structural detail in nearer nebulae that previous surveys had recorded only as indistinct smudges.', 'passage', '[{"id":"A","text":"However,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"[Category Shift] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Moreover,","is_correct":true,"explanation":"Correct (C). Moreover, signals addition between the two clauses, matching the logical relationship in the passage."},{"id":"D","text":"Similarly,","is_correct":false,"explanation":"[Register Clash] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'C', 'Step 1 — Identify the relationship
Focus on {{yellow:surveys}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice C is correct: Moreover,.

Distractor analysis:
- A: [Synonym Trap] [Category Shift] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- D: [Register Clash] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('20efbc53-b8bc-4125-bb98-9d78e832464c', 'Which choice completes the text with the most logical transition?', 'Drawing on data collected across many years, analysts reported a result that complicates the tidy account found in older textbooks. A number of social insects coordinate complex tasks without any central authority directing the colony''s daily labor. ______ one ant species recruits foragers to new food through chemical trails that strengthen only while the supply lasts.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Moreover,","is_correct":false,"explanation":"[Register Clash] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Notably,","is_correct":true,"explanation":"Correct (D). Notably, signals example between the two clauses, matching the logical relationship in the passage."}]'::jsonb, 'D', 'Step 1 — Identify the relationship
Focus on {{yellow:insects}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice D is correct: Notably,.

Distractor analysis:
- A: [Synonym Trap] [Register Clash] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] [Register Clash] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Register Clash] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a8f36d02-f05c-4628-9a9b-8b057e43de30', 'Which choice completes the text with the most logical transition?', 'Researchers revisiting a long-debated question in the field recently reported findings that have renewed scholarly discussion of the issue. Early climate models projected that the coastal wetlands would dry out completely within two decades as regional temperatures steadily climbed. ______ monitoring stations have recorded remarkably stable water levels across the same interval, prompting researchers to revisit their founding assumptions.', 'passage', '[{"id":"A","text":"Still,","is_correct":true,"explanation":"Correct (A). Still, signals contrast between the two clauses, matching the logical relationship in the passage."},{"id":"B","text":"Consequently,","is_correct":false,"explanation":"[Synonym Trap] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Furthermore,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Furthermore, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Instead,","is_correct":false,"explanation":"[Register Clash] [Category Shift] Instead, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:climate}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: Still,.

Distractor analysis:
- B: [Synonym Trap] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Category Shift] [Synonym Trap] Furthermore, suggests a different rhetorical relationship (addition) than the one required between the clauses.
- D: [Register Clash] [Category Shift] Instead, suggests a different rhetorical relationship (contrast) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6f6a3ee1-8b54-432e-bd29-006429d8d1c3', 'Which choice completes the text with the most logical transition?', 'A study published this year set out to test an assumption that practitioners had accepted with little scrutiny for years. Sustained overfishing removed most of the large predators that had long regulated the reef''s delicate food web. ______ populations of smaller grazing species surged unchecked, stripping the coral of the algae that sheltered juvenile fish.', 'passage', '[{"id":"A","text":"However,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Therefore,","is_correct":true,"explanation":"Correct (B). Therefore, signals cause between the two clauses, matching the logical relationship in the passage."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"[Category Shift] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Meanwhile,","is_correct":false,"explanation":"[Register Clash] [Category Shift] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'B', 'Step 1 — Identify the relationship
Focus on {{yellow:overfishing}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice B is correct: Therefore,.

Distractor analysis:
- A: [Synonym Trap] [Category Shift] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- C: [Category Shift] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses.
- D: [Register Clash] [Category Shift] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6ee0d5f2-f8c2-4503-ba91-811a201cec93', 'Which choice completes the text with the most logical transition?', 'Investigators comparing two competing explanations gathered fresh evidence intended to settle a dispute that had persisted for several decades. The author''s later essays sharpened her critique of unchecked industrial expansion across the rapidly growing river towns. ______ they widened her focus to include the displaced laborers whose testimony earlier reformers had largely ignored.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Furthermore,","is_correct":true,"explanation":"Correct (C). Furthermore, signals addition between the two clauses, matching the logical relationship in the passage."},{"id":"D","text":"Meanwhile,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'C', 'Step 1 — Identify the relationship
Focus on {{yellow:several}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice C is correct: Furthermore,.

Distractor analysis:
- A: [Synonym Trap] [Register Clash] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] [Register Clash] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- D: [Register Clash] [Synonym Trap] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a72c793e-c2b0-4282-a67a-6fe7159eea44', 'Which choice completes the text with the most logical transition?', 'An analysis of newly available records prompted scholars to reconsider a conclusion that earlier accounts had treated as well established. Some composers of the period borrowed folk melodies and reworked them into elaborate concert pieces for urban audiences. ______ one symphony famously transforms a simple harvest song into a sweeping movement scored for the full orchestra.', 'passage', '[{"id":"A","text":"Yet,","is_correct":false,"explanation":"[Synonym Trap] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Consequently,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Chiefly,","is_correct":true,"explanation":"Correct (D). Chiefly, signals example between the two clauses, matching the logical relationship in the passage."}]'::jsonb, 'D', 'Step 1 — Identify the relationship
Focus on {{yellow:accounts}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice D is correct: Chiefly,.

Distractor analysis:
- A: [Synonym Trap] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] [Synonym Trap] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Register Clash] [Synonym Trap] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d9cf169e-f227-4ff7-bcac-d06754c5d2c5', 'Which choice completes the text with the most logical transition?', 'Examining the problem with improved instruments, a research team uncovered a pattern that earlier and cruder surveys had entirely missed. Critics initially dismissed the novelist''s fragmented chronology as a careless lapse in narrative craft. ______ later scholars argued that the disordered timeline deliberately mirrors how memory reconstructs the past for the grieving narrator.', 'passage', '[{"id":"A","text":"However,","is_correct":true,"explanation":"Correct (A). However, signals contrast between the two clauses, matching the logical relationship in the passage."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"[Category Shift] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Meanwhile,","is_correct":false,"explanation":"[Register Clash] [Category Shift] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:entirely}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: However,.

Distractor analysis:
- B: [Synonym Trap] [Category Shift] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Category Shift] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses.
- D: [Register Clash] [Category Shift] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('638dff6b-f67e-419e-8b4c-e646a279acc9', 'Which choice completes the text with the most logical transition?', 'Drawing on data collected across many years, analysts reported a result that complicates the tidy account found in older textbooks. The new irrigation channels diverted a steady share of the river toward previously arid terraces on the valley''s western slope. ______ crop yields on those terraces nearly doubled within three growing seasons, transforming the village''s fragile subsistence economy.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Thus,","is_correct":true,"explanation":"Correct (B). Thus, signals cause between the two clauses, matching the logical relationship in the passage."},{"id":"C","text":"Moreover,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Yet,","is_correct":false,"explanation":"[Register Clash] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'B', 'Step 1 — Identify the relationship
Focus on {{yellow:irrigation}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice B is correct: Thus,.

Distractor analysis:
- A: [Synonym Trap] [Register Clash] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- C: [Category Shift] [Register Clash] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses.
- D: [Register Clash] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6383a604-5174-4b2b-84e7-54f3b658fe3e', 'Which choice completes the text with the most logical transition?', 'Researchers revisiting a long-debated question in the field recently reported findings that have renewed scholarly discussion of the issue. The apprenticeship program paired newcomers with veteran machinists who modeled careful, deliberate technique on every shop-floor task. ______ it reimbursed tuition for evening coursework, allowing participants to deepen the theory underlying the skills they practiced daily.', 'passage', '[{"id":"A","text":"Yet,","is_correct":false,"explanation":"[Synonym Trap] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Consequently,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Similarly,","is_correct":true,"explanation":"Correct (C). Similarly, signals addition between the two clauses, matching the logical relationship in the passage."},{"id":"D","text":"Still,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Still, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'C', 'Step 1 — Identify the relationship
Focus on {{yellow:discussion}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice C is correct: Similarly,.

Distractor analysis:
- A: [Synonym Trap] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] [Synonym Trap] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- D: [Register Clash] [Synonym Trap] Still, suggests a different rhetorical relationship (contrast) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9d7828c3-da82-4723-9be1-3ffd36554548', 'Which choice completes the text with the most logical transition?', 'A study published this year set out to test an assumption that practitioners had accepted with little scrutiny for years. Certain coastal cities have begun redesigning public space to absorb rather than repel rising storm water. ______ one harbor district replaced acres of pavement with tiered gardens engineered to flood briefly and drain slowly.', 'passage', '[{"id":"A","text":"However,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"[Category Shift] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"[Register Clash] [Category Shift] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Specifically,","is_correct":true,"explanation":"Correct (D). Specifically, signals example between the two clauses, matching the logical relationship in the passage."}]'::jsonb, 'D', 'Step 1 — Identify the relationship
Focus on {{yellow:Certain}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice D is correct: Specifically,.

Distractor analysis:
- A: [Synonym Trap] [Category Shift] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Register Clash] [Category Shift] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1f52c820-5ff4-4fc3-b53e-6305b7458573', 'Which choice completes the text with the most logical transition?', 'Investigators comparing two competing explanations gathered fresh evidence intended to settle a dispute that had persisted for several decades. The first clinical trial reported that the compound sharply reduced inflammation in nearly every treated participant. ______ a larger replication enrolling more diverse volunteers detected only a modest and inconsistent effect across the sample.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Correct (A). Nevertheless, signals contrast between the two clauses, matching the logical relationship in the passage."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Moreover,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Yet,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:persisted}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: Nevertheless,.

Distractor analysis:
- B: [Synonym Trap] [Register Clash] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Category Shift] [Register Clash] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses.
- D: [Register Clash] [Synonym Trap] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('70bf4992-49dd-4a2b-a13e-d759cc479c57', 'Which choice completes the text with the most logical transition?', 'An analysis of newly available records prompted scholars to reconsider a conclusion that earlier accounts had treated as well established. The editor imposed a strict word limit on every submitted essay regardless of its subject or argumentative ambition. ______ contributors learned to prune digressions ruthlessly, and the journal''s prose grew noticeably tighter over the following issues.', 'passage', '[{"id":"A","text":"Still,","is_correct":false,"explanation":"[Synonym Trap] Still, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Consequently,","is_correct":true,"explanation":"Correct (B). Consequently, signals cause between the two clauses, matching the logical relationship in the passage."},{"id":"C","text":"Furthermore,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Furthermore, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Instead,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Instead, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'B', 'Step 1 — Identify the relationship
Focus on {{yellow:accounts}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice B is correct: Consequently,.

Distractor analysis:
- A: [Synonym Trap] Still, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- C: [Category Shift] [Synonym Trap] Furthermore, suggests a different rhetorical relationship (addition) than the one required between the clauses.
- D: [Register Clash] [Synonym Trap] Instead, suggests a different rhetorical relationship (contrast) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('75d378fd-9ccf-4c5c-aedb-838e63c9be4d', 'Which choice completes the text with the most logical transition?', 'Examining the problem with improved instruments, a research team uncovered a pattern that earlier and cruder surveys had entirely missed. The restored marsh filtered agricultural runoff before it reached the bay, measurably improving water clarity downstream within a single season. ______ it provided sheltered nesting habitat for several waterbird species that had not been seen in the watershed for years.', 'passage', '[{"id":"A","text":"However,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"[Category Shift] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Moreover,","is_correct":true,"explanation":"Correct (C). Moreover, signals addition between the two clauses, matching the logical relationship in the passage."},{"id":"D","text":"Similarly,","is_correct":false,"explanation":"[Register Clash] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'C', 'Step 1 — Identify the relationship
Focus on {{yellow:entirely}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice C is correct: Moreover,.

Distractor analysis:
- A: [Synonym Trap] [Category Shift] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- D: [Register Clash] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c56cfb08-c18e-4deb-a287-ba75f485703a', 'Which choice completes the text with the most logical transition?', 'Drawing on data collected across many years, analysts reported a result that complicates the tidy account found in older textbooks. A few nineteenth-century cartographers embedded subtle errors in their maps to expose competitors who copied their work. ______ one celebrated atlas inserted a fictitious village whose later appearance in a rival edition proved deliberate plagiarism.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Moreover,","is_correct":false,"explanation":"[Register Clash] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Notably,","is_correct":true,"explanation":"Correct (D). Notably, signals example between the two clauses, matching the logical relationship in the passage."}]'::jsonb, 'D', 'Step 1 — Identify the relationship
Focus on {{yellow:textbooks.}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice D is correct: Notably,.

Distractor analysis:
- A: [Synonym Trap] [Register Clash] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] [Register Clash] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Register Clash] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0bc7dcc5-af7f-4718-ab5c-253167e35345', 'Which choice completes the text with the most logical transition?', 'Researchers revisiting a long-debated question in the field recently reported findings that have renewed scholarly discussion of the issue. Conventional accounts portray the medieval guilds as rigid institutions that stifled any meaningful technical innovation. ______ surviving workshop records reveal craftsmen quietly experimenting with new tools and materials whenever competition intensified.', 'passage', '[{"id":"A","text":"Still,","is_correct":true,"explanation":"Correct (A). Still, signals contrast between the two clauses, matching the logical relationship in the passage."},{"id":"B","text":"Consequently,","is_correct":false,"explanation":"[Synonym Trap] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Furthermore,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Furthermore, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Instead,","is_correct":false,"explanation":"[Register Clash] [Category Shift] Instead, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:discussion}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: Still,.

Distractor analysis:
- B: [Synonym Trap] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Category Shift] [Synonym Trap] Furthermore, suggests a different rhetorical relationship (addition) than the one required between the clauses.
- D: [Register Clash] [Category Shift] Instead, suggests a different rhetorical relationship (contrast) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4ba3e1a1-8a4b-4252-af01-a849acef6a12', 'Which choice completes the text with the most logical transition?', 'A study published this year set out to test an assumption that practitioners had accepted with little scrutiny for years. Prolonged drought sharply reduced the flowering plants that the region''s native bees depend on for nectar each spring. ______ local pollinator numbers declined steeply, and nearby orchards reported their thinnest fruit set in more than a decade.', 'passage', '[{"id":"A","text":"However,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Therefore,","is_correct":true,"explanation":"Correct (B). Therefore, signals cause between the two clauses, matching the logical relationship in the passage."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"[Category Shift] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Meanwhile,","is_correct":false,"explanation":"[Register Clash] [Category Shift] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'B', 'Step 1 — Identify the relationship
Focus on {{yellow:drought}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice B is correct: Therefore,.

Distractor analysis:
- A: [Synonym Trap] [Category Shift] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- C: [Category Shift] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses.
- D: [Register Clash] [Category Shift] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('597d73ec-4fb7-4a96-ae1f-36d39473ef2f', 'Which choice completes the text with the most logical transition?', 'Investigators comparing two competing explanations gathered fresh evidence intended to settle a dispute that had persisted for several decades. The policy lowered commuting costs for residents of the city''s underserved outer districts almost immediately. ______ it reduced roadway congestion at peak hours, trimming the average downtown trip by several unhurried minutes.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Furthermore,","is_correct":true,"explanation":"Correct (C). Furthermore, signals addition between the two clauses, matching the logical relationship in the passage."},{"id":"D","text":"Meanwhile,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'C', 'Step 1 — Identify the relationship
Focus on {{yellow:persisted}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice C is correct: Furthermore,.

Distractor analysis:
- A: [Synonym Trap] [Register Clash] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] [Register Clash] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- D: [Register Clash] [Synonym Trap] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('40aba907-bd2e-4f56-96ec-f1221b98c7e5', 'Which choice completes the text with the most logical transition?', 'An analysis of newly available records prompted scholars to reconsider a conclusion that earlier accounts had treated as well established. Several nocturnal desert mammals have evolved striking physiological strategies for conserving scarce water through the hottest months. ______ the kangaroo rat extracts nearly all the moisture it needs from dry seeds, rarely drinking free water at all.', 'passage', '[{"id":"A","text":"Yet,","is_correct":false,"explanation":"[Synonym Trap] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Consequently,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Chiefly,","is_correct":true,"explanation":"Correct (D). Chiefly, signals example between the two clauses, matching the logical relationship in the passage."}]'::jsonb, 'D', 'Step 1 — Identify the relationship
Focus on {{yellow:accounts}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice D is correct: Chiefly,.

Distractor analysis:
- A: [Synonym Trap] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] [Synonym Trap] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Register Clash] [Synonym Trap] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ee8afa31-3b54-40d2-83e7-9ed3b9ed5b31', 'Which choice completes the text with the most logical transition?', 'Examining the problem with improved instruments, a research team uncovered a pattern that earlier and cruder surveys had entirely missed. The committee assumed that lowering ticket prices would immediately fill the concert hall''s many empty weeknight seats. ______ attendance barely changed, suggesting that scheduling, not cost, governed whether residents chose to attend evening performances.', 'passage', '[{"id":"A","text":"However,","is_correct":true,"explanation":"Correct (A). However, signals contrast between the two clauses, matching the logical relationship in the passage."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"[Category Shift] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Meanwhile,","is_correct":false,"explanation":"[Register Clash] [Category Shift] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:surveys}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: However,.

Distractor analysis:
- B: [Synonym Trap] [Category Shift] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Category Shift] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses.
- D: [Register Clash] [Category Shift] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0a37448f-5a39-4dee-8481-5f7cb87c191e', 'Which choice completes the text with the most logical transition?', 'Drawing on data collected across many years, analysts reported a result that complicates the tidy account found in older textbooks. The museum extended its evening hours and waived admission on the first Friday of every month throughout the year. ______ weekly visitor counts rose sharply, drawing residents who had never before considered the galleries part of their routine.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Thus,","is_correct":true,"explanation":"Correct (B). Thus, signals cause between the two clauses, matching the logical relationship in the passage."},{"id":"C","text":"Moreover,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Yet,","is_correct":false,"explanation":"[Register Clash] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'B', 'Step 1 — Identify the relationship
Focus on {{yellow:textbooks.}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice B is correct: Thus,.

Distractor analysis:
- A: [Synonym Trap] [Register Clash] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- C: [Category Shift] [Register Clash] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses.
- D: [Register Clash] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('20a40417-88d8-4a7c-90ad-8fa6235f0a7b', 'Which choice completes the text with the most logical transition?', 'Researchers revisiting a long-debated question in the field recently reported findings that have renewed scholarly discussion of the issue. The telescope''s upgraded sensor captured faint galaxies far beyond the reach of its original instruments. ______ it resolved fine structural detail in nearer nebulae that previous surveys had recorded only as indistinct smudges.', 'passage', '[{"id":"A","text":"Yet,","is_correct":false,"explanation":"[Synonym Trap] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Consequently,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Similarly,","is_correct":true,"explanation":"Correct (C). Similarly, signals addition between the two clauses, matching the logical relationship in the passage."},{"id":"D","text":"Still,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Still, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'C', 'Step 1 — Identify the relationship
Focus on {{yellow:scholarly}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice C is correct: Similarly,.

Distractor analysis:
- A: [Synonym Trap] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] [Synonym Trap] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- D: [Register Clash] [Synonym Trap] Still, suggests a different rhetorical relationship (contrast) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b31cfb47-70b4-4c85-b7d0-23daf2c2dc58', 'Which choice completes the text with the most logical transition?', 'A study published this year set out to test an assumption that practitioners had accepted with little scrutiny for years. A number of social insects coordinate complex tasks without any central authority directing the colony''s daily labor. ______ one ant species recruits foragers to new food through chemical trails that strengthen only while the supply lasts.', 'passage', '[{"id":"A","text":"However,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"[Category Shift] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"[Register Clash] [Category Shift] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Specifically,","is_correct":true,"explanation":"Correct (D). Specifically, signals example between the two clauses, matching the logical relationship in the passage."}]'::jsonb, 'D', 'Step 1 — Identify the relationship
Focus on {{yellow:coordinate}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice D is correct: Specifically,.

Distractor analysis:
- A: [Synonym Trap] [Category Shift] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Register Clash] [Category Shift] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d88e1712-4eec-4104-a5f3-ec856cdd10d1', 'Which choice completes the text with the most logical transition?', 'Investigators comparing two competing explanations gathered fresh evidence intended to settle a dispute that had persisted for several decades. Early climate models projected that the coastal wetlands would dry out completely within two decades as regional temperatures steadily climbed. ______ monitoring stations have recorded remarkably stable water levels across the same interval, prompting researchers to revisit their founding assumptions.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Correct (A). Nevertheless, signals contrast between the two clauses, matching the logical relationship in the passage."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Moreover,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Yet,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:decades.}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: Nevertheless,.

Distractor analysis:
- B: [Synonym Trap] [Register Clash] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Category Shift] [Register Clash] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses.
- D: [Register Clash] [Synonym Trap] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2cf19dba-ba60-4827-950e-40e439d5f848', 'Which choice completes the text with the most logical transition?', 'An analysis of newly available records prompted scholars to reconsider a conclusion that earlier accounts had treated as well established. Sustained overfishing removed most of the large predators that had long regulated the reef''s delicate food web. ______ populations of smaller grazing species surged unchecked, stripping the coral of the algae that sheltered juvenile fish.', 'passage', '[{"id":"A","text":"Still,","is_correct":false,"explanation":"[Synonym Trap] Still, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Consequently,","is_correct":true,"explanation":"Correct (B). Consequently, signals cause between the two clauses, matching the logical relationship in the passage."},{"id":"C","text":"Furthermore,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Furthermore, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Instead,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Instead, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'B', 'Step 1 — Identify the relationship
Focus on {{yellow:accounts}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice B is correct: Consequently,.

Distractor analysis:
- A: [Synonym Trap] Still, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- C: [Category Shift] [Synonym Trap] Furthermore, suggests a different rhetorical relationship (addition) than the one required between the clauses.
- D: [Register Clash] [Synonym Trap] Instead, suggests a different rhetorical relationship (contrast) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e7149abf-9fc6-407f-8db2-d73f64b5046b', 'Which choice completes the text with the most logical transition?', 'Examining the problem with improved instruments, a research team uncovered a pattern that earlier and cruder surveys had entirely missed. The author''s later essays sharpened her critique of unchecked industrial expansion across the rapidly growing river towns. ______ they widened her focus to include the displaced laborers whose testimony earlier reformers had largely ignored.', 'passage', '[{"id":"A","text":"However,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"[Category Shift] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Moreover,","is_correct":true,"explanation":"Correct (C). Moreover, signals addition between the two clauses, matching the logical relationship in the passage."},{"id":"D","text":"Similarly,","is_correct":false,"explanation":"[Register Clash] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'C', 'Step 1 — Identify the relationship
Focus on {{yellow:entirely}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice C is correct: Moreover,.

Distractor analysis:
- A: [Synonym Trap] [Category Shift] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- D: [Register Clash] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a5fb9750-f9fb-4cf9-bb6a-95e3e8d2cdf3', 'Which choice completes the text with the most logical transition?', 'Drawing on data collected across many years, analysts reported a result that complicates the tidy account found in older textbooks. Some composers of the period borrowed folk melodies and reworked them into elaborate concert pieces for urban audiences. ______ one symphony famously transforms a simple harvest song into a sweeping movement scored for the full orchestra.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Moreover,","is_correct":false,"explanation":"[Register Clash] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Notably,","is_correct":true,"explanation":"Correct (D). Notably, signals example between the two clauses, matching the logical relationship in the passage."}]'::jsonb, 'D', 'Step 1 — Identify the relationship
Focus on {{yellow:composers}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice D is correct: Notably,.

Distractor analysis:
- A: [Synonym Trap] [Register Clash] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] [Register Clash] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Register Clash] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6fc2f08d-5960-4650-a917-5a8c13c943a1', 'Which choice completes the text with the most logical transition?', 'Researchers revisiting a long-debated question in the field recently reported findings that have renewed scholarly discussion of the issue. Critics initially dismissed the novelist''s fragmented chronology as a careless lapse in narrative craft. ______ later scholars argued that the disordered timeline deliberately mirrors how memory reconstructs the past for the grieving narrator.', 'passage', '[{"id":"A","text":"Still,","is_correct":true,"explanation":"Correct (A). Still, signals contrast between the two clauses, matching the logical relationship in the passage."},{"id":"B","text":"Consequently,","is_correct":false,"explanation":"[Synonym Trap] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Furthermore,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Furthermore, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Instead,","is_correct":false,"explanation":"[Register Clash] [Category Shift] Instead, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:scholarly}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: Still,.

Distractor analysis:
- B: [Synonym Trap] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Category Shift] [Synonym Trap] Furthermore, suggests a different rhetorical relationship (addition) than the one required between the clauses.
- D: [Register Clash] [Category Shift] Instead, suggests a different rhetorical relationship (contrast) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2051ea97-ff39-4bf0-8be3-2b1d206765e7', 'Which choice completes the text with the most logical transition?', 'A study published this year set out to test an assumption that practitioners had accepted with little scrutiny for years. The new irrigation channels diverted a steady share of the river toward previously arid terraces on the valley''s western slope. ______ crop yields on those terraces nearly doubled within three growing seasons, transforming the village''s fragile subsistence economy.', 'passage', '[{"id":"A","text":"However,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Therefore,","is_correct":true,"explanation":"Correct (B). Therefore, signals cause between the two clauses, matching the logical relationship in the passage."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"[Category Shift] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Meanwhile,","is_correct":false,"explanation":"[Register Clash] [Category Shift] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'B', 'Step 1 — Identify the relationship
Focus on {{yellow:diverted}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice B is correct: Therefore,.

Distractor analysis:
- A: [Synonym Trap] [Category Shift] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- C: [Category Shift] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses.
- D: [Register Clash] [Category Shift] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ba2c79cb-7e6e-4de6-944d-8ba78af89cb6', 'Which choice completes the text with the most logical transition?', 'Investigators comparing two competing explanations gathered fresh evidence intended to settle a dispute that had persisted for several decades. The apprenticeship program paired newcomers with veteran machinists who modeled careful, deliberate technique on every shop-floor task. ______ it reimbursed tuition for evening coursework, allowing participants to deepen the theory underlying the skills they practiced daily.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Furthermore,","is_correct":true,"explanation":"Correct (C). Furthermore, signals addition between the two clauses, matching the logical relationship in the passage."},{"id":"D","text":"Meanwhile,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'C', 'Step 1 — Identify the relationship
Focus on {{yellow:several}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice C is correct: Furthermore,.

Distractor analysis:
- A: [Synonym Trap] [Register Clash] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] [Register Clash] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- D: [Register Clash] [Synonym Trap] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2594d71c-944b-4c90-8f9c-d9cb4c67edd2', 'Which choice completes the text with the most logical transition?', 'An analysis of newly available records prompted scholars to reconsider a conclusion that earlier accounts had treated as well established. Certain coastal cities have begun redesigning public space to absorb rather than repel rising storm water. ______ one harbor district replaced acres of pavement with tiered gardens engineered to flood briefly and drain slowly.', 'passage', '[{"id":"A","text":"Yet,","is_correct":false,"explanation":"[Synonym Trap] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Consequently,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Chiefly,","is_correct":true,"explanation":"Correct (D). Chiefly, signals example between the two clauses, matching the logical relationship in the passage."}]'::jsonb, 'D', 'Step 1 — Identify the relationship
Focus on {{yellow:earlier}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice D is correct: Chiefly,.

Distractor analysis:
- A: [Synonym Trap] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] [Synonym Trap] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Register Clash] [Synonym Trap] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('11eaa573-2aa0-4722-aa59-c45d70f6121c', 'Which choice completes the text with the most logical transition?', 'Examining the problem with improved instruments, a research team uncovered a pattern that earlier and cruder surveys had entirely missed. The first clinical trial reported that the compound sharply reduced inflammation in nearly every treated participant. ______ a larger replication enrolling more diverse volunteers detected only a modest and inconsistent effect across the sample.', 'passage', '[{"id":"A","text":"However,","is_correct":true,"explanation":"Correct (A). However, signals contrast between the two clauses, matching the logical relationship in the passage."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"[Category Shift] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Meanwhile,","is_correct":false,"explanation":"[Register Clash] [Category Shift] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:surveys}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: However,.

Distractor analysis:
- B: [Synonym Trap] [Category Shift] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Category Shift] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses.
- D: [Register Clash] [Category Shift] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('de38c4aa-02f5-4579-8c8f-bb05702064dd', 'Which choice completes the text with the most logical transition?', 'Drawing on data collected across many years, analysts reported a result that complicates the tidy account found in older textbooks. The editor imposed a strict word limit on every submitted essay regardless of its subject or argumentative ambition. ______ contributors learned to prune digressions ruthlessly, and the journal''s prose grew noticeably tighter over the following issues.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Thus,","is_correct":true,"explanation":"Correct (B). Thus, signals cause between the two clauses, matching the logical relationship in the passage."},{"id":"C","text":"Moreover,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Yet,","is_correct":false,"explanation":"[Register Clash] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'B', 'Step 1 — Identify the relationship
Focus on {{yellow:imposed}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice B is correct: Thus,.

Distractor analysis:
- A: [Synonym Trap] [Register Clash] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- C: [Category Shift] [Register Clash] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses.
- D: [Register Clash] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('02d24b91-4540-4084-8138-ced671a5dc0b', 'Which choice completes the text with the most logical transition?', 'Researchers revisiting a long-debated question in the field recently reported findings that have renewed scholarly discussion of the issue. The restored marsh filtered agricultural runoff before it reached the bay, measurably improving water clarity downstream within a single season. ______ it provided sheltered nesting habitat for several waterbird species that had not been seen in the watershed for years.', 'passage', '[{"id":"A","text":"Yet,","is_correct":false,"explanation":"[Synonym Trap] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Consequently,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Similarly,","is_correct":true,"explanation":"Correct (C). Similarly, signals addition between the two clauses, matching the logical relationship in the passage."},{"id":"D","text":"Still,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Still, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'C', 'Step 1 — Identify the relationship
Focus on {{yellow:discussion}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice C is correct: Similarly,.

Distractor analysis:
- A: [Synonym Trap] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] [Synonym Trap] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- D: [Register Clash] [Synonym Trap] Still, suggests a different rhetorical relationship (contrast) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ce1384c9-1218-4e1b-bf31-78919537cd91', 'Which choice completes the text with the most logical transition?', 'A study published this year set out to test an assumption that practitioners had accepted with little scrutiny for years. A few nineteenth-century cartographers embedded subtle errors in their maps to expose competitors who copied their work. ______ one celebrated atlas inserted a fictitious village whose later appearance in a rival edition proved deliberate plagiarism.', 'passage', '[{"id":"A","text":"However,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"[Category Shift] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"[Register Clash] [Category Shift] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Specifically,","is_correct":true,"explanation":"Correct (D). Specifically, signals example between the two clauses, matching the logical relationship in the passage."}]'::jsonb, 'D', 'Step 1 — Identify the relationship
Focus on {{yellow:nineteenth-century}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice D is correct: Specifically,.

Distractor analysis:
- A: [Synonym Trap] [Category Shift] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Register Clash] [Category Shift] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('73be0790-d877-4f8e-a2dd-04d5d41eafd6', 'Which choice completes the text with the most logical transition?', 'Investigators comparing two competing explanations gathered fresh evidence intended to settle a dispute that had persisted for several decades. Conventional accounts portray the medieval guilds as rigid institutions that stifled any meaningful technical innovation. ______ surviving workshop records reveal craftsmen quietly experimenting with new tools and materials whenever competition intensified.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Correct (A). Nevertheless, signals contrast between the two clauses, matching the logical relationship in the passage."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Moreover,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Yet,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:decades.}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: Nevertheless,.

Distractor analysis:
- B: [Synonym Trap] [Register Clash] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Category Shift] [Register Clash] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses.
- D: [Register Clash] [Synonym Trap] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5f19c4b8-d6fd-4c1e-9aa2-05ded090d27b', 'Which choice completes the text with the most logical transition?', 'An analysis of newly available records prompted scholars to reconsider a conclusion that earlier accounts had treated as well established. Prolonged drought sharply reduced the flowering plants that the region''s native bees depend on for nectar each spring. ______ local pollinator numbers declined steeply, and nearby orchards reported their thinnest fruit set in more than a decade.', 'passage', '[{"id":"A","text":"Still,","is_correct":false,"explanation":"[Synonym Trap] Still, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Consequently,","is_correct":true,"explanation":"Correct (B). Consequently, signals cause between the two clauses, matching the logical relationship in the passage."},{"id":"C","text":"Furthermore,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Furthermore, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Instead,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Instead, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'B', 'Step 1 — Identify the relationship
Focus on {{yellow:accounts}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice B is correct: Consequently,.

Distractor analysis:
- A: [Synonym Trap] Still, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- C: [Category Shift] [Synonym Trap] Furthermore, suggests a different rhetorical relationship (addition) than the one required between the clauses.
- D: [Register Clash] [Synonym Trap] Instead, suggests a different rhetorical relationship (contrast) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('204f36d8-87cb-45d7-b870-06eea2008374', 'Which choice completes the text with the most logical transition?', 'Examining the problem with improved instruments, a research team uncovered a pattern that earlier and cruder surveys had entirely missed. The policy lowered commuting costs for residents of the city''s underserved outer districts almost immediately. ______ it reduced roadway congestion at peak hours, trimming the average downtown trip by several unhurried minutes.', 'passage', '[{"id":"A","text":"However,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"[Category Shift] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Moreover,","is_correct":true,"explanation":"Correct (C). Moreover, signals addition between the two clauses, matching the logical relationship in the passage."},{"id":"D","text":"Similarly,","is_correct":false,"explanation":"[Register Clash] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'C', 'Step 1 — Identify the relationship
Focus on {{yellow:surveys}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice C is correct: Moreover,.

Distractor analysis:
- A: [Synonym Trap] [Category Shift] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- D: [Register Clash] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
COMMIT;
