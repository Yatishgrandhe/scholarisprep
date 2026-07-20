BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('db68a827-5771-49b6-b997-87b1d73a425a', 'Which choice completes the text with the most logical transition?', 'A study published this year set out to test an assumption that practitioners had accepted with little scrutiny for years. Several nocturnal desert mammals have evolved striking physiological strategies for conserving scarce water through the hottest months. ______ the kangaroo rat extracts nearly all the moisture it needs from dry seeds, rarely drinking free water at all.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"[Category Shift] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Moreover,","is_correct":false,"explanation":"[Register Clash] [Category Shift] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Notably,","is_correct":true,"explanation":"Correct (D). Notably, signals example between the two clauses, matching the logical relationship in the passage."}]'::jsonb, 'D', 'Step 1 — Identify the relationship
Focus on {{yellow:nocturnal}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice D is correct: Notably,.

Distractor analysis:
- A: [Synonym Trap] [Category Shift] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Register Clash] [Category Shift] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('37eef277-71fc-4b7f-9915-731a32f9b1e2', 'Which choice completes the text with the most logical transition?', 'Investigators comparing two competing explanations gathered fresh evidence intended to settle a dispute that had persisted for several decades. The committee assumed that lowering ticket prices would immediately fill the concert hall''s many empty weeknight seats. ______ attendance barely changed, suggesting that scheduling, not cost, governed whether residents chose to attend evening performances.', 'passage', '[{"id":"A","text":"Still,","is_correct":true,"explanation":"Correct (A). Still, signals contrast between the two clauses, matching the logical relationship in the passage."},{"id":"B","text":"Consequently,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Furthermore,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Furthermore, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Instead,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Instead, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:persisted}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: Still,.

Distractor analysis:
- B: [Synonym Trap] [Register Clash] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Category Shift] [Register Clash] Furthermore, suggests a different rhetorical relationship (addition) than the one required between the clauses.
- D: [Register Clash] [Synonym Trap] Instead, suggests a different rhetorical relationship (contrast) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ae7014ac-3542-4d07-be73-0da0c8f4de3b', 'Which choice completes the text with the most logical transition?', 'An analysis of newly available records prompted scholars to reconsider a conclusion that earlier accounts had treated as well established. The museum extended its evening hours and waived admission on the first Friday of every month throughout the year. ______ weekly visitor counts rose sharply, drawing residents who had never before considered the galleries part of their routine.', 'passage', '[{"id":"A","text":"However,","is_correct":false,"explanation":"[Synonym Trap] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Therefore,","is_correct":true,"explanation":"Correct (B). Therefore, signals cause between the two clauses, matching the logical relationship in the passage."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Meanwhile,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'B', 'Step 1 — Identify the relationship
Focus on {{yellow:earlier}} in the passage. The transition item asks you to identify the relationship before comparing choices.

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
VALUES ('db6b41ec-8d75-45c5-9bbb-1dbbb2ee01b6', 'Which choice completes the text with the most logical transition?', 'Examining the problem with improved instruments, a research team uncovered a pattern that earlier and cruder surveys had entirely missed. The telescope''s upgraded sensor captured faint galaxies far beyond the reach of its original instruments. ______ it resolved fine structural detail in nearer nebulae that previous surveys had recorded only as indistinct smudges.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"[Category Shift] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Furthermore,","is_correct":true,"explanation":"Correct (C). Furthermore, signals addition between the two clauses, matching the logical relationship in the passage."},{"id":"D","text":"Meanwhile,","is_correct":false,"explanation":"[Register Clash] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'C', 'Step 1 — Identify the relationship
Focus on {{yellow:surveys}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice C is correct: Furthermore,.

Distractor analysis:
- A: [Synonym Trap] [Category Shift] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- D: [Register Clash] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('722c6e1a-8727-47d6-aad6-5d4ef9cb526b', 'Which choice completes the text with the most logical transition?', 'Drawing on data collected across many years, analysts reported a result that complicates the tidy account found in older textbooks. A number of social insects coordinate complex tasks without any central authority directing the colony''s daily labor. ______ one ant species recruits foragers to new food through chemical trails that strengthen only while the supply lasts.', 'passage', '[{"id":"A","text":"Yet,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Consequently,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"[Register Clash] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Chiefly,","is_correct":true,"explanation":"Correct (D). Chiefly, signals example between the two clauses, matching the logical relationship in the passage."}]'::jsonb, 'D', 'Step 1 — Identify the relationship
Focus on {{yellow:insects}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice D is correct: Chiefly,.

Distractor analysis:
- A: [Synonym Trap] [Register Clash] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] [Register Clash] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Register Clash] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0c8783fc-6c71-4dcd-b4ce-a0c1c3e111ad', 'Which choice completes the text with the most logical transition?', 'Researchers revisiting a long-debated question in the field recently reported findings that have renewed scholarly discussion of the issue. Early climate models projected that the coastal wetlands would dry out completely within two decades as regional temperatures steadily climbed. ______ monitoring stations have recorded remarkably stable water levels across the same interval, prompting researchers to revisit their founding assumptions.', 'passage', '[{"id":"A","text":"However,","is_correct":true,"explanation":"Correct (A). However, signals contrast between the two clauses, matching the logical relationship in the passage."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"[Synonym Trap] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Meanwhile,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:climate}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: However,.

Distractor analysis:
- B: [Synonym Trap] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Category Shift] [Synonym Trap] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses.
- D: [Register Clash] [Synonym Trap] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9146ed86-5253-41e8-9515-15970a2e1290', 'Which choice completes the text with the most logical transition?', 'A study published this year set out to test an assumption that practitioners had accepted with little scrutiny for years. Sustained overfishing removed most of the large predators that had long regulated the reef''s delicate food web. ______ populations of smaller grazing species surged unchecked, stripping the coral of the algae that sheltered juvenile fish.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Thus,","is_correct":true,"explanation":"Correct (B). Thus, signals cause between the two clauses, matching the logical relationship in the passage."},{"id":"C","text":"Moreover,","is_correct":false,"explanation":"[Category Shift] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Yet,","is_correct":false,"explanation":"[Register Clash] [Category Shift] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'B', 'Step 1 — Identify the relationship
Focus on {{yellow:overfishing}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice B is correct: Thus,.

Distractor analysis:
- A: [Synonym Trap] [Category Shift] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- C: [Category Shift] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses.
- D: [Register Clash] [Category Shift] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('adacf0d5-5dc2-4a2c-b6bf-466eefdb18ed', 'Which choice completes the text with the most logical transition?', 'Investigators comparing two competing explanations gathered fresh evidence intended to settle a dispute that had persisted for several decades. The author''s later essays sharpened her critique of unchecked industrial expansion across the rapidly growing river towns. ______ they widened her focus to include the displaced laborers whose testimony earlier reformers had largely ignored.', 'passage', '[{"id":"A","text":"Yet,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Consequently,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Similarly,","is_correct":true,"explanation":"Correct (C). Similarly, signals addition between the two clauses, matching the logical relationship in the passage."},{"id":"D","text":"Still,","is_correct":false,"explanation":"[Register Clash] Still, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'C', 'Step 1 — Identify the relationship
Focus on {{yellow:several}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice C is correct: Similarly,.

Distractor analysis:
- A: [Synonym Trap] [Register Clash] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] [Register Clash] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- D: [Register Clash] Still, suggests a different rhetorical relationship (contrast) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('62202fed-d0d3-4463-bcc2-2d3699b0ee0f', 'Which choice completes the text with the most logical transition?', 'An analysis of newly available records prompted scholars to reconsider a conclusion that earlier accounts had treated as well established. Some composers of the period borrowed folk melodies and reworked them into elaborate concert pieces for urban audiences. ______ one symphony famously transforms a simple harvest song into a sweeping movement scored for the full orchestra.', 'passage', '[{"id":"A","text":"However,","is_correct":false,"explanation":"[Synonym Trap] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Specifically,","is_correct":true,"explanation":"Correct (D). Specifically, signals example between the two clauses, matching the logical relationship in the passage."}]'::jsonb, 'D', 'Step 1 — Identify the relationship
Focus on {{yellow:accounts}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice D is correct: Specifically,.

Distractor analysis:
- A: [Synonym Trap] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] [Synonym Trap] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Register Clash] [Synonym Trap] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d8f9ba3b-5ac3-4389-8132-ef24171770eb', 'Which choice completes the text with the most logical transition?', 'Examining the problem with improved instruments, a research team uncovered a pattern that earlier and cruder surveys had entirely missed. Critics initially dismissed the novelist''s fragmented chronology as a careless lapse in narrative craft. ______ later scholars argued that the disordered timeline deliberately mirrors how memory reconstructs the past for the grieving narrator.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Correct (A). Nevertheless, signals contrast between the two clauses, matching the logical relationship in the passage."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Moreover,","is_correct":false,"explanation":"[Category Shift] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Yet,","is_correct":false,"explanation":"[Register Clash] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:entirely}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: Nevertheless,.

Distractor analysis:
- B: [Synonym Trap] [Category Shift] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Category Shift] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses.
- D: [Register Clash] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3ffcd3aa-b85c-4894-a949-dee91cda30f0', 'Which choice completes the text with the most logical transition?', 'Drawing on data collected across many years, analysts reported a result that complicates the tidy account found in older textbooks. The new irrigation channels diverted a steady share of the river toward previously arid terraces on the valley''s western slope. ______ crop yields on those terraces nearly doubled within three growing seasons, transforming the village''s fragile subsistence economy.', 'passage', '[{"id":"A","text":"Still,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Still, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Consequently,","is_correct":true,"explanation":"Correct (B). Consequently, signals cause between the two clauses, matching the logical relationship in the passage."},{"id":"C","text":"Furthermore,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Furthermore, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Instead,","is_correct":false,"explanation":"[Register Clash] Instead, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'B', 'Step 1 — Identify the relationship
Focus on {{yellow:irrigation}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice B is correct: Consequently,.

Distractor analysis:
- A: [Synonym Trap] [Register Clash] Still, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- C: [Category Shift] [Register Clash] Furthermore, suggests a different rhetorical relationship (addition) than the one required between the clauses.
- D: [Register Clash] Instead, suggests a different rhetorical relationship (contrast) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('37595fb3-b31b-4743-9561-b0752fa58155', 'Which choice completes the text with the most logical transition?', 'Researchers revisiting a long-debated question in the field recently reported findings that have renewed scholarly discussion of the issue. The apprenticeship program paired newcomers with veteran machinists who modeled careful, deliberate technique on every shop-floor task. ______ it reimbursed tuition for evening coursework, allowing participants to deepen the theory underlying the skills they practiced daily.', 'passage', '[{"id":"A","text":"However,","is_correct":false,"explanation":"[Synonym Trap] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Moreover,","is_correct":true,"explanation":"Correct (C). Moreover, signals addition between the two clauses, matching the logical relationship in the passage."},{"id":"D","text":"Similarly,","is_correct":false,"explanation":"[Register Clash] [Category Shift] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'C', 'Step 1 — Identify the relationship
Focus on {{yellow:discussion}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice C is correct: Moreover,.

Distractor analysis:
- A: [Synonym Trap] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] [Synonym Trap] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- D: [Register Clash] [Category Shift] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('682964d9-8f92-436d-b155-24e37ae80bf1', 'Which choice completes the text with the most logical transition?', 'A study published this year set out to test an assumption that practitioners had accepted with little scrutiny for years. Certain coastal cities have begun redesigning public space to absorb rather than repel rising storm water. ______ one harbor district replaced acres of pavement with tiered gardens engineered to flood briefly and drain slowly.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"[Category Shift] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Moreover,","is_correct":false,"explanation":"[Register Clash] [Category Shift] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Notably,","is_correct":true,"explanation":"Correct (D). Notably, signals example between the two clauses, matching the logical relationship in the passage."}]'::jsonb, 'D', 'Step 1 — Identify the relationship
Focus on {{yellow:Certain}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice D is correct: Notably,.

Distractor analysis:
- A: [Synonym Trap] [Category Shift] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Register Clash] [Category Shift] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8ea6c213-ff6c-43ce-9292-5e8d5b8fd0e1', 'Which choice completes the text with the most logical transition?', 'Investigators comparing two competing explanations gathered fresh evidence intended to settle a dispute that had persisted for several decades. The first clinical trial reported that the compound sharply reduced inflammation in nearly every treated participant. ______ a larger replication enrolling more diverse volunteers detected only a modest and inconsistent effect across the sample.', 'passage', '[{"id":"A","text":"Still,","is_correct":true,"explanation":"Correct (A). Still, signals contrast between the two clauses, matching the logical relationship in the passage."},{"id":"B","text":"Consequently,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Furthermore,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Furthermore, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Instead,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Instead, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:persisted}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: Still,.

Distractor analysis:
- B: [Synonym Trap] [Register Clash] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Category Shift] [Register Clash] Furthermore, suggests a different rhetorical relationship (addition) than the one required between the clauses.
- D: [Register Clash] [Synonym Trap] Instead, suggests a different rhetorical relationship (contrast) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d5ff2e0c-5915-4793-8f54-b89aaff48abf', 'Which choice completes the text with the most logical transition?', 'An analysis of newly available records prompted scholars to reconsider a conclusion that earlier accounts had treated as well established. The editor imposed a strict word limit on every submitted essay regardless of its subject or argumentative ambition. ______ contributors learned to prune digressions ruthlessly, and the journal''s prose grew noticeably tighter over the following issues.', 'passage', '[{"id":"A","text":"However,","is_correct":false,"explanation":"[Synonym Trap] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Therefore,","is_correct":true,"explanation":"Correct (B). Therefore, signals cause between the two clauses, matching the logical relationship in the passage."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Meanwhile,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'B', 'Step 1 — Identify the relationship
Focus on {{yellow:accounts}} in the passage. The transition item asks you to identify the relationship before comparing choices.

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
VALUES ('39d8f472-3381-43ff-80fe-2b5764cc3577', 'Which choice completes the text with the most logical transition?', 'Examining the problem with improved instruments, a research team uncovered a pattern that earlier and cruder surveys had entirely missed. The restored marsh filtered agricultural runoff before it reached the bay, measurably improving water clarity downstream within a single season. ______ it provided sheltered nesting habitat for several waterbird species that had not been seen in the watershed for years.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"[Category Shift] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Furthermore,","is_correct":true,"explanation":"Correct (C). Furthermore, signals addition between the two clauses, matching the logical relationship in the passage."},{"id":"D","text":"Meanwhile,","is_correct":false,"explanation":"[Register Clash] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'C', 'Step 1 — Identify the relationship
Focus on {{yellow:entirely}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice C is correct: Furthermore,.

Distractor analysis:
- A: [Synonym Trap] [Category Shift] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- D: [Register Clash] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7f830fb8-0fa0-4868-9cdb-a12932885804', 'Which choice completes the text with the most logical transition?', 'Drawing on data collected across many years, analysts reported a result that complicates the tidy account found in older textbooks. A few nineteenth-century cartographers embedded subtle errors in their maps to expose competitors who copied their work. ______ one celebrated atlas inserted a fictitious village whose later appearance in a rival edition proved deliberate plagiarism.', 'passage', '[{"id":"A","text":"Yet,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Consequently,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"[Register Clash] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Chiefly,","is_correct":true,"explanation":"Correct (D). Chiefly, signals example between the two clauses, matching the logical relationship in the passage."}]'::jsonb, 'D', 'Step 1 — Identify the relationship
Focus on {{yellow:textbooks.}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice D is correct: Chiefly,.

Distractor analysis:
- A: [Synonym Trap] [Register Clash] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] [Register Clash] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Register Clash] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('af91e399-7006-43ee-a4e5-48d3c99ebe37', 'Which choice completes the text with the most logical transition?', 'Researchers revisiting a long-debated question in the field recently reported findings that have renewed scholarly discussion of the issue. Conventional accounts portray the medieval guilds as rigid institutions that stifled any meaningful technical innovation. ______ surviving workshop records reveal craftsmen quietly experimenting with new tools and materials whenever competition intensified.', 'passage', '[{"id":"A","text":"However,","is_correct":true,"explanation":"Correct (A). However, signals contrast between the two clauses, matching the logical relationship in the passage."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"[Synonym Trap] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Meanwhile,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:discussion}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: However,.

Distractor analysis:
- B: [Synonym Trap] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Category Shift] [Synonym Trap] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses.
- D: [Register Clash] [Synonym Trap] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('28232436-5cc5-4576-919d-5abc96fea28e', 'Which choice completes the text with the most logical transition?', 'A study published this year set out to test an assumption that practitioners had accepted with little scrutiny for years. Prolonged drought sharply reduced the flowering plants that the region''s native bees depend on for nectar each spring. ______ local pollinator numbers declined steeply, and nearby orchards reported their thinnest fruit set in more than a decade.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Thus,","is_correct":true,"explanation":"Correct (B). Thus, signals cause between the two clauses, matching the logical relationship in the passage."},{"id":"C","text":"Moreover,","is_correct":false,"explanation":"[Category Shift] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Yet,","is_correct":false,"explanation":"[Register Clash] [Category Shift] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'B', 'Step 1 — Identify the relationship
Focus on {{yellow:drought}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice B is correct: Thus,.

Distractor analysis:
- A: [Synonym Trap] [Category Shift] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- C: [Category Shift] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses.
- D: [Register Clash] [Category Shift] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cca0da20-5028-4255-8435-88234afd038c', 'Which choice completes the text with the most logical transition?', 'Investigators comparing two competing explanations gathered fresh evidence intended to settle a dispute that had persisted for several decades. The policy lowered commuting costs for residents of the city''s underserved outer districts almost immediately. ______ it reduced roadway congestion at peak hours, trimming the average downtown trip by several unhurried minutes.', 'passage', '[{"id":"A","text":"Yet,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Consequently,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Similarly,","is_correct":true,"explanation":"Correct (C). Similarly, signals addition between the two clauses, matching the logical relationship in the passage."},{"id":"D","text":"Still,","is_correct":false,"explanation":"[Register Clash] Still, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'C', 'Step 1 — Identify the relationship
Focus on {{yellow:persisted}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice C is correct: Similarly,.

Distractor analysis:
- A: [Synonym Trap] [Register Clash] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] [Register Clash] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- D: [Register Clash] Still, suggests a different rhetorical relationship (contrast) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('06ca0b38-3e5c-43ee-b6ae-c0440c6999b4', 'Which choice completes the text with the most logical transition?', 'An analysis of newly available records prompted scholars to reconsider a conclusion that earlier accounts had treated as well established. Several nocturnal desert mammals have evolved striking physiological strategies for conserving scarce water through the hottest months. ______ the kangaroo rat extracts nearly all the moisture it needs from dry seeds, rarely drinking free water at all.', 'passage', '[{"id":"A","text":"However,","is_correct":false,"explanation":"[Synonym Trap] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Specifically,","is_correct":true,"explanation":"Correct (D). Specifically, signals example between the two clauses, matching the logical relationship in the passage."}]'::jsonb, 'D', 'Step 1 — Identify the relationship
Focus on {{yellow:accounts}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice D is correct: Specifically,.

Distractor analysis:
- A: [Synonym Trap] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] [Synonym Trap] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Register Clash] [Synonym Trap] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('158f22e7-4aaf-40fb-8218-22e121f13e4f', 'Which choice completes the text with the most logical transition?', 'Examining the problem with improved instruments, a research team uncovered a pattern that earlier and cruder surveys had entirely missed. The committee assumed that lowering ticket prices would immediately fill the concert hall''s many empty weeknight seats. ______ attendance barely changed, suggesting that scheduling, not cost, governed whether residents chose to attend evening performances.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Correct (A). Nevertheless, signals contrast between the two clauses, matching the logical relationship in the passage."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Moreover,","is_correct":false,"explanation":"[Category Shift] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Yet,","is_correct":false,"explanation":"[Register Clash] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:surveys}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: Nevertheless,.

Distractor analysis:
- B: [Synonym Trap] [Category Shift] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Category Shift] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses.
- D: [Register Clash] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('66ada451-f7af-4d0d-b64f-22d547a13ffe', 'Which choice completes the text with the most logical transition?', 'Drawing on data collected across many years, analysts reported a result that complicates the tidy account found in older textbooks. The museum extended its evening hours and waived admission on the first Friday of every month throughout the year. ______ weekly visitor counts rose sharply, drawing residents who had never before considered the galleries part of their routine.', 'passage', '[{"id":"A","text":"Still,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Still, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Consequently,","is_correct":true,"explanation":"Correct (B). Consequently, signals cause between the two clauses, matching the logical relationship in the passage."},{"id":"C","text":"Furthermore,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Furthermore, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Instead,","is_correct":false,"explanation":"[Register Clash] Instead, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'B', 'Step 1 — Identify the relationship
Focus on {{yellow:textbooks.}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice B is correct: Consequently,.

Distractor analysis:
- A: [Synonym Trap] [Register Clash] Still, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- C: [Category Shift] [Register Clash] Furthermore, suggests a different rhetorical relationship (addition) than the one required between the clauses.
- D: [Register Clash] Instead, suggests a different rhetorical relationship (contrast) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ab37832e-497c-4e9d-ac7f-ddd817f77530', 'Which choice completes the text with the most logical transition?', 'Researchers revisiting a long-debated question in the field recently reported findings that have renewed scholarly discussion of the issue. The telescope''s upgraded sensor captured faint galaxies far beyond the reach of its original instruments. ______ it resolved fine structural detail in nearer nebulae that previous surveys had recorded only as indistinct smudges.', 'passage', '[{"id":"A","text":"However,","is_correct":false,"explanation":"[Synonym Trap] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Moreover,","is_correct":true,"explanation":"Correct (C). Moreover, signals addition between the two clauses, matching the logical relationship in the passage."},{"id":"D","text":"Similarly,","is_correct":false,"explanation":"[Register Clash] [Category Shift] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'C', 'Step 1 — Identify the relationship
Focus on {{yellow:scholarly}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice C is correct: Moreover,.

Distractor analysis:
- A: [Synonym Trap] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] [Synonym Trap] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- D: [Register Clash] [Category Shift] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('77ac5e67-2c6e-4682-948f-19f103e4a474', 'Which choice completes the text with the most logical transition?', 'A study published this year set out to test an assumption that practitioners had accepted with little scrutiny for years. A number of social insects coordinate complex tasks without any central authority directing the colony''s daily labor. ______ one ant species recruits foragers to new food through chemical trails that strengthen only while the supply lasts.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"[Category Shift] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Moreover,","is_correct":false,"explanation":"[Register Clash] [Category Shift] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Notably,","is_correct":true,"explanation":"Correct (D). Notably, signals example between the two clauses, matching the logical relationship in the passage."}]'::jsonb, 'D', 'Step 1 — Identify the relationship
Focus on {{yellow:coordinate}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice D is correct: Notably,.

Distractor analysis:
- A: [Synonym Trap] [Category Shift] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Register Clash] [Category Shift] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('55d5d3a6-760f-4519-8a83-8718afd7bf82', 'Which choice completes the text with the most logical transition?', 'Investigators comparing two competing explanations gathered fresh evidence intended to settle a dispute that had persisted for several decades. Early climate models projected that the coastal wetlands would dry out completely within two decades as regional temperatures steadily climbed. ______ monitoring stations have recorded remarkably stable water levels across the same interval, prompting researchers to revisit their founding assumptions.', 'passage', '[{"id":"A","text":"Still,","is_correct":true,"explanation":"Correct (A). Still, signals contrast between the two clauses, matching the logical relationship in the passage."},{"id":"B","text":"Consequently,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Furthermore,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Furthermore, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Instead,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Instead, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:decades.}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: Still,.

Distractor analysis:
- B: [Synonym Trap] [Register Clash] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Category Shift] [Register Clash] Furthermore, suggests a different rhetorical relationship (addition) than the one required between the clauses.
- D: [Register Clash] [Synonym Trap] Instead, suggests a different rhetorical relationship (contrast) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0159dd53-402e-42ac-939a-dbc46aa02e12', 'Which choice completes the text with the most logical transition?', 'An analysis of newly available records prompted scholars to reconsider a conclusion that earlier accounts had treated as well established. Sustained overfishing removed most of the large predators that had long regulated the reef''s delicate food web. ______ populations of smaller grazing species surged unchecked, stripping the coral of the algae that sheltered juvenile fish.', 'passage', '[{"id":"A","text":"However,","is_correct":false,"explanation":"[Synonym Trap] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Therefore,","is_correct":true,"explanation":"Correct (B). Therefore, signals cause between the two clauses, matching the logical relationship in the passage."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Meanwhile,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'B', 'Step 1 — Identify the relationship
Focus on {{yellow:accounts}} in the passage. The transition item asks you to identify the relationship before comparing choices.

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
VALUES ('d5935f33-0f87-4bfa-9b24-4a7fc7993267', 'Which choice completes the text with the most logical transition?', 'Examining the problem with improved instruments, a research team uncovered a pattern that earlier and cruder surveys had entirely missed. The author''s later essays sharpened her critique of unchecked industrial expansion across the rapidly growing river towns. ______ they widened her focus to include the displaced laborers whose testimony earlier reformers had largely ignored.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"[Category Shift] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Furthermore,","is_correct":true,"explanation":"Correct (C). Furthermore, signals addition between the two clauses, matching the logical relationship in the passage."},{"id":"D","text":"Meanwhile,","is_correct":false,"explanation":"[Register Clash] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'C', 'Step 1 — Identify the relationship
Focus on {{yellow:entirely}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice C is correct: Furthermore,.

Distractor analysis:
- A: [Synonym Trap] [Category Shift] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- D: [Register Clash] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('64718c23-3fe3-41ce-9a50-125dab88adad', 'Which choice completes the text with the most logical transition?', 'Drawing on data collected across many years, analysts reported a result that complicates the tidy account found in older textbooks. Some composers of the period borrowed folk melodies and reworked them into elaborate concert pieces for urban audiences. ______ one symphony famously transforms a simple harvest song into a sweeping movement scored for the full orchestra.', 'passage', '[{"id":"A","text":"Yet,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Consequently,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"[Register Clash] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Chiefly,","is_correct":true,"explanation":"Correct (D). Chiefly, signals example between the two clauses, matching the logical relationship in the passage."}]'::jsonb, 'D', 'Step 1 — Identify the relationship
Focus on {{yellow:composers}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice D is correct: Chiefly,.

Distractor analysis:
- A: [Synonym Trap] [Register Clash] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] [Register Clash] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Register Clash] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('61a24409-6875-46e7-a2db-d3b5c4136d60', 'Which choice completes the text with the most logical transition?', 'Researchers revisiting a long-debated question in the field recently reported findings that have renewed scholarly discussion of the issue. Critics initially dismissed the novelist''s fragmented chronology as a careless lapse in narrative craft. ______ later scholars argued that the disordered timeline deliberately mirrors how memory reconstructs the past for the grieving narrator.', 'passage', '[{"id":"A","text":"However,","is_correct":true,"explanation":"Correct (A). However, signals contrast between the two clauses, matching the logical relationship in the passage."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"[Synonym Trap] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Meanwhile,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:scholarly}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: However,.

Distractor analysis:
- B: [Synonym Trap] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Category Shift] [Synonym Trap] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses.
- D: [Register Clash] [Synonym Trap] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a79c03f2-45e0-4a6a-bc2f-123aa3fbd202', 'Which choice completes the text with the most logical transition?', 'A study published this year set out to test an assumption that practitioners had accepted with little scrutiny for years. The new irrigation channels diverted a steady share of the river toward previously arid terraces on the valley''s western slope. ______ crop yields on those terraces nearly doubled within three growing seasons, transforming the village''s fragile subsistence economy.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Thus,","is_correct":true,"explanation":"Correct (B). Thus, signals cause between the two clauses, matching the logical relationship in the passage."},{"id":"C","text":"Moreover,","is_correct":false,"explanation":"[Category Shift] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Yet,","is_correct":false,"explanation":"[Register Clash] [Category Shift] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'B', 'Step 1 — Identify the relationship
Focus on {{yellow:diverted}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice B is correct: Thus,.

Distractor analysis:
- A: [Synonym Trap] [Category Shift] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- C: [Category Shift] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses.
- D: [Register Clash] [Category Shift] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a1f65b07-99ee-447c-9d22-609a38914488', 'Which choice completes the text with the most logical transition?', 'Investigators comparing two competing explanations gathered fresh evidence intended to settle a dispute that had persisted for several decades. The apprenticeship program paired newcomers with veteran machinists who modeled careful, deliberate technique on every shop-floor task. ______ it reimbursed tuition for evening coursework, allowing participants to deepen the theory underlying the skills they practiced daily.', 'passage', '[{"id":"A","text":"Yet,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Consequently,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Similarly,","is_correct":true,"explanation":"Correct (C). Similarly, signals addition between the two clauses, matching the logical relationship in the passage."},{"id":"D","text":"Still,","is_correct":false,"explanation":"[Register Clash] Still, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'C', 'Step 1 — Identify the relationship
Focus on {{yellow:several}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice C is correct: Similarly,.

Distractor analysis:
- A: [Synonym Trap] [Register Clash] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] [Register Clash] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- D: [Register Clash] Still, suggests a different rhetorical relationship (contrast) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b5b2658c-592d-41c3-80ea-f3ed44ee9cc6', 'Which choice completes the text with the most logical transition?', 'An analysis of newly available records prompted scholars to reconsider a conclusion that earlier accounts had treated as well established. Certain coastal cities have begun redesigning public space to absorb rather than repel rising storm water. ______ one harbor district replaced acres of pavement with tiered gardens engineered to flood briefly and drain slowly.', 'passage', '[{"id":"A","text":"However,","is_correct":false,"explanation":"[Synonym Trap] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Specifically,","is_correct":true,"explanation":"Correct (D). Specifically, signals example between the two clauses, matching the logical relationship in the passage."}]'::jsonb, 'D', 'Step 1 — Identify the relationship
Focus on {{yellow:earlier}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice D is correct: Specifically,.

Distractor analysis:
- A: [Synonym Trap] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] [Synonym Trap] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Register Clash] [Synonym Trap] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('322d68f3-6ba6-433b-bb71-0549bda1dbd5', 'Which choice completes the text with the most logical transition?', 'Examining the problem with improved instruments, a research team uncovered a pattern that earlier and cruder surveys had entirely missed. The first clinical trial reported that the compound sharply reduced inflammation in nearly every treated participant. ______ a larger replication enrolling more diverse volunteers detected only a modest and inconsistent effect across the sample.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Correct (A). Nevertheless, signals contrast between the two clauses, matching the logical relationship in the passage."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Moreover,","is_correct":false,"explanation":"[Category Shift] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Yet,","is_correct":false,"explanation":"[Register Clash] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:surveys}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: Nevertheless,.

Distractor analysis:
- B: [Synonym Trap] [Category Shift] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Category Shift] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses.
- D: [Register Clash] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('377af2d7-2862-45c4-b062-24c01b8f489e', 'Which choice completes the text with the most logical transition?', 'Drawing on data collected across many years, analysts reported a result that complicates the tidy account found in older textbooks. The editor imposed a strict word limit on every submitted essay regardless of its subject or argumentative ambition. ______ contributors learned to prune digressions ruthlessly, and the journal''s prose grew noticeably tighter over the following issues.', 'passage', '[{"id":"A","text":"Still,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Still, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Consequently,","is_correct":true,"explanation":"Correct (B). Consequently, signals cause between the two clauses, matching the logical relationship in the passage."},{"id":"C","text":"Furthermore,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Furthermore, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Instead,","is_correct":false,"explanation":"[Register Clash] Instead, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'B', 'Step 1 — Identify the relationship
Focus on {{yellow:imposed}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice B is correct: Consequently,.

Distractor analysis:
- A: [Synonym Trap] [Register Clash] Still, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- C: [Category Shift] [Register Clash] Furthermore, suggests a different rhetorical relationship (addition) than the one required between the clauses.
- D: [Register Clash] Instead, suggests a different rhetorical relationship (contrast) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4f9f7e7c-42ce-43d8-ac04-95fc65af16ec', 'Which choice completes the text with the most logical transition?', 'Researchers revisiting a long-debated question in the field recently reported findings that have renewed scholarly discussion of the issue. The restored marsh filtered agricultural runoff before it reached the bay, measurably improving water clarity downstream within a single season. ______ it provided sheltered nesting habitat for several waterbird species that had not been seen in the watershed for years.', 'passage', '[{"id":"A","text":"However,","is_correct":false,"explanation":"[Synonym Trap] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Moreover,","is_correct":true,"explanation":"Correct (C). Moreover, signals addition between the two clauses, matching the logical relationship in the passage."},{"id":"D","text":"Similarly,","is_correct":false,"explanation":"[Register Clash] [Category Shift] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'C', 'Step 1 — Identify the relationship
Focus on {{yellow:discussion}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice C is correct: Moreover,.

Distractor analysis:
- A: [Synonym Trap] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] [Synonym Trap] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- D: [Register Clash] [Category Shift] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a480fa42-6e20-4ce4-8db5-1c5e170813a4', 'Which choice completes the text with the most logical transition?', 'A study published this year set out to test an assumption that practitioners had accepted with little scrutiny for years. A few nineteenth-century cartographers embedded subtle errors in their maps to expose competitors who copied their work. ______ one celebrated atlas inserted a fictitious village whose later appearance in a rival edition proved deliberate plagiarism.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"[Category Shift] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Moreover,","is_correct":false,"explanation":"[Register Clash] [Category Shift] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Notably,","is_correct":true,"explanation":"Correct (D). Notably, signals example between the two clauses, matching the logical relationship in the passage."}]'::jsonb, 'D', 'Step 1 — Identify the relationship
Focus on {{yellow:nineteenth-century}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice D is correct: Notably,.

Distractor analysis:
- A: [Synonym Trap] [Category Shift] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Register Clash] [Category Shift] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('dda4db19-d32b-4d48-8508-3baeaf93b619', 'Which choice completes the text with the most logical transition?', 'Investigators comparing two competing explanations gathered fresh evidence intended to settle a dispute that had persisted for several decades. Conventional accounts portray the medieval guilds as rigid institutions that stifled any meaningful technical innovation. ______ surviving workshop records reveal craftsmen quietly experimenting with new tools and materials whenever competition intensified.', 'passage', '[{"id":"A","text":"Still,","is_correct":true,"explanation":"Correct (A). Still, signals contrast between the two clauses, matching the logical relationship in the passage."},{"id":"B","text":"Consequently,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Furthermore,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Furthermore, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Instead,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Instead, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:decades.}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: Still,.

Distractor analysis:
- B: [Synonym Trap] [Register Clash] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Category Shift] [Register Clash] Furthermore, suggests a different rhetorical relationship (addition) than the one required between the clauses.
- D: [Register Clash] [Synonym Trap] Instead, suggests a different rhetorical relationship (contrast) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9f54f04a-6508-4e55-8f4d-180f73094e60', 'Which choice completes the text with the most logical transition?', 'An analysis of newly available records prompted scholars to reconsider a conclusion that earlier accounts had treated as well established. Prolonged drought sharply reduced the flowering plants that the region''s native bees depend on for nectar each spring. ______ local pollinator numbers declined steeply, and nearby orchards reported their thinnest fruit set in more than a decade.', 'passage', '[{"id":"A","text":"However,","is_correct":false,"explanation":"[Synonym Trap] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Therefore,","is_correct":true,"explanation":"Correct (B). Therefore, signals cause between the two clauses, matching the logical relationship in the passage."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Meanwhile,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'B', 'Step 1 — Identify the relationship
Focus on {{yellow:accounts}} in the passage. The transition item asks you to identify the relationship before comparing choices.

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
VALUES ('0094085a-06af-46d5-8387-2ec0610231a6', 'Which choice completes the text with the most logical transition?', 'Examining the problem with improved instruments, a research team uncovered a pattern that earlier and cruder surveys had entirely missed. The policy lowered commuting costs for residents of the city''s underserved outer districts almost immediately. ______ it reduced roadway congestion at peak hours, trimming the average downtown trip by several unhurried minutes.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"[Category Shift] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Furthermore,","is_correct":true,"explanation":"Correct (C). Furthermore, signals addition between the two clauses, matching the logical relationship in the passage."},{"id":"D","text":"Meanwhile,","is_correct":false,"explanation":"[Register Clash] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'C', 'Step 1 — Identify the relationship
Focus on {{yellow:surveys}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice C is correct: Furthermore,.

Distractor analysis:
- A: [Synonym Trap] [Category Shift] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- D: [Register Clash] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b4665939-c6a9-4a3d-a4fd-8a6192d054dd', 'Which choice completes the text with the most logical transition?', 'Drawing on data collected across many years, analysts reported a result that complicates the tidy account found in older textbooks. Several nocturnal desert mammals have evolved striking physiological strategies for conserving scarce water through the hottest months. ______ the kangaroo rat extracts nearly all the moisture it needs from dry seeds, rarely drinking free water at all.', 'passage', '[{"id":"A","text":"Yet,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Consequently,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"[Register Clash] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Chiefly,","is_correct":true,"explanation":"Correct (D). Chiefly, signals example between the two clauses, matching the logical relationship in the passage."}]'::jsonb, 'D', 'Step 1 — Identify the relationship
Focus on {{yellow:Several}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice D is correct: Chiefly,.

Distractor analysis:
- A: [Synonym Trap] [Register Clash] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] [Register Clash] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Register Clash] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e456cf4f-9185-47c9-82c9-d2522bc7a0d5', 'Which choice completes the text with the most logical transition?', 'Researchers revisiting a long-debated question in the field recently reported findings that have renewed scholarly discussion of the issue. The committee assumed that lowering ticket prices would immediately fill the concert hall''s many empty weeknight seats. ______ attendance barely changed, suggesting that scheduling, not cost, governed whether residents chose to attend evening performances.', 'passage', '[{"id":"A","text":"However,","is_correct":true,"explanation":"Correct (A). However, signals contrast between the two clauses, matching the logical relationship in the passage."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"[Synonym Trap] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Meanwhile,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:scholarly}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: However,.

Distractor analysis:
- B: [Synonym Trap] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Category Shift] [Synonym Trap] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses.
- D: [Register Clash] [Synonym Trap] Meanwhile, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f4987259-eeee-4315-ba05-70d9aec6299f', 'Which choice completes the text with the most logical transition?', 'A study published this year set out to test an assumption that practitioners had accepted with little scrutiny for years. The museum extended its evening hours and waived admission on the first Friday of every month throughout the year. ______ weekly visitor counts rose sharply, drawing residents who had never before considered the galleries part of their routine.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Thus,","is_correct":true,"explanation":"Correct (B). Thus, signals cause between the two clauses, matching the logical relationship in the passage."},{"id":"C","text":"Moreover,","is_correct":false,"explanation":"[Category Shift] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Yet,","is_correct":false,"explanation":"[Register Clash] [Category Shift] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'B', 'Step 1 — Identify the relationship
Focus on {{yellow:extended}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice B is correct: Thus,.

Distractor analysis:
- A: [Synonym Trap] [Category Shift] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- C: [Category Shift] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses.
- D: [Register Clash] [Category Shift] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4734d2a4-d9e5-4c6f-8d5d-45dc8f208597', 'Which choice completes the text with the most logical transition?', 'Investigators comparing two competing explanations gathered fresh evidence intended to settle a dispute that had persisted for several decades. The telescope''s upgraded sensor captured faint galaxies far beyond the reach of its original instruments. ______ it resolved fine structural detail in nearer nebulae that previous surveys had recorded only as indistinct smudges.', 'passage', '[{"id":"A","text":"Yet,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Consequently,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Similarly,","is_correct":true,"explanation":"Correct (C). Similarly, signals addition between the two clauses, matching the logical relationship in the passage."},{"id":"D","text":"Still,","is_correct":false,"explanation":"[Register Clash] Still, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'C', 'Step 1 — Identify the relationship
Focus on {{yellow:persisted}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice C is correct: Similarly,.

Distractor analysis:
- A: [Synonym Trap] [Register Clash] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] [Register Clash] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- D: [Register Clash] Still, suggests a different rhetorical relationship (contrast) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('314249cb-ca9b-46e9-b3a5-a5629fd5d2f2', 'Which choice completes the text with the most logical transition?', 'An analysis of newly available records prompted scholars to reconsider a conclusion that earlier accounts had treated as well established. A number of social insects coordinate complex tasks without any central authority directing the colony''s daily labor. ______ one ant species recruits foragers to new food through chemical trails that strengthen only while the supply lasts.', 'passage', '[{"id":"A","text":"However,","is_correct":false,"explanation":"[Synonym Trap] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Specifically,","is_correct":true,"explanation":"Correct (D). Specifically, signals example between the two clauses, matching the logical relationship in the passage."}]'::jsonb, 'D', 'Step 1 — Identify the relationship
Focus on {{yellow:accounts}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice D is correct: Specifically,.

Distractor analysis:
- A: [Synonym Trap] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] [Synonym Trap] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Register Clash] [Synonym Trap] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e43207d1-d250-4f13-9fb5-8f3ca8f855cb', 'Which choice completes the text with the most logical transition?', 'Examining the problem with improved instruments, a research team uncovered a pattern that earlier and cruder surveys had entirely missed. Early climate models projected that the coastal wetlands would dry out completely within two decades as regional temperatures steadily climbed. ______ monitoring stations have recorded remarkably stable water levels across the same interval, prompting researchers to revisit their founding assumptions.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Correct (A). Nevertheless, signals contrast between the two clauses, matching the logical relationship in the passage."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Moreover,","is_correct":false,"explanation":"[Category Shift] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Yet,","is_correct":false,"explanation":"[Register Clash] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:missed.}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: Nevertheless,.

Distractor analysis:
- B: [Synonym Trap] [Category Shift] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Category Shift] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses.
- D: [Register Clash] Yet, suggests a different rhetorical relationship (contrast) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7a9743aa-dcc4-457e-bf8a-8f5bc71e5fdc', 'Which choice completes the text with the most logical transition?', 'Drawing on data collected across many years, analysts reported a result that complicates the tidy account found in older textbooks. Sustained overfishing removed most of the large predators that had long regulated the reef''s delicate food web. ______ populations of smaller grazing species surged unchecked, stripping the coral of the algae that sheltered juvenile fish.', 'passage', '[{"id":"A","text":"Still,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Still, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Consequently,","is_correct":true,"explanation":"Correct (B). Consequently, signals cause between the two clauses, matching the logical relationship in the passage."},{"id":"C","text":"Furthermore,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Furthermore, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Instead,","is_correct":false,"explanation":"[Register Clash] Instead, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'B', 'Step 1 — Identify the relationship
Focus on {{yellow:Sustained}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice B is correct: Consequently,.

Distractor analysis:
- A: [Synonym Trap] [Register Clash] Still, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- C: [Category Shift] [Register Clash] Furthermore, suggests a different rhetorical relationship (addition) than the one required between the clauses.
- D: [Register Clash] Instead, suggests a different rhetorical relationship (contrast) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d6cc6c90-3fc5-459e-a359-9f5e5ed0de18', 'Which choice completes the text with the most logical transition?', 'Researchers revisiting a long-debated question in the field recently reported findings that have renewed scholarly discussion of the issue. The author''s later essays sharpened her critique of unchecked industrial expansion across the rapidly growing river towns. ______ they widened her focus to include the displaced laborers whose testimony earlier reformers had largely ignored.', 'passage', '[{"id":"A","text":"However,","is_correct":false,"explanation":"[Synonym Trap] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"[Category Shift] [Synonym Trap] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Moreover,","is_correct":true,"explanation":"Correct (C). Moreover, signals addition between the two clauses, matching the logical relationship in the passage."},{"id":"D","text":"Similarly,","is_correct":false,"explanation":"[Register Clash] [Category Shift] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses."}]'::jsonb, 'C', 'Step 1 — Identify the relationship
Focus on {{yellow:discussion}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice C is correct: Moreover,.

Distractor analysis:
- A: [Synonym Trap] However, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] [Synonym Trap] Therefore, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- D: [Register Clash] [Category Shift] Similarly, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('def26700-aa1d-4bc9-bfc6-60b02ef9b041', 'Which choice completes the text with the most logical transition?', 'A study published this year set out to test an assumption that practitioners had accepted with little scrutiny for years. Some composers of the period borrowed folk melodies and reworked them into elaborate concert pieces for urban audiences. ______ one symphony famously transforms a simple harvest song into a sweeping movement scored for the full orchestra.', 'passage', '[{"id":"A","text":"Nevertheless,","is_correct":false,"explanation":"[Synonym Trap] [Category Shift] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"[Category Shift] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Moreover,","is_correct":false,"explanation":"[Register Clash] [Category Shift] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Notably,","is_correct":true,"explanation":"Correct (D). Notably, signals example between the two clauses, matching the logical relationship in the passage."}]'::jsonb, 'D', 'Step 1 — Identify the relationship
Focus on {{yellow:borrowed}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice D is correct: Notably,.

Distractor analysis:
- A: [Synonym Trap] [Category Shift] Nevertheless, suggests a different rhetorical relationship (contrast) than the one required between the clauses.
- B: [Category Shift] Thus, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Register Clash] [Category Shift] Moreover, suggests a different rhetorical relationship (addition) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a4c48019-a2f1-4e1a-8c67-932e942959c0', 'Which choice completes the text with the most logical transition?', 'Investigators comparing two competing explanations gathered fresh evidence intended to settle a dispute that had persisted for several decades. Critics initially dismissed the novelist''s fragmented chronology as a careless lapse in narrative craft. ______ later scholars argued that the disordered timeline deliberately mirrors how memory reconstructs the past for the grieving narrator.', 'passage', '[{"id":"A","text":"Still,","is_correct":true,"explanation":"Correct (A). Still, signals contrast between the two clauses, matching the logical relationship in the passage."},{"id":"B","text":"Consequently,","is_correct":false,"explanation":"[Synonym Trap] [Register Clash] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses."},{"id":"C","text":"Furthermore,","is_correct":false,"explanation":"[Category Shift] [Register Clash] Furthermore, suggests a different rhetorical relationship (addition) than the one required between the clauses."},{"id":"D","text":"Instead,","is_correct":false,"explanation":"[Register Clash] [Synonym Trap] Instead, suggests a different rhetorical relationship (contrast) than the one required between the clauses."}]'::jsonb, 'A', 'Step 1 — Identify the relationship
Focus on {{yellow:several}} in the passage. The transition item asks you to identify the relationship before comparing choices.

Step 2 — Test transition logic
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Complete the sentence
Choice A is correct: Still,.

Distractor analysis:
- B: [Synonym Trap] [Register Clash] Consequently, suggests a different rhetorical relationship (cause) than the one required between the clauses.
- C: [Category Shift] [Register Clash] Furthermore, suggests a different rhetorical relationship (addition) than the one required between the clauses.
- D: [Register Clash] [Synonym Trap] Instead, suggests a different rhetorical relationship (contrast) than the one required between the clauses.', NULL, 'Expression of Ideas', 'Transitions', 'reading_writing', 'expression', 'TRA', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"transition","dsat_blueprint_v1":true,"rw_format":"transition_blank","explanation_v2":true,"generator":"regenerate-english-fresh.mjs","regen_phase2":true,"regen_agent":9,"regen_seed_offset":100000}'::jsonb, now(), now());
COMMIT;
