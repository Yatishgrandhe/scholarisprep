BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c3e9c602-381a-4731-83b6-8c3afa5bd564', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying paleoclimatology at Antarctic ice-core laboratories have documented how sulfate spike layers shape broader conclusions. Neither the lead engineer nor the junior technicians who assembled the prototype overnight ______ able to explain why the sensor failed during the final calibration test. Stakeholders should weigh the evidence against limitations the researchers document throughout the study. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage.', 'passage', '[{"id":"A","text":"were","is_correct":true,"explanation":"Correct: \"were\" satisfies Standard English conventions for this blank."},{"id":"B","text":"was","is_correct":false,"explanation":"[Dangling Modifier] singular \"was\" agrees with \"engineer,\" the farther noun, instead of the nearer plural \"technicians.\""},{"id":"C","text":"has","is_correct":false,"explanation":"[Tense Shift] singular present perfect misaligns with the plural nearer subject and past context."},{"id":"D","text":"is","is_correct":false,"explanation":"[Proximity Decoy] present tense breaks the past narrative established by \"assembled\" and \"failed.\""}]'::jsonb, 'A', 'Step 1 — Apply the neither/nor rule
With {{yellow:Neither the lead engineer nor the junior technicians}}, the verb agrees with the nearer subject.

Step 2 — Check the nearer subject
''Technicians'' is plural, so the plural verb ''were'' is required.

Step 3 — Select the grammatical option
Choice A (were) is grammatically correct.

