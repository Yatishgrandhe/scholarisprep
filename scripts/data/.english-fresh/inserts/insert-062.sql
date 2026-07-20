BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('873aeabd-02b1-4c4f-b239-85ffe4ddcac6', 'Which choice completes the text with the most logical transition?', 'Drawing on data collected across many years, analysts reported a result that complicates the tidy account found in older textbooks. Several nocturnal desert mammals have evolved striking physiological strategies for conserving scarce water through the hottest months. ______ the kangaroo rat extracts nearly all the moisture it needs from dry seeds, rarely drinking free water at all.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Moreover,","is_correct":false,"explanation":"[Register Clash] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Notably,","is_correct":true,"explanation":"Correct (D). Notably, signals example between the two clauses, matching the logical relationship in the passage."}]'::jsonb, 'D', 'Step 1 — Identify the relationship
Focus on {{yellow:Several}} in the passage. The transition item asks you to identify the relationship before comparing choices.

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
VALUES ('e7ab8294-5da3-49c2-b66f-5b7972c32964', 'Which choice completes the text with the most logical transition?', 'Researchers revisiting a long-debated question in the field recently reported findings that have renewed scholarly discussion of the issue. The committee assumed that lowering ticket prices would immediately fill the concert hall''s many empty weeknight seats. ______ attendance barely changed, suggesting that scheduling, not cost, governed whether residents chose to attend evening performances.', 'passage', '[{"id":"A","text":"Still,","is_correct":true,"explanation":"Correct (A). Still, signals contrast between the two clauses, matching the logical relationship in the passage."},{"id":"B","text":"Consequently,","is_correct":false,"explanation":"[Synonym Trap] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Furthermore,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Furthermore, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Instead,","is_correct":false,"explanation":"[Register Clash] [Category Shift] Instead, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
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
VALUES ('d8c733eb-2664-4dde-bcef-41bb638dee89', 'Which choice completes the text with the most logical transition?', 'A study published this year set out to test an assumption that practitioners had accepted with little scrutiny for years. The museum extended its evening hours and waived admission on the first Friday of every month throughout the year. ______ weekly visitor counts rose sharply, drawing residents who had never before considered the galleries part of their routine.', 'passage', '[{"id":"A","text":"However,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Therefore,","is_correct":true,"explanation":"Correct (B). Therefore, signals cause between the two clauses, matching the logical relationship in the passage."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"[Category Shift] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Meanwhile,","is_correct":false,"explanation":"[Register Clash] [Category Shift] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'B', 'Step 1 — Identify the relationship
Focus on {{yellow:extended}} in the passage. The transition item asks you to identify the relationship before comparing choices.

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
VALUES ('0994ef64-03cc-42f4-996f-86aa90937774', 'Which choice completes the text with the most logical transition?', 'Investigators comparing two competing explanations gathered fresh evidence intended to settle a dispute that had persisted for several decades. The telescope''s upgraded sensor captured faint galaxies far beyond the reach of its original instruments. ______ it resolved fine structural detail in nearer nebulae that previous surveys had recorded only as indistinct smudges.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Furthermore,","is_correct":true,"explanation":"Correct (C). Furthermore, signals addition between the two clauses, matching the logical relationship in the passage."},{"id":"D","text":"Meanwhile,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'C', 'Step 1 — Identify the relationship
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
VALUES ('653007f4-64b3-45d0-859a-1e4ba0d8bdbe', 'Which choice completes the text with the most logical transition?', 'An analysis of newly available records prompted scholars to reconsider a conclusion that earlier accounts had treated as well established. A number of social insects coordinate complex tasks without any central authority directing the colony''s daily labor. ______ one ant species recruits foragers to new food through chemical trails that strengthen only while the supply lasts.', 'passage', '[{"id":"A","text":"Yet,","is_correct":false,"explanation":"[Synonym Trap] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Consequently,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Chiefly,","is_correct":true,"explanation":"Correct (D). Chiefly, signals example between the two clauses, matching the logical relationship in the passage."}]'::jsonb, 'D', 'Step 1 — Identify the relationship
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
VALUES ('369560f5-9b15-48fc-b3f8-7e218ad00357', 'Which choice completes the text with the most logical transition?', 'Examining the problem with improved instruments, a research team uncovered a pattern that earlier and cruder surveys had entirely missed. Early climate models projected that the coastal wetlands would dry out completely within two decades as regional temperatures steadily climbed. ______ monitoring stations have recorded remarkably stable water levels across the same interval, prompting researchers to revisit their founding assumptions.', 'passage', '[{"id":"A","text":"However,","is_correct":true,"explanation":"Correct (A). However, signals contrast between the two clauses, matching the logical relationship in the passage."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"[Category Shift] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Meanwhile,","is_correct":false,"explanation":"[Register Clash] [Category Shift] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
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
VALUES ('09d45699-b92b-4c5d-859f-d7505e78fb31', 'Which choice completes the text with the most logical transition?', 'Drawing on data collected across many years, analysts reported a result that complicates the tidy account found in older textbooks. Sustained overfishing removed most of the large predators that had long regulated the reef''s delicate food web. ______ populations of smaller grazing species surged unchecked, stripping the coral of the algae that sheltered juvenile fish.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Thus,","is_correct":true,"explanation":"Correct (B). Thus, signals cause between the two clauses, matching the logical relationship in the passage."},{"id":"C","text":"Moreover,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Yet,","is_correct":false,"explanation":"[Register Clash] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'B', 'Step 1 — Identify the relationship
Focus on {{yellow:Sustained}} in the passage. The transition item asks you to identify the relationship before comparing choices.

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
VALUES ('8913ff74-176f-4f57-88aa-8b1a3d224b2c', 'Which choice completes the text with the most logical transition?', 'Researchers revisiting a long-debated question in the field recently reported findings that have renewed scholarly discussion of the issue. The author''s later essays sharpened her critique of unchecked industrial expansion across the rapidly growing river towns. ______ they widened her focus to include the displaced laborers whose testimony earlier reformers had largely ignored.', 'passage', '[{"id":"A","text":"Yet,","is_correct":false,"explanation":"[Synonym Trap] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Consequently,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Similarly,","is_correct":true,"explanation":"Correct (C). Similarly, signals addition between the two clauses, matching the logical relationship in the passage."},{"id":"D","text":"Still,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Still, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'C', 'Step 1 — Identify the relationship
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
VALUES ('639e70e0-cf18-46cd-ba72-59db65d0c654', 'Which choice completes the text with the most logical transition?', 'A study published this year set out to test an assumption that practitioners had accepted with little scrutiny for years. Some composers of the period borrowed folk melodies and reworked them into elaborate concert pieces for urban audiences. ______ one symphony famously transforms a simple harvest song into a sweeping movement scored for the full orchestra.', 'passage', '[{"id":"A","text":"However,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"[Category Shift] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"[Register Clash] [Category Shift] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Specifically,","is_correct":true,"explanation":"Correct (D). Specifically, signals example between the two clauses, matching the logical relationship in the passage."}]'::jsonb, 'D', 'Step 1 — Identify the relationship
Focus on {{yellow:borrowed}} in the passage. The transition item asks you to identify the relationship before comparing choices.

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
VALUES ('10b74d82-2946-4450-a230-4c7e20b8bbb2', 'Which choice completes the text with the most logical transition?', 'Investigators comparing two competing explanations gathered fresh evidence intended to settle a dispute that had persisted for several decades. Critics initially dismissed the novelist''s fragmented chronology as a careless lapse in narrative craft. ______ later scholars argued that the disordered timeline deliberately mirrors how memory reconstructs the past for the grieving narrator.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Correct (A). Nevertheless, signals contrast between the two clauses, matching the logical relationship in the passage."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Moreover,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Yet,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:several}} in the passage. The transition item asks you to identify the relationship before comparing choices.

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
VALUES ('09b8caa9-8dc4-4e9c-8a35-5538257f804a', 'Which choice completes the text with the most logical transition?', 'An analysis of newly available records prompted scholars to reconsider a conclusion that earlier accounts had treated as well established. The new irrigation channels diverted a steady share of the river toward previously arid terraces on the valley''s western slope. ______ crop yields on those terraces nearly doubled within three growing seasons, transforming the village''s fragile subsistence economy.', 'passage', '[{"id":"A","text":"Still,","is_correct":false,"explanation":"[Synonym Trap] Still, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Consequently,","is_correct":true,"explanation":"Correct (B). Consequently, signals cause between the two clauses, matching the logical relationship in the passage."},{"id":"C","text":"Furthermore,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Furthermore, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Instead,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Instead, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'B', 'Step 1 — Identify the relationship
Focus on {{yellow:treated}} in the passage. The transition item asks you to identify the relationship before comparing choices.

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
VALUES ('29a4a649-7148-497f-920d-d5fa650fbed7', 'Which choice completes the text with the most logical transition?', 'Examining the problem with improved instruments, a research team uncovered a pattern that earlier and cruder surveys had entirely missed. The apprenticeship program paired newcomers with veteran machinists who modeled careful, deliberate technique on every shop-floor task. ______ it reimbursed tuition for evening coursework, allowing participants to deepen the theory underlying the skills they practiced daily.', 'passage', '[{"id":"A","text":"However,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"[Category Shift] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Moreover,","is_correct":true,"explanation":"Correct (C). Moreover, signals addition between the two clauses, matching the logical relationship in the passage."},{"id":"D","text":"Similarly,","is_correct":false,"explanation":"[Register Clash] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'C', 'Step 1 — Identify the relationship
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
VALUES ('d23b9ff3-e477-46ad-b7c5-eaea3fd5d7a4', 'Which choice completes the text with the most logical transition?', 'Drawing on data collected across many years, analysts reported a result that complicates the tidy account found in older textbooks. Certain coastal cities have begun redesigning public space to absorb rather than repel rising storm water. ______ one harbor district replaced acres of pavement with tiered gardens engineered to flood briefly and drain slowly.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Moreover,","is_correct":false,"explanation":"[Register Clash] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Notably,","is_correct":true,"explanation":"Correct (D). Notably, signals example between the two clauses, matching the logical relationship in the passage."}]'::jsonb, 'D', 'Step 1 — Identify the relationship
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
VALUES ('8cf4d8e1-3d75-46de-88dd-f9fe0f05d8dc', 'Which choice completes the text with the most logical transition?', 'Researchers revisiting a long-debated question in the field recently reported findings that have renewed scholarly discussion of the issue. The first clinical trial reported that the compound sharply reduced inflammation in nearly every treated participant. ______ a larger replication enrolling more diverse volunteers detected only a modest and inconsistent effect across the sample.', 'passage', '[{"id":"A","text":"Still,","is_correct":true,"explanation":"Correct (A). Still, signals contrast between the two clauses, matching the logical relationship in the passage."},{"id":"B","text":"Consequently,","is_correct":false,"explanation":"[Synonym Trap] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Furthermore,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Furthermore, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Instead,","is_correct":false,"explanation":"[Register Clash] [Category Shift] Instead, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
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
VALUES ('cd8389dd-826f-4ac2-a318-379cda72dd2e', 'Which choice completes the text with the most logical transition?', 'A study published this year set out to test an assumption that practitioners had accepted with little scrutiny for years. The editor imposed a strict word limit on every submitted essay regardless of its subject or argumentative ambition. ______ contributors learned to prune digressions ruthlessly, and the journal''s prose grew noticeably tighter over the following issues.', 'passage', '[{"id":"A","text":"However,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Therefore,","is_correct":true,"explanation":"Correct (B). Therefore, signals cause between the two clauses, matching the logical relationship in the passage."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"[Category Shift] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Meanwhile,","is_correct":false,"explanation":"[Register Clash] [Category Shift] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'B', 'Step 1 — Identify the relationship
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
VALUES ('942eb158-1b78-43da-8f80-2825ae03dbf8', 'Which choice completes the text with the most logical transition?', 'Investigators comparing two competing explanations gathered fresh evidence intended to settle a dispute that had persisted for several decades. The restored marsh filtered agricultural runoff before it reached the bay, measurably improving water clarity downstream within a single season. ______ it provided sheltered nesting habitat for several waterbird species that had not been seen in the watershed for years.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Furthermore,","is_correct":true,"explanation":"Correct (C). Furthermore, signals addition between the two clauses, matching the logical relationship in the passage."},{"id":"D","text":"Meanwhile,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'C', 'Step 1 — Identify the relationship
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
VALUES ('27a40c5d-d8a5-4c9d-8efa-035c2dedc4fa', 'Which choice completes the text with the most logical transition?', 'An analysis of newly available records prompted scholars to reconsider a conclusion that earlier accounts had treated as well established. A few nineteenth-century cartographers embedded subtle errors in their maps to expose competitors who copied their work. ______ one celebrated atlas inserted a fictitious village whose later appearance in a rival edition proved deliberate plagiarism.', 'passage', '[{"id":"A","text":"Yet,","is_correct":false,"explanation":"[Synonym Trap] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Consequently,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Chiefly,","is_correct":true,"explanation":"Correct (D). Chiefly, signals example between the two clauses, matching the logical relationship in the passage."}]'::jsonb, 'D', 'Step 1 — Identify the relationship
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
VALUES ('3a6d84be-779b-4720-a8d7-d249f7e96f97', 'Which choice completes the text with the most logical transition?', 'Examining the problem with improved instruments, a research team uncovered a pattern that earlier and cruder surveys had entirely missed. Conventional accounts portray the medieval guilds as rigid institutions that stifled any meaningful technical innovation. ______ surviving workshop records reveal craftsmen quietly experimenting with new tools and materials whenever competition intensified.', 'passage', '[{"id":"A","text":"However,","is_correct":true,"explanation":"Correct (A). However, signals contrast between the two clauses, matching the logical relationship in the passage."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"[Category Shift] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Meanwhile,","is_correct":false,"explanation":"[Register Clash] [Category Shift] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
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
VALUES ('3a48a72f-93ca-47d7-ab5a-dd32cba4c833', 'Which choice completes the text with the most logical transition?', 'Drawing on data collected across many years, analysts reported a result that complicates the tidy account found in older textbooks. Prolonged drought sharply reduced the flowering plants that the region''s native bees depend on for nectar each spring. ______ local pollinator numbers declined steeply, and nearby orchards reported their thinnest fruit set in more than a decade.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Thus,","is_correct":true,"explanation":"Correct (B). Thus, signals cause between the two clauses, matching the logical relationship in the passage."},{"id":"C","text":"Moreover,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Yet,","is_correct":false,"explanation":"[Register Clash] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'B', 'Step 1 — Identify the relationship
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
VALUES ('417fdda5-ca98-473d-92d5-ca8728d51610', 'Which choice completes the text with the most logical transition?', 'Researchers revisiting a long-debated question in the field recently reported findings that have renewed scholarly discussion of the issue. The policy lowered commuting costs for residents of the city''s underserved outer districts almost immediately. ______ it reduced roadway congestion at peak hours, trimming the average downtown trip by several unhurried minutes.', 'passage', '[{"id":"A","text":"Yet,","is_correct":false,"explanation":"[Synonym Trap] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Consequently,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Similarly,","is_correct":true,"explanation":"Correct (C). Similarly, signals addition between the two clauses, matching the logical relationship in the passage."},{"id":"D","text":"Still,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Still, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'C', 'Step 1 — Identify the relationship
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
VALUES ('7d915eed-4a76-4650-b8a4-156bfa6808e2', 'Which choice completes the text with the most logical transition?', 'A study published this year set out to test an assumption that practitioners had accepted with little scrutiny for years. Several nocturnal desert mammals have evolved striking physiological strategies for conserving scarce water through the hottest months. ______ the kangaroo rat extracts nearly all the moisture it needs from dry seeds, rarely drinking free water at all.', 'passage', '[{"id":"A","text":"However,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"[Category Shift] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"[Register Clash] [Category Shift] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Specifically,","is_correct":true,"explanation":"Correct (D). Specifically, signals example between the two clauses, matching the logical relationship in the passage."}]'::jsonb, 'D', 'Step 1 — Identify the relationship
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
VALUES ('82ef8514-fe13-4812-bd78-8ab429639b8d', 'Which choice completes the text with the most logical transition?', 'Investigators comparing two competing explanations gathered fresh evidence intended to settle a dispute that had persisted for several decades. The committee assumed that lowering ticket prices would immediately fill the concert hall''s many empty weeknight seats. ______ attendance barely changed, suggesting that scheduling, not cost, governed whether residents chose to attend evening performances.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Correct (A). Nevertheless, signals contrast between the two clauses, matching the logical relationship in the passage."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Moreover,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Yet,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
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
VALUES ('a412a428-d886-4c9c-b178-8f6120ce11b8', 'Which choice completes the text with the most logical transition?', 'An analysis of newly available records prompted scholars to reconsider a conclusion that earlier accounts had treated as well established. The museum extended its evening hours and waived admission on the first Friday of every month throughout the year. ______ weekly visitor counts rose sharply, drawing residents who had never before considered the galleries part of their routine.', 'passage', '[{"id":"A","text":"Still,","is_correct":false,"explanation":"[Synonym Trap] Still, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Consequently,","is_correct":true,"explanation":"Correct (B). Consequently, signals cause between the two clauses, matching the logical relationship in the passage."},{"id":"C","text":"Furthermore,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Furthermore, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Instead,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Instead, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'B', 'Step 1 — Identify the relationship
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
VALUES ('e2c53def-d8a6-4015-a7b4-12f7a24add3b', 'Which choice completes the text with the most logical transition?', 'Examining the problem with improved instruments, a research team uncovered a pattern that earlier and cruder surveys had entirely missed. The telescope''s upgraded sensor captured faint galaxies far beyond the reach of its original instruments. ______ it resolved fine structural detail in nearer nebulae that previous surveys had recorded only as indistinct smudges.', 'passage', '[{"id":"A","text":"However,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"[Category Shift] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Moreover,","is_correct":true,"explanation":"Correct (C). Moreover, signals addition between the two clauses, matching the logical relationship in the passage."},{"id":"D","text":"Similarly,","is_correct":false,"explanation":"[Register Clash] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'C', 'Step 1 — Identify the relationship
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
VALUES ('0e8210bd-5424-48c5-b676-5484288b66ec', 'Which choice completes the text with the most logical transition?', 'Drawing on data collected across many years, analysts reported a result that complicates the tidy account found in older textbooks. A number of social insects coordinate complex tasks without any central authority directing the colony''s daily labor. ______ one ant species recruits foragers to new food through chemical trails that strengthen only while the supply lasts.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Moreover,","is_correct":false,"explanation":"[Register Clash] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Notably,","is_correct":true,"explanation":"Correct (D). Notably, signals example between the two clauses, matching the logical relationship in the passage."}]'::jsonb, 'D', 'Step 1 — Identify the relationship
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
VALUES ('c9a9cd8a-cfd5-44c3-97c5-a21e6d01a697', 'Which choice completes the text with the most logical transition?', 'Researchers revisiting a long-debated question in the field recently reported findings that have renewed scholarly discussion of the issue. Early climate models projected that the coastal wetlands would dry out completely within two decades as regional temperatures steadily climbed. ______ monitoring stations have recorded remarkably stable water levels across the same interval, prompting researchers to revisit their founding assumptions.', 'passage', '[{"id":"A","text":"Still,","is_correct":true,"explanation":"Correct (A). Still, signals contrast between the two clauses, matching the logical relationship in the passage."},{"id":"B","text":"Consequently,","is_correct":false,"explanation":"[Synonym Trap] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Furthermore,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Furthermore, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Instead,","is_correct":false,"explanation":"[Register Clash] [Category Shift] Instead, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
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
VALUES ('b38a02f6-78ac-4731-9ddd-b5d0e2334021', 'Which choice completes the text with the most logical transition?', 'A study published this year set out to test an assumption that practitioners had accepted with little scrutiny for years. Sustained overfishing removed most of the large predators that had long regulated the reef''s delicate food web. ______ populations of smaller grazing species surged unchecked, stripping the coral of the algae that sheltered juvenile fish.', 'passage', '[{"id":"A","text":"However,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Therefore,","is_correct":true,"explanation":"Correct (B). Therefore, signals cause between the two clauses, matching the logical relationship in the passage."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"[Category Shift] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Meanwhile,","is_correct":false,"explanation":"[Register Clash] [Category Shift] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'B', 'Step 1 — Identify the relationship
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
VALUES ('4adb251d-60b8-4780-9968-4058fe7d2e56', 'Which choice completes the text with the most logical transition?', 'Investigators comparing two competing explanations gathered fresh evidence intended to settle a dispute that had persisted for several decades. The author''s later essays sharpened her critique of unchecked industrial expansion across the rapidly growing river towns. ______ they widened her focus to include the displaced laborers whose testimony earlier reformers had largely ignored.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Furthermore,","is_correct":true,"explanation":"Correct (C). Furthermore, signals addition between the two clauses, matching the logical relationship in the passage."},{"id":"D","text":"Meanwhile,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'C', 'Step 1 — Identify the relationship
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
VALUES ('bd3ffc8d-3b43-4558-bebd-b89af45ac2bb', 'Which choice completes the text with the most logical transition?', 'An analysis of newly available records prompted scholars to reconsider a conclusion that earlier accounts had treated as well established. Some composers of the period borrowed folk melodies and reworked them into elaborate concert pieces for urban audiences. ______ one symphony famously transforms a simple harvest song into a sweeping movement scored for the full orchestra.', 'passage', '[{"id":"A","text":"Yet,","is_correct":false,"explanation":"[Synonym Trap] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Consequently,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Chiefly,","is_correct":true,"explanation":"Correct (D). Chiefly, signals example between the two clauses, matching the logical relationship in the passage."}]'::jsonb, 'D', 'Step 1 — Identify the relationship
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
VALUES ('f3e6514d-0630-474d-9dc2-36d7ff0aa52b', 'Which choice completes the text with the most logical transition?', 'Examining the problem with improved instruments, a research team uncovered a pattern that earlier and cruder surveys had entirely missed. Critics initially dismissed the novelist''s fragmented chronology as a careless lapse in narrative craft. ______ later scholars argued that the disordered timeline deliberately mirrors how memory reconstructs the past for the grieving narrator.', 'passage', '[{"id":"A","text":"However,","is_correct":true,"explanation":"Correct (A). However, signals contrast between the two clauses, matching the logical relationship in the passage."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"[Category Shift] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Meanwhile,","is_correct":false,"explanation":"[Register Clash] [Category Shift] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
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
VALUES ('90e001f1-8464-40c2-bae6-c18513d85c20', 'Which choice completes the text with the most logical transition?', 'Drawing on data collected across many years, analysts reported a result that complicates the tidy account found in older textbooks. The new irrigation channels diverted a steady share of the river toward previously arid terraces on the valley''s western slope. ______ crop yields on those terraces nearly doubled within three growing seasons, transforming the village''s fragile subsistence economy.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Thus,","is_correct":true,"explanation":"Correct (B). Thus, signals cause between the two clauses, matching the logical relationship in the passage."},{"id":"C","text":"Moreover,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Yet,","is_correct":false,"explanation":"[Register Clash] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'B', 'Step 1 — Identify the relationship
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
VALUES ('e0a29b23-374c-4f38-a36a-5608cacb7cb2', 'Which choice completes the text with the most logical transition?', 'Researchers revisiting a long-debated question in the field recently reported findings that have renewed scholarly discussion of the issue. The apprenticeship program paired newcomers with veteran machinists who modeled careful, deliberate technique on every shop-floor task. ______ it reimbursed tuition for evening coursework, allowing participants to deepen the theory underlying the skills they practiced daily.', 'passage', '[{"id":"A","text":"Yet,","is_correct":false,"explanation":"[Synonym Trap] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Consequently,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Similarly,","is_correct":true,"explanation":"Correct (C). Similarly, signals addition between the two clauses, matching the logical relationship in the passage."},{"id":"D","text":"Still,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Still, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'C', 'Step 1 — Identify the relationship
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
VALUES ('5270e87e-58be-483d-b534-0201492ae6e6', 'Which choice completes the text with the most logical transition?', 'A study published this year set out to test an assumption that practitioners had accepted with little scrutiny for years. Certain coastal cities have begun redesigning public space to absorb rather than repel rising storm water. ______ one harbor district replaced acres of pavement with tiered gardens engineered to flood briefly and drain slowly.', 'passage', '[{"id":"A","text":"However,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"[Category Shift] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"[Register Clash] [Category Shift] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Specifically,","is_correct":true,"explanation":"Correct (D). Specifically, signals example between the two clauses, matching the logical relationship in the passage."}]'::jsonb, 'D', 'Step 1 — Identify the relationship
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
VALUES ('6eded0ae-7ae3-4b5e-a404-86a39c86062b', 'Which choice completes the text with the most logical transition?', 'Investigators comparing two competing explanations gathered fresh evidence intended to settle a dispute that had persisted for several decades. The first clinical trial reported that the compound sharply reduced inflammation in nearly every treated participant. ______ a larger replication enrolling more diverse volunteers detected only a modest and inconsistent effect across the sample.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Correct (A). Nevertheless, signals contrast between the two clauses, matching the logical relationship in the passage."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Moreover,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Yet,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
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
VALUES ('235c2976-f40d-435d-843f-287a3912808d', 'Which choice completes the text with the most logical transition?', 'An analysis of newly available records prompted scholars to reconsider a conclusion that earlier accounts had treated as well established. The editor imposed a strict word limit on every submitted essay regardless of its subject or argumentative ambition. ______ contributors learned to prune digressions ruthlessly, and the journal''s prose grew noticeably tighter over the following issues.', 'passage', '[{"id":"A","text":"Still,","is_correct":false,"explanation":"[Synonym Trap] Still, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Consequently,","is_correct":true,"explanation":"Correct (B). Consequently, signals cause between the two clauses, matching the logical relationship in the passage."},{"id":"C","text":"Furthermore,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Furthermore, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Instead,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Instead, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'B', 'Step 1 — Identify the relationship
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
VALUES ('9ed978da-27df-4072-b381-8107483a2ccc', 'Which choice completes the text with the most logical transition?', 'Examining the problem with improved instruments, a research team uncovered a pattern that earlier and cruder surveys had entirely missed. The restored marsh filtered agricultural runoff before it reached the bay, measurably improving water clarity downstream within a single season. ______ it provided sheltered nesting habitat for several waterbird species that had not been seen in the watershed for years.', 'passage', '[{"id":"A","text":"However,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"[Category Shift] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Moreover,","is_correct":true,"explanation":"Correct (C). Moreover, signals addition between the two clauses, matching the logical relationship in the passage."},{"id":"D","text":"Similarly,","is_correct":false,"explanation":"[Register Clash] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'C', 'Step 1 — Identify the relationship
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
VALUES ('3ebb18cd-3d94-4596-8c47-689fe69bc07c', 'Which choice completes the text with the most logical transition?', 'Drawing on data collected across many years, analysts reported a result that complicates the tidy account found in older textbooks. A few nineteenth-century cartographers embedded subtle errors in their maps to expose competitors who copied their work. ______ one celebrated atlas inserted a fictitious village whose later appearance in a rival edition proved deliberate plagiarism.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Moreover,","is_correct":false,"explanation":"[Register Clash] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Notably,","is_correct":true,"explanation":"Correct (D). Notably, signals example between the two clauses, matching the logical relationship in the passage."}]'::jsonb, 'D', 'Step 1 — Identify the relationship
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
VALUES ('97d6346a-193b-47ef-b266-b9de36f53086', 'Which choice completes the text with the most logical transition?', 'Researchers revisiting a long-debated question in the field recently reported findings that have renewed scholarly discussion of the issue. Conventional accounts portray the medieval guilds as rigid institutions that stifled any meaningful technical innovation. ______ surviving workshop records reveal craftsmen quietly experimenting with new tools and materials whenever competition intensified.', 'passage', '[{"id":"A","text":"Still,","is_correct":true,"explanation":"Correct (A). Still, signals contrast between the two clauses, matching the logical relationship in the passage."},{"id":"B","text":"Consequently,","is_correct":false,"explanation":"[Synonym Trap] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Furthermore,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Furthermore, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Instead,","is_correct":false,"explanation":"[Register Clash] [Category Shift] Instead, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
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
VALUES ('d847f553-f8a9-412e-ab24-bc6a042bde55', 'Which choice completes the text with the most logical transition?', 'A study published this year set out to test an assumption that practitioners had accepted with little scrutiny for years. Prolonged drought sharply reduced the flowering plants that the region''s native bees depend on for nectar each spring. ______ local pollinator numbers declined steeply, and nearby orchards reported their thinnest fruit set in more than a decade.', 'passage', '[{"id":"A","text":"However,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Therefore,","is_correct":true,"explanation":"Correct (B). Therefore, signals cause between the two clauses, matching the logical relationship in the passage."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"[Category Shift] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Meanwhile,","is_correct":false,"explanation":"[Register Clash] [Category Shift] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'B', 'Step 1 — Identify the relationship
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
VALUES ('d35cb590-ce9d-4a22-9d6b-a5e9f88e9d20', 'Which choice completes the text with the most logical transition?', 'Investigators comparing two competing explanations gathered fresh evidence intended to settle a dispute that had persisted for several decades. The policy lowered commuting costs for residents of the city''s underserved outer districts almost immediately. ______ it reduced roadway congestion at peak hours, trimming the average downtown trip by several unhurried minutes.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Furthermore,","is_correct":true,"explanation":"Correct (C). Furthermore, signals addition between the two clauses, matching the logical relationship in the passage."},{"id":"D","text":"Meanwhile,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'C', 'Step 1 — Identify the relationship
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
VALUES ('90a2c824-9c95-451d-9115-f58aadc47d96', 'Which choice completes the text with the most logical transition?', 'An analysis of newly available records prompted scholars to reconsider a conclusion that earlier accounts had treated as well established. Several nocturnal desert mammals have evolved striking physiological strategies for conserving scarce water through the hottest months. ______ the kangaroo rat extracts nearly all the moisture it needs from dry seeds, rarely drinking free water at all.', 'passage', '[{"id":"A","text":"Yet,","is_correct":false,"explanation":"[Synonym Trap] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Consequently,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Chiefly,","is_correct":true,"explanation":"Correct (D). Chiefly, signals example between the two clauses, matching the logical relationship in the passage."}]'::jsonb, 'D', 'Step 1 — Identify the relationship
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
VALUES ('067fe959-b900-4213-b2e7-74382c3bb703', 'Which choice completes the text with the most logical transition?', 'Examining the problem with improved instruments, a research team uncovered a pattern that earlier and cruder surveys had entirely missed. The committee assumed that lowering ticket prices would immediately fill the concert hall''s many empty weeknight seats. ______ attendance barely changed, suggesting that scheduling, not cost, governed whether residents chose to attend evening performances.', 'passage', '[{"id":"A","text":"However,","is_correct":true,"explanation":"Correct (A). However, signals contrast between the two clauses, matching the logical relationship in the passage."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"[Category Shift] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Meanwhile,","is_correct":false,"explanation":"[Register Clash] [Category Shift] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
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
VALUES ('ed5fce3d-cf58-4fb1-991f-8f76b44cdbd9', 'Which choice completes the text with the most logical transition?', 'Drawing on data collected across many years, analysts reported a result that complicates the tidy account found in older textbooks. The museum extended its evening hours and waived admission on the first Friday of every month throughout the year. ______ weekly visitor counts rose sharply, drawing residents who had never before considered the galleries part of their routine.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Thus,","is_correct":true,"explanation":"Correct (B). Thus, signals cause between the two clauses, matching the logical relationship in the passage."},{"id":"C","text":"Moreover,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Yet,","is_correct":false,"explanation":"[Register Clash] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'B', 'Step 1 — Identify the relationship
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
VALUES ('4d2dacc1-aa97-4191-992d-6f0cb18aece3', 'Which choice completes the text with the most logical transition?', 'Researchers revisiting a long-debated question in the field recently reported findings that have renewed scholarly discussion of the issue. The telescope''s upgraded sensor captured faint galaxies far beyond the reach of its original instruments. ______ it resolved fine structural detail in nearer nebulae that previous surveys had recorded only as indistinct smudges.', 'passage', '[{"id":"A","text":"Yet,","is_correct":false,"explanation":"[Synonym Trap] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Consequently,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Similarly,","is_correct":true,"explanation":"Correct (C). Similarly, signals addition between the two clauses, matching the logical relationship in the passage."},{"id":"D","text":"Still,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Still, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'C', 'Step 1 — Identify the relationship
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
VALUES ('ee6be364-9fdc-4d9e-ad61-a668f5f2846f', 'Which choice completes the text with the most logical transition?', 'A study published this year set out to test an assumption that practitioners had accepted with little scrutiny for years. A number of social insects coordinate complex tasks without any central authority directing the colony''s daily labor. ______ one ant species recruits foragers to new food through chemical trails that strengthen only while the supply lasts.', 'passage', '[{"id":"A","text":"However,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"[Category Shift] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"[Register Clash] [Category Shift] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Specifically,","is_correct":true,"explanation":"Correct (D). Specifically, signals example between the two clauses, matching the logical relationship in the passage."}]'::jsonb, 'D', 'Step 1 — Identify the relationship
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
VALUES ('4960dc98-9de7-40c0-8b40-22f8a4ae4ff2', 'Which choice completes the text with the most logical transition?', 'Investigators comparing two competing explanations gathered fresh evidence intended to settle a dispute that had persisted for several decades. Early climate models projected that the coastal wetlands would dry out completely within two decades as regional temperatures steadily climbed. ______ monitoring stations have recorded remarkably stable water levels across the same interval, prompting researchers to revisit their founding assumptions.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Correct (A). Nevertheless, signals contrast between the two clauses, matching the logical relationship in the passage."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Moreover,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Yet,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
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
VALUES ('0559af34-9737-4994-8c8f-b181733b5c11', 'Which choice completes the text with the most logical transition?', 'An analysis of newly available records prompted scholars to reconsider a conclusion that earlier accounts had treated as well established. Sustained overfishing removed most of the large predators that had long regulated the reef''s delicate food web. ______ populations of smaller grazing species surged unchecked, stripping the coral of the algae that sheltered juvenile fish.', 'passage', '[{"id":"A","text":"Still,","is_correct":false,"explanation":"[Synonym Trap] Still, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Consequently,","is_correct":true,"explanation":"Correct (B). Consequently, signals cause between the two clauses, matching the logical relationship in the passage."},{"id":"C","text":"Furthermore,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Furthermore, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Instead,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Instead, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'B', 'Step 1 — Identify the relationship
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
VALUES ('439fdab1-1d9d-4f05-b0cc-aad1ac0a4a2b', 'Which choice completes the text with the most logical transition?', 'Examining the problem with improved instruments, a research team uncovered a pattern that earlier and cruder surveys had entirely missed. The author''s later essays sharpened her critique of unchecked industrial expansion across the rapidly growing river towns. ______ they widened her focus to include the displaced laborers whose testimony earlier reformers had largely ignored.', 'passage', '[{"id":"A","text":"However,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"[Category Shift] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Moreover,","is_correct":true,"explanation":"Correct (C). Moreover, signals addition between the two clauses, matching the logical relationship in the passage."},{"id":"D","text":"Similarly,","is_correct":false,"explanation":"[Register Clash] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'C', 'Step 1 — Identify the relationship
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
VALUES ('2705e1bb-8be1-4abb-a762-b980cbc7b771', 'Which choice completes the text with the most logical transition?', 'Drawing on data collected across many years, analysts reported a result that complicates the tidy account found in older textbooks. Some composers of the period borrowed folk melodies and reworked them into elaborate concert pieces for urban audiences. ______ one symphony famously transforms a simple harvest song into a sweeping movement scored for the full orchestra.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Moreover,","is_correct":false,"explanation":"[Register Clash] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Notably,","is_correct":true,"explanation":"Correct (D). Notably, signals example between the two clauses, matching the logical relationship in the passage."}]'::jsonb, 'D', 'Step 1 — Identify the relationship
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
VALUES ('4151f84e-0b57-4e1a-a40c-5b6b0a9642ec', 'Which choice completes the text with the most logical transition?', 'Researchers revisiting a long-debated question in the field recently reported findings that have renewed scholarly discussion of the issue. Critics initially dismissed the novelist''s fragmented chronology as a careless lapse in narrative craft. ______ later scholars argued that the disordered timeline deliberately mirrors how memory reconstructs the past for the grieving narrator.', 'passage', '[{"id":"A","text":"Still,","is_correct":true,"explanation":"Correct (A). Still, signals contrast between the two clauses, matching the logical relationship in the passage."},{"id":"B","text":"Consequently,","is_correct":false,"explanation":"[Synonym Trap] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Furthermore,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Furthermore, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Instead,","is_correct":false,"explanation":"[Register Clash] [Category Shift] Instead, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:scholarly}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: Still,.

Distractor analysis:
- B: [Synonym Trap] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Category Shift] [Synonym Trap] Furthermore, suggests a different rhetorical relationship (addition) than the one required between the clauses.
- D: [Register Clash] [Category Shift] Instead, suggests a different rhetorical relationship (contrast) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
COMMIT;