Distractor analysis:
- B: [Dangling Modifier] singular "was" agrees with "engineer," the farther noun, instead of the nearer plural "technicians."
- C: [Tense Shift] singular present perfect misaligns with the plural nearer subject and past context.
- D: [Proximity Decoy] present tense breaks the past narrative established by "assembled" and "failed."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('64b9a28d-a063-4424-b5d6-bce8c6387560', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that rising carbon dioxide forced many deciduous species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct. Policy implications depend on whether the observed effect persists when practical constraints such as access vary.', 'passage', '[{"id":"A","text":"flourishes","is_correct":false,"explanation":"[Proximity Decoy] singular present breaks both the plural subject and the historical past timeline."},{"id":"B","text":"flourished","is_correct":true,"explanation":"Correct: \"flourished\" satisfies Standard English conventions for this blank."},{"id":"C","text":"flourish","is_correct":false,"explanation":"[Dangling Modifier] present \"flourish\" tracks the nearby plural \"populations\" but breaks the past epoch established by \"argued,\" \"forced,\" and \"went.\""},{"id":"D","text":"thrives","is_correct":false,"explanation":"[Tense Shift] present \"thrives\" introduces a dangling-style mismatch with the historical past frame of the passage."}]'::jsonb, 'B', 'Step 1 — Match subject and timeline
The opening participial phrase modifies {{yellow:paleoclimatologists}}, and the passage establishes a past historical context.

Step 2 — Use consistent tense
Populations that survived did so in the same past epoch, requiring past tense.

Step 3 — Select the grammatical option
Choice B (flourished) is grammatically correct.

Distractor analysis:
- A: [Proximity Decoy] singular present breaks both the plural subject and the historical past timeline.
- C: [Dangling Modifier] present "flourish" tracks the nearby plural "populations" but breaks the past epoch established by "argued," "forced," and "went."
- D: [Tense Shift] present "thrives" introduces a dangling-style mismatch with the historical past frame of the passage.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9a729d55-13a7-43eb-bd56-ff3bb3a06504', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying paleoclimatology at Antarctic ice-core laboratories have documented how sulfate spike layers shape broader conclusions. Nestled deep within the highly pressurized geothermal vents of the mid-ocean ridge, where temperatures can exceed $400^\circ\text{C}$, ______ vast colonies of chemosynthetic archaea, which survive without sunlight by exploiting chemical gradients along the ocean floor. Stakeholders should weigh the evidence against limitations the researchers document throughout the study.', 'passage', '[{"id":"A","text":"flourishes","is_correct":false,"explanation":"[Tense Shift] singular \"flourishes\" misaligns with the plural subject in this inverted finite-verb position."},{"id":"B","text":"flourish","is_correct":false,"explanation":"[Proximity Decoy] plural \"flourish\" tracks the nearer plural noun but breaks inverted agreement with the true subject after the blank."},{"id":"C","text":"thrive","is_correct":true,"explanation":"Correct: \"thrive\" satisfies Standard English conventions for this blank."},{"id":"D","text":"thrives","is_correct":false,"explanation":"[Dangling Modifier] singular \"thrives\" agrees with a nearby singular noun in the opening phrase, not the plural subject \"vast colonies of chemosynthetic archaea.\""}]'::jsonb, 'C', 'Step 1 — Unpack inverted syntax
The true subject {{yellow:vast colonies of chemosynthetic archaea}} follows the blank in an inverted construction.

Step 2 — Agree in number
Plural subject requires the plural finite verb form.

Step 3 — Select the grammatical option
Choice C (thrive) is grammatically correct.

Distractor analysis:
- A: [Tense Shift] singular "flourishes" misaligns with the plural subject in this inverted finite-verb position.
- B: [Proximity Decoy] plural "flourish" tracks the nearer plural noun but breaks inverted agreement with the true subject after the blank.
- D: [Dangling Modifier] singular "thrives" agrees with a nearby singular noun in the opening phrase, not the plural subject "vast colonies of chemosynthetic archaea."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e8a4081e-0c04-4ab9-ac91-5cb61e0b09b1', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. Neither the lead engineer nor the junior technicians who assembled the prototype overnight ______ able to explain why the sensor failed during the final calibration test. Policy implications depend on whether the observed effect persists when practical constraints such as access vary. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them.', 'passage', '[{"id":"A","text":"was","is_correct":false,"explanation":"[Dangling Modifier] singular \"was\" agrees with \"engineer,\" the farther noun, instead of the nearer plural \"technicians.\""},{"id":"B","text":"has","is_correct":false,"explanation":"[Tense Shift] singular present perfect misaligns with the plural nearer subject and past context."},{"id":"C","text":"is","is_correct":false,"explanation":"[Proximity Decoy] present tense breaks the past narrative established by \"assembled\" and \"failed.\""},{"id":"D","text":"were","is_correct":true,"explanation":"Correct: \"were\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Apply the neither/nor rule
With {{yellow:Neither the lead engineer nor the junior technicians}}, the verb agrees with the nearer subject.

Step 2 — Check the nearer subject
''Technicians'' is plural, so the plural verb ''were'' is required.

Step 3 — Select the grammatical option
Choice D (were) is grammatically correct.

Distractor analysis:
- A: [Dangling Modifier] singular "was" agrees with "engineer," the farther noun, instead of the nearer plural "technicians."
- B: [Tense Shift] singular present perfect misaligns with the plural nearer subject and past context.
- C: [Proximity Decoy] present tense breaks the past narrative established by "assembled" and "failed."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f52d0539-3d1c-47c9-8f92-ced855197f73', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying economics at regional labor market surveys have documented how wage adjustment estimates shape broader conclusions. Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that rising carbon dioxide forced many deciduous species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct. Classroom textbooks may still compress the result, though the original study qualifies every major claim.', 'passage', '[{"id":"A","text":"flourished","is_correct":true,"explanation":"Correct: \"flourished\" satisfies Standard English conventions for this blank."},{"id":"B","text":"flourishes","is_correct":false,"explanation":"[Proximity Decoy] singular present breaks both the plural subject and the historical past timeline."},{"id":"C","text":"flourish","is_correct":false,"explanation":"[Dangling Modifier] present \"flourish\" tracks the nearby plural \"populations\" but breaks the past epoch established by \"argued,\" \"forced,\" and \"went.\""},{"id":"D","text":"thrives","is_correct":false,"explanation":"[Tense Shift] present \"thrives\" introduces a dangling-style mismatch with the historical past frame of the passage."}]'::jsonb, 'A', 'Step 1 — Match subject and timeline
The opening participial phrase modifies {{yellow:paleoclimatologists}}, and the passage establishes a past historical context.

Step 2 — Use consistent tense
Populations that survived did so in the same past epoch, requiring past tense.

Step 3 — Select the grammatical option
Choice A (flourished) is grammatically correct.

Distractor analysis:
- B: [Proximity Decoy] singular present breaks both the plural subject and the historical past timeline.
- C: [Dangling Modifier] present "flourish" tracks the nearby plural "populations" but breaks the past epoch established by "argued," "forced," and "went."
- D: [Tense Shift] present "thrives" introduces a dangling-style mismatch with the historical past frame of the passage.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1354afb0-bd8e-4408-b619-615d0d8ae7ed', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. Nestled deep within the highly pressurized geothermal vents of the mid-ocean ridge, where temperatures can exceed $400^\circ\text{C}$, ______ vast colonies of chemosynthetic archaea, which survive without sunlight by exploiting chemical gradients along the ocean floor. Policy implications depend on whether the observed effect persists when practical constraints such as access vary.', 'passage', '[{"id":"A","text":"flourishes","is_correct":false,"explanation":"[Tense Shift] singular \"flourishes\" misaligns with the plural subject in this inverted finite-verb position."},{"id":"B","text":"thrive","is_correct":true,"explanation":"Correct: \"thrive\" satisfies Standard English conventions for this blank."},{"id":"C","text":"flourish","is_correct":false,"explanation":"[Proximity Decoy] plural \"flourish\" tracks the nearer plural noun but breaks inverted agreement with the true subject after the blank."},{"id":"D","text":"thrives","is_correct":false,"explanation":"[Dangling Modifier] singular \"thrives\" agrees with a nearby singular noun in the opening phrase, not the plural subject \"vast colonies of chemosynthetic archaea.\""}]'::jsonb, 'B', 'Step 1 — Unpack inverted syntax
The true subject {{yellow:vast colonies of chemosynthetic archaea}} follows the blank in an inverted construction.

Step 2 — Agree in number
Plural subject requires the plural finite verb form.

Step 3 — Select the grammatical option
Choice B (thrive) is grammatically correct.

Distractor analysis:
- A: [Tense Shift] singular "flourishes" misaligns with the plural subject in this inverted finite-verb position.
- C: [Proximity Decoy] plural "flourish" tracks the nearer plural noun but breaks inverted agreement with the true subject after the blank.
- D: [Dangling Modifier] singular "thrives" agrees with a nearby singular noun in the opening phrase, not the plural subject "vast colonies of chemosynthetic archaea."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('04c095c9-e8bb-4d85-b8e5-399f79c42ae0', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying economics at regional labor market surveys have documented how wage adjustment estimates shape broader conclusions. Neither the lead engineer nor the junior technicians who assembled the prototype overnight ______ able to explain why the sensor failed during the final calibration test. Classroom textbooks may still compress the result, though the original study qualifies every major claim. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled.', 'passage', '[{"id":"A","text":"was","is_correct":false,"explanation":"[Dangling Modifier] singular \"was\" agrees with \"engineer,\" the farther noun, instead of the nearer plural \"technicians.\""},{"id":"B","text":"has","is_correct":false,"explanation":"[Tense Shift] singular present perfect misaligns with the plural nearer subject and past context."},{"id":"C","text":"were","is_correct":true,"explanation":"Correct: \"were\" satisfies Standard English conventions for this blank."},{"id":"D","text":"is","is_correct":false,"explanation":"[Proximity Decoy] present tense breaks the past narrative established by \"assembled\" and \"failed.\""}]'::jsonb, 'C', 'Step 1 — Apply the neither/nor rule
With {{yellow:Neither the lead engineer nor the junior technicians}}, the verb agrees with the nearer subject.

Step 2 — Check the nearer subject
''Technicians'' is plural, so the plural verb ''were'' is required.

Step 3 — Select the grammatical option
Choice C (were) is grammatically correct.

Distractor analysis:
- A: [Dangling Modifier] singular "was" agrees with "engineer," the farther noun, instead of the nearer plural "technicians."
- B: [Tense Shift] singular present perfect misaligns with the plural nearer subject and past context.
- D: [Proximity Decoy] present tense breaks the past narrative established by "assembled" and "failed."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b5de6ff0-4f1c-4b8a-9a01-e249015676e1', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that rising carbon dioxide forced many deciduous species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges.', 'passage', '[{"id":"A","text":"flourishes","is_correct":false,"explanation":"[Proximity Decoy] singular present breaks both the plural subject and the historical past timeline."},{"id":"B","text":"flourish","is_correct":false,"explanation":"[Dangling Modifier] present \"flourish\" tracks the nearby plural \"populations\" but breaks the past epoch established by \"argued,\" \"forced,\" and \"went.\""},{"id":"C","text":"thrives","is_correct":false,"explanation":"[Tense Shift] present \"thrives\" introduces a dangling-style mismatch with the historical past frame of the passage."},{"id":"D","text":"flourished","is_correct":true,"explanation":"Correct: \"flourished\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Match subject and timeline
The opening participial phrase modifies {{yellow:paleoclimatologists}}, and the passage establishes a past historical context.

Step 2 — Use consistent tense
Populations that survived did so in the same past epoch, requiring past tense.

Step 3 — Select the grammatical option
Choice D (flourished) is grammatically correct.

Distractor analysis:
- A: [Proximity Decoy] singular present breaks both the plural subject and the historical past timeline.
- B: [Dangling Modifier] present "flourish" tracks the nearby plural "populations" but breaks the past epoch established by "argued," "forced," and "went."
- C: [Tense Shift] present "thrives" introduces a dangling-style mismatch with the historical past frame of the passage.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('316cd942-7d12-493b-a028-d413cee0783c', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying economics at regional labor market surveys have documented how wage adjustment estimates shape broader conclusions. Nestled deep within the highly pressurized geothermal vents of the mid-ocean ridge, where temperatures can exceed $400^\circ\text{C}$, ______ vast colonies of chemosynthetic archaea, which survive without sunlight by exploiting chemical gradients along the ocean floor. Classroom textbooks may still compress the result, though the original study qualifies every major claim.', 'passage', '[{"id":"A","text":"thrive","is_correct":true,"explanation":"Correct: \"thrive\" satisfies Standard English conventions for this blank."},{"id":"B","text":"flourishes","is_correct":false,"explanation":"[Tense Shift] singular \"flourishes\" misaligns with the plural subject in this inverted finite-verb position."},{"id":"C","text":"flourish","is_correct":false,"explanation":"[Proximity Decoy] plural \"flourish\" tracks the nearer plural noun but breaks inverted agreement with the true subject after the blank."},{"id":"D","text":"thrives","is_correct":false,"explanation":"[Dangling Modifier] singular \"thrives\" agrees with a nearby singular noun in the opening phrase, not the plural subject \"vast colonies of chemosynthetic archaea.\""}]'::jsonb, 'A', 'Step 1 — Unpack inverted syntax
The true subject {{yellow:vast colonies of chemosynthetic archaea}} follows the blank in an inverted construction.

Step 2 — Agree in number
Plural subject requires the plural finite verb form.

Step 3 — Select the grammatical option
Choice A (thrive) is grammatically correct.

Distractor analysis:
- B: [Tense Shift] singular "flourishes" misaligns with the plural subject in this inverted finite-verb position.
- C: [Proximity Decoy] plural "flourish" tracks the nearer plural noun but breaks inverted agreement with the true subject after the blank.
- D: [Dangling Modifier] singular "thrives" agrees with a nearby singular noun in the opening phrase, not the plural subject "vast colonies of chemosynthetic archaea."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bae4d8c9-89f3-48fc-aba8-6b153c1d7f96', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. Neither the lead engineer nor the junior technicians who assembled the prototype overnight ______ able to explain why the sensor failed during the final calibration test. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges. Stakeholders should weigh the evidence against limitations the researchers document throughout the study.', 'passage', '[{"id":"A","text":"was","is_correct":false,"explanation":"[Dangling Modifier] singular \"was\" agrees with \"engineer,\" the farther noun, instead of the nearer plural \"technicians.\""},{"id":"B","text":"were","is_correct":true,"explanation":"Correct: \"were\" satisfies Standard English conventions for this blank."},{"id":"C","text":"has","is_correct":false,"explanation":"[Tense Shift] singular present perfect misaligns with the plural nearer subject and past context."},{"id":"D","text":"is","is_correct":false,"explanation":"[Proximity Decoy] present tense breaks the past narrative established by \"assembled\" and \"failed.\""}]'::jsonb, 'B', 'Step 1 — Apply the neither/nor rule
With {{yellow:Neither the lead engineer nor the junior technicians}}, the verb agrees with the nearer subject.

Step 2 — Check the nearer subject
''Technicians'' is plural, so the plural verb ''were'' is required.

Step 3 — Select the grammatical option
Choice B (were) is grammatically correct.

Distractor analysis:
- A: [Dangling Modifier] singular "was" agrees with "engineer," the farther noun, instead of the nearer plural "technicians."
- C: [Tense Shift] singular present perfect misaligns with the plural nearer subject and past context.
- D: [Proximity Decoy] present tense breaks the past narrative established by "assembled" and "failed."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5f06841e-295b-46f6-a7de-b911bee92165', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying archaeology at coastal excavation trenches have documented how ceramic shard assemblages shape broader conclusions. Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that rising carbon dioxide forced many deciduous species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical.', 'passage', '[{"id":"A","text":"flourishes","is_correct":false,"explanation":"[Proximity Decoy] singular present breaks both the plural subject and the historical past timeline."},{"id":"B","text":"flourish","is_correct":false,"explanation":"[Dangling Modifier] present \"flourish\" tracks the nearby plural \"populations\" but breaks the past epoch established by \"argued,\" \"forced,\" and \"went.\""},{"id":"C","text":"flourished","is_correct":true,"explanation":"Correct: \"flourished\" satisfies Standard English conventions for this blank."},{"id":"D","text":"thrives","is_correct":false,"explanation":"[Tense Shift] present \"thrives\" introduces a dangling-style mismatch with the historical past frame of the passage."}]'::jsonb, 'C', 'Step 1 — Match subject and timeline
The opening participial phrase modifies {{yellow:paleoclimatologists}}, and the passage establishes a past historical context.

Step 2 — Use consistent tense
Populations that survived did so in the same past epoch, requiring past tense.

Step 3 — Select the grammatical option
Choice C (flourished) is grammatically correct.

Distractor analysis:
- A: [Proximity Decoy] singular present breaks both the plural subject and the historical past timeline.
- B: [Dangling Modifier] present "flourish" tracks the nearby plural "populations" but breaks the past epoch established by "argued," "forced," and "went."
- D: [Tense Shift] present "thrives" introduces a dangling-style mismatch with the historical past frame of the passage.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fe90bfcd-a801-4519-8922-2411dd764859', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. Nestled deep within the highly pressurized geothermal vents of the mid-ocean ridge, where temperatures can exceed $400^\circ\text{C}$, ______ vast colonies of chemosynthetic archaea, which survive without sunlight by exploiting chemical gradients along the ocean floor. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges.', 'passage', '[{"id":"A","text":"flourishes","is_correct":false,"explanation":"[Tense Shift] singular \"flourishes\" misaligns with the plural subject in this inverted finite-verb position."},{"id":"B","text":"flourish","is_correct":false,"explanation":"[Proximity Decoy] plural \"flourish\" tracks the nearer plural noun but breaks inverted agreement with the true subject after the blank."},{"id":"C","text":"thrives","is_correct":false,"explanation":"[Dangling Modifier] singular \"thrives\" agrees with a nearby singular noun in the opening phrase, not the plural subject \"vast colonies of chemosynthetic archaea.\""},{"id":"D","text":"thrive","is_correct":true,"explanation":"Correct: \"thrive\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Unpack inverted syntax
The true subject {{yellow:vast colonies of chemosynthetic archaea}} follows the blank in an inverted construction.

Step 2 — Agree in number
Plural subject requires the plural finite verb form.

Step 3 — Select the grammatical option
Choice D (thrive) is grammatically correct.

Distractor analysis:
- A: [Tense Shift] singular "flourishes" misaligns with the plural subject in this inverted finite-verb position.
- B: [Proximity Decoy] plural "flourish" tracks the nearer plural noun but breaks inverted agreement with the true subject after the blank.
- C: [Dangling Modifier] singular "thrives" agrees with a nearby singular noun in the opening phrase, not the plural subject "vast colonies of chemosynthetic archaea."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d66df6be-4420-4a2d-83c5-dbda6b2b8b50', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying archaeology at coastal excavation trenches have documented how ceramic shard assemblages shape broader conclusions. Neither the lead engineer nor the junior technicians who assembled the prototype overnight ______ able to explain why the sensor failed during the final calibration test. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical. Policy implications depend on whether the observed effect persists when practical constraints such as access vary.', 'passage', '[{"id":"A","text":"were","is_correct":true,"explanation":"Correct: \"were\" satisfies Standard English conventions for this blank."},{"id":"B","text":"was","is_correct":false,"explanation":"[Dangling Modifier] singular \"was\" agrees with \"engineer,\" the farther noun, instead of the nearer plural \"technicians.\""},{"id":"C","text":"has","is_correct":false,"explanation":"[Tense Shift] singular present perfect misaligns with the plural nearer subject and past context."},{"id":"D","text":"is","is_correct":false,"explanation":"[Proximity Decoy] present tense breaks the past narrative established by \"assembled\" and \"failed.\""}]'::jsonb, 'A', 'Step 1 — Apply the neither/nor rule
With {{yellow:Neither the lead engineer nor the junior technicians}}, the verb agrees with the nearer subject.

Step 2 — Check the nearer subject
''Technicians'' is plural, so the plural verb ''were'' is required.

Step 3 — Select the grammatical option
Choice A (were) is grammatically correct.

Distractor analysis:
- B: [Dangling Modifier] singular "was" agrees with "engineer," the farther noun, instead of the nearer plural "technicians."
- C: [Tense Shift] singular present perfect misaligns with the plural nearer subject and past context.
- D: [Proximity Decoy] present tense breaks the past narrative established by "assembled" and "failed."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bfb806b6-94c4-4de4-aff2-35523963dc67', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that rising carbon dioxide forced many deciduous species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids.', 'passage', '[{"id":"A","text":"flourishes","is_correct":false,"explanation":"[Proximity Decoy] singular present breaks both the plural subject and the historical past timeline."},{"id":"B","text":"flourished","is_correct":true,"explanation":"Correct: \"flourished\" satisfies Standard English conventions for this blank."},{"id":"C","text":"flourish","is_correct":false,"explanation":"[Dangling Modifier] present \"flourish\" tracks the nearby plural \"populations\" but breaks the past epoch established by \"argued,\" \"forced,\" and \"went.\""},{"id":"D","text":"thrives","is_correct":false,"explanation":"[Tense Shift] present \"thrives\" introduces a dangling-style mismatch with the historical past frame of the passage."}]'::jsonb, 'B', 'Step 1 — Match subject and timeline
The opening participial phrase modifies {{yellow:paleoclimatologists}}, and the passage establishes a past historical context.

Step 2 — Use consistent tense
Populations that survived did so in the same past epoch, requiring past tense.

Step 3 — Select the grammatical option
Choice B (flourished) is grammatically correct.

Distractor analysis:
- A: [Proximity Decoy] singular present breaks both the plural subject and the historical past timeline.
- C: [Dangling Modifier] present "flourish" tracks the nearby plural "populations" but breaks the past epoch established by "argued," "forced," and "went."
- D: [Tense Shift] present "thrives" introduces a dangling-style mismatch with the historical past frame of the passage.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e8e71ba6-22ce-4ef7-9fdb-472368f4f559', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying archaeology at coastal excavation trenches have documented how ceramic shard assemblages shape broader conclusions. Nestled deep within the highly pressurized geothermal vents of the mid-ocean ridge, where temperatures can exceed $400^\circ\text{C}$, ______ vast colonies of chemosynthetic archaea, which survive without sunlight by exploiting chemical gradients along the ocean floor. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical.', 'passage', '[{"id":"A","text":"flourishes","is_correct":false,"explanation":"[Tense Shift] singular \"flourishes\" misaligns with the plural subject in this inverted finite-verb position."},{"id":"B","text":"flourish","is_correct":false,"explanation":"[Proximity Decoy] plural \"flourish\" tracks the nearer plural noun but breaks inverted agreement with the true subject after the blank."},{"id":"C","text":"thrive","is_correct":true,"explanation":"Correct: \"thrive\" satisfies Standard English conventions for this blank."},{"id":"D","text":"thrives","is_correct":false,"explanation":"[Dangling Modifier] singular \"thrives\" agrees with a nearby singular noun in the opening phrase, not the plural subject \"vast colonies of chemosynthetic archaea.\""}]'::jsonb, 'C', 'Step 1 — Unpack inverted syntax
The true subject {{yellow:vast colonies of chemosynthetic archaea}} follows the blank in an inverted construction.

Step 2 — Agree in number
Plural subject requires the plural finite verb form.

Step 3 — Select the grammatical option
Choice C (thrive) is grammatically correct.

Distractor analysis:
- A: [Tense Shift] singular "flourishes" misaligns with the plural subject in this inverted finite-verb position.
- B: [Proximity Decoy] plural "flourish" tracks the nearer plural noun but breaks inverted agreement with the true subject after the blank.
- D: [Dangling Modifier] singular "thrives" agrees with a nearby singular noun in the opening phrase, not the plural subject "vast colonies of chemosynthetic archaea."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4ce521ae-6710-4b96-b581-b15e02acfa07', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. Neither the lead engineer nor the junior technicians who assembled the prototype overnight ______ able to explain why the sensor failed during the final calibration test. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids. Classroom textbooks may still compress the result, though the original study qualifies every major claim.', 'passage', '[{"id":"A","text":"was","is_correct":false,"explanation":"[Dangling Modifier] singular \"was\" agrees with \"engineer,\" the farther noun, instead of the nearer plural \"technicians.\""},{"id":"B","text":"has","is_correct":false,"explanation":"[Tense Shift] singular present perfect misaligns with the plural nearer subject and past context."},{"id":"C","text":"is","is_correct":false,"explanation":"[Proximity Decoy] present tense breaks the past narrative established by \"assembled\" and \"failed.\""},{"id":"D","text":"were","is_correct":true,"explanation":"Correct: \"were\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Apply the neither/nor rule
With {{yellow:Neither the lead engineer nor the junior technicians}}, the verb agrees with the nearer subject.

Step 2 — Check the nearer subject
''Technicians'' is plural, so the plural verb ''were'' is required.

Step 3 — Select the grammatical option
Choice D (were) is grammatically correct.

Distractor analysis:
- A: [Dangling Modifier] singular "was" agrees with "engineer," the farther noun, instead of the nearer plural "technicians."
- B: [Tense Shift] singular present perfect misaligns with the plural nearer subject and past context.
- C: [Proximity Decoy] present tense breaks the past narrative established by "assembled" and "failed."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('878a8291-9172-47c7-986e-ba91a501e61a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying ecology at mangrove restoration plots have documented how seedling survival rates shape broader conclusions. Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that rising carbon dioxide forced many deciduous species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice.', 'passage', '[{"id":"A","text":"flourished","is_correct":true,"explanation":"Correct: \"flourished\" satisfies Standard English conventions for this blank."},{"id":"B","text":"flourishes","is_correct":false,"explanation":"[Proximity Decoy] singular present breaks both the plural subject and the historical past timeline."},{"id":"C","text":"flourish","is_correct":false,"explanation":"[Dangling Modifier] present \"flourish\" tracks the nearby plural \"populations\" but breaks the past epoch established by \"argued,\" \"forced,\" and \"went.\""},{"id":"D","text":"thrives","is_correct":false,"explanation":"[Tense Shift] present \"thrives\" introduces a dangling-style mismatch with the historical past frame of the passage."}]'::jsonb, 'A', 'Step 1 — Match subject and timeline
The opening participial phrase modifies {{yellow:paleoclimatologists}}, and the passage establishes a past historical context.

Step 2 — Use consistent tense
Populations that survived did so in the same past epoch, requiring past tense.

Step 3 — Select the grammatical option
Choice A (flourished) is grammatically correct.

Distractor analysis:
- B: [Proximity Decoy] singular present breaks both the plural subject and the historical past timeline.
- C: [Dangling Modifier] present "flourish" tracks the nearby plural "populations" but breaks the past epoch established by "argued," "forced," and "went."
- D: [Tense Shift] present "thrives" introduces a dangling-style mismatch with the historical past frame of the passage.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6ebd6b5b-bc1d-4e34-9ebd-f6db7f7a8e0f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. Nestled deep within the highly pressurized geothermal vents of the mid-ocean ridge, where temperatures can exceed $400^\circ\text{C}$, ______ vast colonies of chemosynthetic archaea, which survive without sunlight by exploiting chemical gradients along the ocean floor. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids.', 'passage', '[{"id":"A","text":"flourishes","is_correct":false,"explanation":"[Tense Shift] singular \"flourishes\" misaligns with the plural subject in this inverted finite-verb position."},{"id":"B","text":"thrive","is_correct":true,"explanation":"Correct: \"thrive\" satisfies Standard English conventions for this blank."},{"id":"C","text":"flourish","is_correct":false,"explanation":"[Proximity Decoy] plural \"flourish\" tracks the nearer plural noun but breaks inverted agreement with the true subject after the blank."},{"id":"D","text":"thrives","is_correct":false,"explanation":"[Dangling Modifier] singular \"thrives\" agrees with a nearby singular noun in the opening phrase, not the plural subject \"vast colonies of chemosynthetic archaea.\""}]'::jsonb, 'B', 'Step 1 — Unpack inverted syntax
The true subject {{yellow:vast colonies of chemosynthetic archaea}} follows the blank in an inverted construction.

Step 2 — Agree in number
Plural subject requires the plural finite verb form.

Step 3 — Select the grammatical option
Choice B (thrive) is grammatically correct.

Distractor analysis:
- A: [Tense Shift] singular "flourishes" misaligns with the plural subject in this inverted finite-verb position.
- C: [Proximity Decoy] plural "flourish" tracks the nearer plural noun but breaks inverted agreement with the true subject after the blank.
- D: [Dangling Modifier] singular "thrives" agrees with a nearby singular noun in the opening phrase, not the plural subject "vast colonies of chemosynthetic archaea."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ed1c614a-8a8b-4291-a20c-3d40232d05a0', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying ecology at mangrove restoration plots have documented how seedling survival rates shape broader conclusions. Neither the lead engineer nor the junior technicians who assembled the prototype overnight ______ able to explain why the sensor failed during the final calibration test. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice.', 'passage', '[{"id":"A","text":"was","is_correct":false,"explanation":"[Dangling Modifier] singular \"was\" agrees with \"engineer,\" the farther noun, instead of the nearer plural \"technicians.\""},{"id":"B","text":"has","is_correct":false,"explanation":"[Tense Shift] singular present perfect misaligns with the plural nearer subject and past context."},{"id":"C","text":"were","is_correct":true,"explanation":"Correct: \"were\" satisfies Standard English conventions for this blank."},{"id":"D","text":"is","is_correct":false,"explanation":"[Proximity Decoy] present tense breaks the past narrative established by \"assembled\" and \"failed.\""}]'::jsonb, 'C', 'Step 1 — Apply the neither/nor rule
With {{yellow:Neither the lead engineer nor the junior technicians}}, the verb agrees with the nearer subject.

Step 2 — Check the nearer subject
''Technicians'' is plural, so the plural verb ''were'' is required.

Step 3 — Select the grammatical option
Choice C (were) is grammatically correct.

Distractor analysis:
- A: [Dangling Modifier] singular "was" agrees with "engineer," the farther noun, instead of the nearer plural "technicians."
- B: [Tense Shift] singular present perfect misaligns with the plural nearer subject and past context.
- D: [Proximity Decoy] present tense breaks the past narrative established by "assembled" and "failed."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('72a0f646-d100-4109-bf78-695a0ef2db6c', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that rising carbon dioxide forced many deciduous species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage.', 'passage', '[{"id":"A","text":"flourishes","is_correct":false,"explanation":"[Proximity Decoy] singular present breaks both the plural subject and the historical past timeline."},{"id":"B","text":"flourish","is_correct":false,"explanation":"[Dangling Modifier] present \"flourish\" tracks the nearby plural \"populations\" but breaks the past epoch established by \"argued,\" \"forced,\" and \"went.\""},{"id":"C","text":"thrives","is_correct":false,"explanation":"[Tense Shift] present \"thrives\" introduces a dangling-style mismatch with the historical past frame of the passage."},{"id":"D","text":"flourished","is_correct":true,"explanation":"Correct: \"flourished\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Match subject and timeline
The opening participial phrase modifies {{yellow:paleoclimatologists}}, and the passage establishes a past historical context.

Step 2 — Use consistent tense
Populations that survived did so in the same past epoch, requiring past tense.

Step 3 — Select the grammatical option
Choice D (flourished) is grammatically correct.

Distractor analysis:
- A: [Proximity Decoy] singular present breaks both the plural subject and the historical past timeline.
- B: [Dangling Modifier] present "flourish" tracks the nearby plural "populations" but breaks the past epoch established by "argued," "forced," and "went."
- C: [Tense Shift] present "thrives" introduces a dangling-style mismatch with the historical past frame of the passage.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9d32a5d3-cb42-4aa9-a4ac-d679521a3dc8', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying ecology at mangrove restoration plots have documented how seedling survival rates shape broader conclusions. Nestled deep within the highly pressurized geothermal vents of the mid-ocean ridge, where temperatures can exceed $400^\circ\text{C}$, ______ vast colonies of chemosynthetic archaea, which survive without sunlight by exploiting chemical gradients along the ocean floor. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice.', 'passage', '[{"id":"A","text":"thrive","is_correct":true,"explanation":"Correct: \"thrive\" satisfies Standard English conventions for this blank."},{"id":"B","text":"flourishes","is_correct":false,"explanation":"[Tense Shift] singular \"flourishes\" misaligns with the plural subject in this inverted finite-verb position."},{"id":"C","text":"flourish","is_correct":false,"explanation":"[Proximity Decoy] plural \"flourish\" tracks the nearer plural noun but breaks inverted agreement with the true subject after the blank."},{"id":"D","text":"thrives","is_correct":false,"explanation":"[Dangling Modifier] singular \"thrives\" agrees with a nearby singular noun in the opening phrase, not the plural subject \"vast colonies of chemosynthetic archaea.\""}]'::jsonb, 'A', 'Step 1 — Unpack inverted syntax
The true subject {{yellow:vast colonies of chemosynthetic archaea}} follows the blank in an inverted construction.

Step 2 — Agree in number
Plural subject requires the plural finite verb form.

Step 3 — Select the grammatical option
Choice A (thrive) is grammatically correct.

Distractor analysis:
- B: [Tense Shift] singular "flourishes" misaligns with the plural subject in this inverted finite-verb position.
- C: [Proximity Decoy] plural "flourish" tracks the nearer plural noun but breaks inverted agreement with the true subject after the blank.
- D: [Dangling Modifier] singular "thrives" agrees with a nearby singular noun in the opening phrase, not the plural subject "vast colonies of chemosynthetic archaea."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('774c288c-be18-4135-a24a-da0a3f6adc71', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. Neither the lead engineer nor the junior technicians who assembled the prototype overnight ______ able to explain why the sensor failed during the final calibration test. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical.', 'passage', '[{"id":"A","text":"was","is_correct":false,"explanation":"[Dangling Modifier] singular \"was\" agrees with \"engineer,\" the farther noun, instead of the nearer plural \"technicians.\""},{"id":"B","text":"were","is_correct":true,"explanation":"Correct: \"were\" satisfies Standard English conventions for this blank."},{"id":"C","text":"has","is_correct":false,"explanation":"[Tense Shift] singular present perfect misaligns with the plural nearer subject and past context."},{"id":"D","text":"is","is_correct":false,"explanation":"[Proximity Decoy] present tense breaks the past narrative established by \"assembled\" and \"failed.\""}]'::jsonb, 'B', 'Step 1 — Apply the neither/nor rule
With {{yellow:Neither the lead engineer nor the junior technicians}}, the verb agrees with the nearer subject.

Step 2 — Check the nearer subject
''Technicians'' is plural, so the plural verb ''were'' is required.

Step 3 — Select the grammatical option
Choice B (were) is grammatically correct.

Distractor analysis:
- A: [Dangling Modifier] singular "was" agrees with "engineer," the farther noun, instead of the nearer plural "technicians."
- C: [Tense Shift] singular present perfect misaligns with the plural nearer subject and past context.
- D: [Proximity Decoy] present tense breaks the past narrative established by "assembled" and "failed."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4f6afd88-66f4-4f08-85a3-cf8944c86406', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying paleoclimatology at Antarctic ice-core laboratories have documented how sulfate spike layers shape broader conclusions. Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that rising carbon dioxide forced many deciduous species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them.', 'passage', '[{"id":"A","text":"flourishes","is_correct":false,"explanation":"[Proximity Decoy] singular present breaks both the plural subject and the historical past timeline."},{"id":"B","text":"flourish","is_correct":false,"explanation":"[Dangling Modifier] present \"flourish\" tracks the nearby plural \"populations\" but breaks the past epoch established by \"argued,\" \"forced,\" and \"went.\""},{"id":"C","text":"flourished","is_correct":true,"explanation":"Correct: \"flourished\" satisfies Standard English conventions for this blank."},{"id":"D","text":"thrives","is_correct":false,"explanation":"[Tense Shift] present \"thrives\" introduces a dangling-style mismatch with the historical past frame of the passage."}]'::jsonb, 'C', 'Step 1 — Match subject and timeline
The opening participial phrase modifies {{yellow:paleoclimatologists}}, and the passage establishes a past historical context.

Step 2 — Use consistent tense
Populations that survived did so in the same past epoch, requiring past tense.

Step 3 — Select the grammatical option
Choice C (flourished) is grammatically correct.

Distractor analysis:
- A: [Proximity Decoy] singular present breaks both the plural subject and the historical past timeline.
- B: [Dangling Modifier] present "flourish" tracks the nearby plural "populations" but breaks the past epoch established by "argued," "forced," and "went."
- D: [Tense Shift] present "thrives" introduces a dangling-style mismatch with the historical past frame of the passage.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('40bbeb5e-9319-470d-b152-9c96387815ee', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. Nestled deep within the highly pressurized geothermal vents of the mid-ocean ridge, where temperatures can exceed $400^\circ\text{C}$, ______ vast colonies of chemosynthetic archaea, which survive without sunlight by exploiting chemical gradients along the ocean floor. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage.', 'passage', '[{"id":"A","text":"flourishes","is_correct":false,"explanation":"[Tense Shift] singular \"flourishes\" misaligns with the plural subject in this inverted finite-verb position."},{"id":"B","text":"flourish","is_correct":false,"explanation":"[Proximity Decoy] plural \"flourish\" tracks the nearer plural noun but breaks inverted agreement with the true subject after the blank."},{"id":"C","text":"thrives","is_correct":false,"explanation":"[Dangling Modifier] singular \"thrives\" agrees with a nearby singular noun in the opening phrase, not the plural subject \"vast colonies of chemosynthetic archaea.\""},{"id":"D","text":"thrive","is_correct":true,"explanation":"Correct: \"thrive\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Unpack inverted syntax
The true subject {{yellow:vast colonies of chemosynthetic archaea}} follows the blank in an inverted construction.

Step 2 — Agree in number
Plural subject requires the plural finite verb form.

Step 3 — Select the grammatical option
Choice D (thrive) is grammatically correct.

Distractor analysis:
- A: [Tense Shift] singular "flourishes" misaligns with the plural subject in this inverted finite-verb position.
- B: [Proximity Decoy] plural "flourish" tracks the nearer plural noun but breaks inverted agreement with the true subject after the blank.
- C: [Dangling Modifier] singular "thrives" agrees with a nearby singular noun in the opening phrase, not the plural subject "vast colonies of chemosynthetic archaea."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7791942e-2f1e-4740-8647-61a00d660a39', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying paleoclimatology at Antarctic ice-core laboratories have documented how sulfate spike layers shape broader conclusions. Neither the lead engineer nor the junior technicians who assembled the prototype overnight ______ able to explain why the sensor failed during the final calibration test. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids.', 'passage', '[{"id":"A","text":"were","is_correct":true,"explanation":"Correct: \"were\" satisfies Standard English conventions for this blank."},{"id":"B","text":"was","is_correct":false,"explanation":"[Dangling Modifier] singular \"was\" agrees with \"engineer,\" the farther noun, instead of the nearer plural \"technicians.\""},{"id":"C","text":"has","is_correct":false,"explanation":"[Tense Shift] singular present perfect misaligns with the plural nearer subject and past context."},{"id":"D","text":"is","is_correct":false,"explanation":"[Proximity Decoy] present tense breaks the past narrative established by \"assembled\" and \"failed.\""}]'::jsonb, 'A', 'Step 1 — Apply the neither/nor rule
With {{yellow:Neither the lead engineer nor the junior technicians}}, the verb agrees with the nearer subject.

Step 2 — Check the nearer subject
''Technicians'' is plural, so the plural verb ''were'' is required.

Step 3 — Select the grammatical option
Choice A (were) is grammatically correct.

Distractor analysis:
- B: [Dangling Modifier] singular "was" agrees with "engineer," the farther noun, instead of the nearer plural "technicians."
- C: [Tense Shift] singular present perfect misaligns with the plural nearer subject and past context.
- D: [Proximity Decoy] present tense breaks the past narrative established by "assembled" and "failed."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
COMMIT;
