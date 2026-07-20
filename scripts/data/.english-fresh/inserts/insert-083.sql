BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('27ef4fb2-afb5-4bda-b021-dd261fdb311f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying paleoclimatology at Antarctic ice-core laboratories have documented how sulfate spike layers shape broader conclusions. Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that rising carbon dioxide forced many deciduous species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical.', 'passage', '[{"id":"A","text":"flourishes","is_correct":false,"explanation":"[Proximity Decoy] singular present breaks both the plural subject and the historical past timeline."},{"id":"B","text":"flourish","is_correct":false,"explanation":"[Dangling Modifier] present \"flourish\" tracks the nearby plural \"populations\" but breaks the past epoch established by \"argued,\" \"forced,\" and \"went.\""},{"id":"C","text":"flourished","is_correct":true,"explanation":"Correct: \"flourished\" satisfies Standard English conventions for this blank."},{"id":"D","text":"thrives","is_correct":false,"explanation":"[Tense Shift] present \"thrives\" introduces a dangling-style mismatch with the historical past frame of the passage."}]'::jsonb, 'C', 'Step 1 — Match subject and timeline
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
VALUES ('2e7e938c-24a6-48ae-a0db-7093516d28b0', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. Nestled deep within the highly pressurized geothermal vents of the mid-ocean ridge, where temperatures can exceed $400^\circ\text{C}$, ______ vast colonies of chemosynthetic archaea, which survive without sunlight by exploiting chemical gradients along the ocean floor. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges.', 'passage', '[{"id":"A","text":"flourishes","is_correct":false,"explanation":"[Tense Shift] singular \"flourishes\" misaligns with the plural subject in this inverted finite-verb position."},{"id":"B","text":"flourish","is_correct":false,"explanation":"[Proximity Decoy] plural \"flourish\" tracks the nearer plural noun but breaks inverted agreement with the true subject after the blank."},{"id":"C","text":"thrives","is_correct":false,"explanation":"[Dangling Modifier] singular \"thrives\" agrees with a nearby singular noun in the opening phrase, not the plural subject \"vast colonies of chemosynthetic archaea.\""},{"id":"D","text":"thrive","is_correct":true,"explanation":"Correct: \"thrive\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Unpack inverted syntax
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
VALUES ('e98110c1-a6fc-49fc-a22e-a8b90272cb35', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying paleoclimatology at Antarctic ice-core laboratories have documented how sulfate spike layers shape broader conclusions. Neither the lead engineer nor the junior technicians who assembled the prototype overnight ______ able to explain why the sensor failed during the final calibration test. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical. Policy implications depend on whether the observed effect persists when practical constraints such as access vary.', 'passage', '[{"id":"A","text":"were","is_correct":true,"explanation":"Correct: \"were\" satisfies Standard English conventions for this blank."},{"id":"B","text":"was","is_correct":false,"explanation":"[Dangling Modifier] singular \"was\" agrees with \"engineer,\" the farther noun, instead of the nearer plural \"technicians.\""},{"id":"C","text":"has","is_correct":false,"explanation":"[Tense Shift] singular present perfect misaligns with the plural nearer subject and past context."},{"id":"D","text":"is","is_correct":false,"explanation":"[Proximity Decoy] present tense breaks the past narrative established by \"assembled\" and \"failed.\""}]'::jsonb, 'A', 'Step 1 — Apply the neither/nor rule
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
VALUES ('046a15fe-6c38-4715-acbe-4a2b08aa172f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that rising carbon dioxide forced many deciduous species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids.', 'passage', '[{"id":"A","text":"flourishes","is_correct":false,"explanation":"[Proximity Decoy] singular present breaks both the plural subject and the historical past timeline."},{"id":"B","text":"flourished","is_correct":true,"explanation":"Correct: \"flourished\" satisfies Standard English conventions for this blank."},{"id":"C","text":"flourish","is_correct":false,"explanation":"[Dangling Modifier] present \"flourish\" tracks the nearby plural \"populations\" but breaks the past epoch established by \"argued,\" \"forced,\" and \"went.\""},{"id":"D","text":"thrives","is_correct":false,"explanation":"[Tense Shift] present \"thrives\" introduces a dangling-style mismatch with the historical past frame of the passage."}]'::jsonb, 'B', 'Step 1 — Match subject and timeline
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
VALUES ('80b57537-4ffe-467f-93ae-cff8700ca8e0', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying paleoclimatology at Antarctic ice-core laboratories have documented how sulfate spike layers shape broader conclusions. Nestled deep within the highly pressurized geothermal vents of the mid-ocean ridge, where temperatures can exceed $400^\circ\text{C}$, ______ vast colonies of chemosynthetic archaea, which survive without sunlight by exploiting chemical gradients along the ocean floor. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical.', 'passage', '[{"id":"A","text":"flourishes","is_correct":false,"explanation":"[Tense Shift] singular \"flourishes\" misaligns with the plural subject in this inverted finite-verb position."},{"id":"B","text":"flourish","is_correct":false,"explanation":"[Proximity Decoy] plural \"flourish\" tracks the nearer plural noun but breaks inverted agreement with the true subject after the blank."},{"id":"C","text":"thrive","is_correct":true,"explanation":"Correct: \"thrive\" satisfies Standard English conventions for this blank."},{"id":"D","text":"thrives","is_correct":false,"explanation":"[Dangling Modifier] singular \"thrives\" agrees with a nearby singular noun in the opening phrase, not the plural subject \"vast colonies of chemosynthetic archaea.\""}]'::jsonb, 'C', 'Step 1 — Unpack inverted syntax
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
VALUES ('48874321-93a7-407c-a413-a0366c3b543c', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. Neither the lead engineer nor the junior technicians who assembled the prototype overnight ______ able to explain why the sensor failed during the final calibration test. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids. Classroom textbooks may still compress the result, though the original study qualifies every major claim.', 'passage', '[{"id":"A","text":"was","is_correct":false,"explanation":"[Dangling Modifier] singular \"was\" agrees with \"engineer,\" the farther noun, instead of the nearer plural \"technicians.\""},{"id":"B","text":"has","is_correct":false,"explanation":"[Tense Shift] singular present perfect misaligns with the plural nearer subject and past context."},{"id":"C","text":"is","is_correct":false,"explanation":"[Proximity Decoy] present tense breaks the past narrative established by \"assembled\" and \"failed.\""},{"id":"D","text":"were","is_correct":true,"explanation":"Correct: \"were\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Apply the neither/nor rule
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
VALUES ('b0df9104-cac9-435e-881c-74dc09582ca4', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying economics at regional labor market surveys have documented how wage adjustment estimates shape broader conclusions. Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that rising carbon dioxide forced many deciduous species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice.', 'passage', '[{"id":"A","text":"flourished","is_correct":true,"explanation":"Correct: \"flourished\" satisfies Standard English conventions for this blank."},{"id":"B","text":"flourishes","is_correct":false,"explanation":"[Proximity Decoy] singular present breaks both the plural subject and the historical past timeline."},{"id":"C","text":"flourish","is_correct":false,"explanation":"[Dangling Modifier] present \"flourish\" tracks the nearby plural \"populations\" but breaks the past epoch established by \"argued,\" \"forced,\" and \"went.\""},{"id":"D","text":"thrives","is_correct":false,"explanation":"[Tense Shift] present \"thrives\" introduces a dangling-style mismatch with the historical past frame of the passage."}]'::jsonb, 'A', 'Step 1 — Match subject and timeline
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
VALUES ('bc795772-f893-48b5-8bb9-024011ab64b4', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. Nestled deep within the highly pressurized geothermal vents of the mid-ocean ridge, where temperatures can exceed $400^\circ\text{C}$, ______ vast colonies of chemosynthetic archaea, which survive without sunlight by exploiting chemical gradients along the ocean floor. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids.', 'passage', '[{"id":"A","text":"flourishes","is_correct":false,"explanation":"[Tense Shift] singular \"flourishes\" misaligns with the plural subject in this inverted finite-verb position."},{"id":"B","text":"thrive","is_correct":true,"explanation":"Correct: \"thrive\" satisfies Standard English conventions for this blank."},{"id":"C","text":"flourish","is_correct":false,"explanation":"[Proximity Decoy] plural \"flourish\" tracks the nearer plural noun but breaks inverted agreement with the true subject after the blank."},{"id":"D","text":"thrives","is_correct":false,"explanation":"[Dangling Modifier] singular \"thrives\" agrees with a nearby singular noun in the opening phrase, not the plural subject \"vast colonies of chemosynthetic archaea.\""}]'::jsonb, 'B', 'Step 1 — Unpack inverted syntax
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
VALUES ('1163eecb-8950-4ca0-bfa7-70daa4ec8478', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying economics at regional labor market surveys have documented how wage adjustment estimates shape broader conclusions. Neither the lead engineer nor the junior technicians who assembled the prototype overnight ______ able to explain why the sensor failed during the final calibration test. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice.', 'passage', '[{"id":"A","text":"was","is_correct":false,"explanation":"[Dangling Modifier] singular \"was\" agrees with \"engineer,\" the farther noun, instead of the nearer plural \"technicians.\""},{"id":"B","text":"has","is_correct":false,"explanation":"[Tense Shift] singular present perfect misaligns with the plural nearer subject and past context."},{"id":"C","text":"were","is_correct":true,"explanation":"Correct: \"were\" satisfies Standard English conventions for this blank."},{"id":"D","text":"is","is_correct":false,"explanation":"[Proximity Decoy] present tense breaks the past narrative established by \"assembled\" and \"failed.\""}]'::jsonb, 'C', 'Step 1 — Apply the neither/nor rule
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
VALUES ('0acba6e9-9790-48bc-9b92-02588f5f3e15', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that rising carbon dioxide forced many deciduous species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage.', 'passage', '[{"id":"A","text":"flourishes","is_correct":false,"explanation":"[Proximity Decoy] singular present breaks both the plural subject and the historical past timeline."},{"id":"B","text":"flourish","is_correct":false,"explanation":"[Dangling Modifier] present \"flourish\" tracks the nearby plural \"populations\" but breaks the past epoch established by \"argued,\" \"forced,\" and \"went.\""},{"id":"C","text":"thrives","is_correct":false,"explanation":"[Tense Shift] present \"thrives\" introduces a dangling-style mismatch with the historical past frame of the passage."},{"id":"D","text":"flourished","is_correct":true,"explanation":"Correct: \"flourished\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Match subject and timeline
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
VALUES ('4eec466d-07cc-4ccb-9025-defa1ce48ffd', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying economics at regional labor market surveys have documented how wage adjustment estimates shape broader conclusions. Nestled deep within the highly pressurized geothermal vents of the mid-ocean ridge, where temperatures can exceed $400^\circ\text{C}$, ______ vast colonies of chemosynthetic archaea, which survive without sunlight by exploiting chemical gradients along the ocean floor. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice.', 'passage', '[{"id":"A","text":"thrive","is_correct":true,"explanation":"Correct: \"thrive\" satisfies Standard English conventions for this blank."},{"id":"B","text":"flourishes","is_correct":false,"explanation":"[Tense Shift] singular \"flourishes\" misaligns with the plural subject in this inverted finite-verb position."},{"id":"C","text":"flourish","is_correct":false,"explanation":"[Proximity Decoy] plural \"flourish\" tracks the nearer plural noun but breaks inverted agreement with the true subject after the blank."},{"id":"D","text":"thrives","is_correct":false,"explanation":"[Dangling Modifier] singular \"thrives\" agrees with a nearby singular noun in the opening phrase, not the plural subject \"vast colonies of chemosynthetic archaea.\""}]'::jsonb, 'A', 'Step 1 — Unpack inverted syntax
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
VALUES ('1b7a4342-16fc-4b0a-a5f9-3aebfc4b9b52', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. Neither the lead engineer nor the junior technicians who assembled the prototype overnight ______ able to explain why the sensor failed during the final calibration test. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical.', 'passage', '[{"id":"A","text":"was","is_correct":false,"explanation":"[Dangling Modifier] singular \"was\" agrees with \"engineer,\" the farther noun, instead of the nearer plural \"technicians.\""},{"id":"B","text":"were","is_correct":true,"explanation":"Correct: \"were\" satisfies Standard English conventions for this blank."},{"id":"C","text":"has","is_correct":false,"explanation":"[Tense Shift] singular present perfect misaligns with the plural nearer subject and past context."},{"id":"D","text":"is","is_correct":false,"explanation":"[Proximity Decoy] present tense breaks the past narrative established by \"assembled\" and \"failed.\""}]'::jsonb, 'B', 'Step 1 — Apply the neither/nor rule
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
VALUES ('3dc12db4-8ba2-432f-9875-69d06f06527c', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying archaeology at coastal excavation trenches have documented how ceramic shard assemblages shape broader conclusions. Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that rising carbon dioxide forced many deciduous species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them.', 'passage', '[{"id":"A","text":"flourishes","is_correct":false,"explanation":"[Proximity Decoy] singular present breaks both the plural subject and the historical past timeline."},{"id":"B","text":"flourish","is_correct":false,"explanation":"[Dangling Modifier] present \"flourish\" tracks the nearby plural \"populations\" but breaks the past epoch established by \"argued,\" \"forced,\" and \"went.\""},{"id":"C","text":"flourished","is_correct":true,"explanation":"Correct: \"flourished\" satisfies Standard English conventions for this blank."},{"id":"D","text":"thrives","is_correct":false,"explanation":"[Tense Shift] present \"thrives\" introduces a dangling-style mismatch with the historical past frame of the passage."}]'::jsonb, 'C', 'Step 1 — Match subject and timeline
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
VALUES ('8c37cd43-350a-4c97-9d02-4a4bd66f94ca', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. Nestled deep within the highly pressurized geothermal vents of the mid-ocean ridge, where temperatures can exceed $400^\circ\text{C}$, ______ vast colonies of chemosynthetic archaea, which survive without sunlight by exploiting chemical gradients along the ocean floor. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage.', 'passage', '[{"id":"A","text":"flourishes","is_correct":false,"explanation":"[Tense Shift] singular \"flourishes\" misaligns with the plural subject in this inverted finite-verb position."},{"id":"B","text":"flourish","is_correct":false,"explanation":"[Proximity Decoy] plural \"flourish\" tracks the nearer plural noun but breaks inverted agreement with the true subject after the blank."},{"id":"C","text":"thrives","is_correct":false,"explanation":"[Dangling Modifier] singular \"thrives\" agrees with a nearby singular noun in the opening phrase, not the plural subject \"vast colonies of chemosynthetic archaea.\""},{"id":"D","text":"thrive","is_correct":true,"explanation":"Correct: \"thrive\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Unpack inverted syntax
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
VALUES ('ec6ca23e-70c8-4e86-89d3-cac8791cb772', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying archaeology at coastal excavation trenches have documented how ceramic shard assemblages shape broader conclusions. Neither the lead engineer nor the junior technicians who assembled the prototype overnight ______ able to explain why the sensor failed during the final calibration test. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids.', 'passage', '[{"id":"A","text":"were","is_correct":true,"explanation":"Correct: \"were\" satisfies Standard English conventions for this blank."},{"id":"B","text":"was","is_correct":false,"explanation":"[Dangling Modifier] singular \"was\" agrees with \"engineer,\" the farther noun, instead of the nearer plural \"technicians.\""},{"id":"C","text":"has","is_correct":false,"explanation":"[Tense Shift] singular present perfect misaligns with the plural nearer subject and past context."},{"id":"D","text":"is","is_correct":false,"explanation":"[Proximity Decoy] present tense breaks the past narrative established by \"assembled\" and \"failed.\""}]'::jsonb, 'A', 'Step 1 — Apply the neither/nor rule
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
VALUES ('695c5a5f-08b1-45d8-b4b0-575086820b11', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that rising carbon dioxide forced many deciduous species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled.', 'passage', '[{"id":"A","text":"flourishes","is_correct":false,"explanation":"[Proximity Decoy] singular present breaks both the plural subject and the historical past timeline."},{"id":"B","text":"flourished","is_correct":true,"explanation":"Correct: \"flourished\" satisfies Standard English conventions for this blank."},{"id":"C","text":"flourish","is_correct":false,"explanation":"[Dangling Modifier] present \"flourish\" tracks the nearby plural \"populations\" but breaks the past epoch established by \"argued,\" \"forced,\" and \"went.\""},{"id":"D","text":"thrives","is_correct":false,"explanation":"[Tense Shift] present \"thrives\" introduces a dangling-style mismatch with the historical past frame of the passage."}]'::jsonb, 'B', 'Step 1 — Match subject and timeline
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
VALUES ('c49756ad-3a2c-4429-beef-2ab0948eed18', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying archaeology at coastal excavation trenches have documented how ceramic shard assemblages shape broader conclusions. Nestled deep within the highly pressurized geothermal vents of the mid-ocean ridge, where temperatures can exceed $400^\circ\text{C}$, ______ vast colonies of chemosynthetic archaea, which survive without sunlight by exploiting chemical gradients along the ocean floor. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them.', 'passage', '[{"id":"A","text":"flourishes","is_correct":false,"explanation":"[Tense Shift] singular \"flourishes\" misaligns with the plural subject in this inverted finite-verb position."},{"id":"B","text":"flourish","is_correct":false,"explanation":"[Proximity Decoy] plural \"flourish\" tracks the nearer plural noun but breaks inverted agreement with the true subject after the blank."},{"id":"C","text":"thrive","is_correct":true,"explanation":"Correct: \"thrive\" satisfies Standard English conventions for this blank."},{"id":"D","text":"thrives","is_correct":false,"explanation":"[Dangling Modifier] singular \"thrives\" agrees with a nearby singular noun in the opening phrase, not the plural subject \"vast colonies of chemosynthetic archaea.\""}]'::jsonb, 'C', 'Step 1 — Unpack inverted syntax
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
VALUES ('571fd5e2-acdc-45bd-9e96-b362d155ee34', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. Neither the lead engineer nor the junior technicians who assembled the prototype overnight ______ able to explain why the sensor failed during the final calibration test. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice.', 'passage', '[{"id":"A","text":"was","is_correct":false,"explanation":"[Dangling Modifier] singular \"was\" agrees with \"engineer,\" the farther noun, instead of the nearer plural \"technicians.\""},{"id":"B","text":"has","is_correct":false,"explanation":"[Tense Shift] singular present perfect misaligns with the plural nearer subject and past context."},{"id":"C","text":"is","is_correct":false,"explanation":"[Proximity Decoy] present tense breaks the past narrative established by \"assembled\" and \"failed.\""},{"id":"D","text":"were","is_correct":true,"explanation":"Correct: \"were\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Apply the neither/nor rule
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
VALUES ('e632f757-1175-4743-a1ef-79236b604aba', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying ecology at mangrove restoration plots have documented how seedling survival rates shape broader conclusions. Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that rising carbon dioxide forced many deciduous species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct. Stakeholders should weigh the evidence against limitations the researchers document throughout the study.', 'passage', '[{"id":"A","text":"flourished","is_correct":true,"explanation":"Correct: \"flourished\" satisfies Standard English conventions for this blank."},{"id":"B","text":"flourishes","is_correct":false,"explanation":"[Proximity Decoy] singular present breaks both the plural subject and the historical past timeline."},{"id":"C","text":"flourish","is_correct":false,"explanation":"[Dangling Modifier] present \"flourish\" tracks the nearby plural \"populations\" but breaks the past epoch established by \"argued,\" \"forced,\" and \"went.\""},{"id":"D","text":"thrives","is_correct":false,"explanation":"[Tense Shift] present \"thrives\" introduces a dangling-style mismatch with the historical past frame of the passage."}]'::jsonb, 'A', 'Step 1 — Match subject and timeline
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
VALUES ('546dbaf6-572f-4bbf-a58b-9f8b4dbf9760', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. Nestled deep within the highly pressurized geothermal vents of the mid-ocean ridge, where temperatures can exceed $400^\circ\text{C}$, ______ vast colonies of chemosynthetic archaea, which survive without sunlight by exploiting chemical gradients along the ocean floor. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled.', 'passage', '[{"id":"A","text":"flourishes","is_correct":false,"explanation":"[Tense Shift] singular \"flourishes\" misaligns with the plural subject in this inverted finite-verb position."},{"id":"B","text":"thrive","is_correct":true,"explanation":"Correct: \"thrive\" satisfies Standard English conventions for this blank."},{"id":"C","text":"flourish","is_correct":false,"explanation":"[Proximity Decoy] plural \"flourish\" tracks the nearer plural noun but breaks inverted agreement with the true subject after the blank."},{"id":"D","text":"thrives","is_correct":false,"explanation":"[Dangling Modifier] singular \"thrives\" agrees with a nearby singular noun in the opening phrase, not the plural subject \"vast colonies of chemosynthetic archaea.\""}]'::jsonb, 'B', 'Step 1 — Unpack inverted syntax
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
VALUES ('6a7ff58d-9467-40cf-8c1d-76707bface23', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying ecology at mangrove restoration plots have documented how seedling survival rates shape broader conclusions. Neither the lead engineer nor the junior technicians who assembled the prototype overnight ______ able to explain why the sensor failed during the final calibration test. Stakeholders should weigh the evidence against limitations the researchers document throughout the study. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage.', 'passage', '[{"id":"A","text":"was","is_correct":false,"explanation":"[Dangling Modifier] singular \"was\" agrees with \"engineer,\" the farther noun, instead of the nearer plural \"technicians.\""},{"id":"B","text":"has","is_correct":false,"explanation":"[Tense Shift] singular present perfect misaligns with the plural nearer subject and past context."},{"id":"C","text":"were","is_correct":true,"explanation":"Correct: \"were\" satisfies Standard English conventions for this blank."},{"id":"D","text":"is","is_correct":false,"explanation":"[Proximity Decoy] present tense breaks the past narrative established by \"assembled\" and \"failed.\""}]'::jsonb, 'C', 'Step 1 — Apply the neither/nor rule
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
VALUES ('7a22ccd6-dea6-4f55-9a48-6319def1027e', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that rising carbon dioxide forced many deciduous species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct. Policy implications depend on whether the observed effect persists when practical constraints such as access vary.', 'passage', '[{"id":"A","text":"flourishes","is_correct":false,"explanation":"[Proximity Decoy] singular present breaks both the plural subject and the historical past timeline."},{"id":"B","text":"flourish","is_correct":false,"explanation":"[Dangling Modifier] present \"flourish\" tracks the nearby plural \"populations\" but breaks the past epoch established by \"argued,\" \"forced,\" and \"went.\""},{"id":"C","text":"thrives","is_correct":false,"explanation":"[Tense Shift] present \"thrives\" introduces a dangling-style mismatch with the historical past frame of the passage."},{"id":"D","text":"flourished","is_correct":true,"explanation":"Correct: \"flourished\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Match subject and timeline
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
VALUES ('c19de853-bbef-42ab-90cf-580a16db705d', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying ecology at mangrove restoration plots have documented how seedling survival rates shape broader conclusions. Nestled deep within the highly pressurized geothermal vents of the mid-ocean ridge, where temperatures can exceed $400^\circ\text{C}$, ______ vast colonies of chemosynthetic archaea, which survive without sunlight by exploiting chemical gradients along the ocean floor. Stakeholders should weigh the evidence against limitations the researchers document throughout the study.', 'passage', '[{"id":"A","text":"thrive","is_correct":true,"explanation":"Correct: \"thrive\" satisfies Standard English conventions for this blank."},{"id":"B","text":"flourishes","is_correct":false,"explanation":"[Tense Shift] singular \"flourishes\" misaligns with the plural subject in this inverted finite-verb position."},{"id":"C","text":"flourish","is_correct":false,"explanation":"[Proximity Decoy] plural \"flourish\" tracks the nearer plural noun but breaks inverted agreement with the true subject after the blank."},{"id":"D","text":"thrives","is_correct":false,"explanation":"[Dangling Modifier] singular \"thrives\" agrees with a nearby singular noun in the opening phrase, not the plural subject \"vast colonies of chemosynthetic archaea.\""}]'::jsonb, 'A', 'Step 1 — Unpack inverted syntax
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
VALUES ('8f4163a7-4aeb-4867-bd0a-498ae6db1ce8', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. Neither the lead engineer nor the junior technicians who assembled the prototype overnight ______ able to explain why the sensor failed during the final calibration test. Policy implications depend on whether the observed effect persists when practical constraints such as access vary. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them.', 'passage', '[{"id":"A","text":"was","is_correct":false,"explanation":"[Dangling Modifier] singular \"was\" agrees with \"engineer,\" the farther noun, instead of the nearer plural \"technicians.\""},{"id":"B","text":"were","is_correct":true,"explanation":"Correct: \"were\" satisfies Standard English conventions for this blank."},{"id":"C","text":"has","is_correct":false,"explanation":"[Tense Shift] singular present perfect misaligns with the plural nearer subject and past context."},{"id":"D","text":"is","is_correct":false,"explanation":"[Proximity Decoy] present tense breaks the past narrative established by \"assembled\" and \"failed.\""}]'::jsonb, 'B', 'Step 1 — Apply the neither/nor rule
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
VALUES ('3e767caa-b9c8-4344-b499-94538245afbf', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying paleoclimatology at Antarctic ice-core laboratories have documented how sulfate spike layers shape broader conclusions. Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that rising carbon dioxide forced many deciduous species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct. Classroom textbooks may still compress the result, though the original study qualifies every major claim.', 'passage', '[{"id":"A","text":"flourishes","is_correct":false,"explanation":"[Proximity Decoy] singular present breaks both the plural subject and the historical past timeline."},{"id":"B","text":"flourish","is_correct":false,"explanation":"[Dangling Modifier] present \"flourish\" tracks the nearby plural \"populations\" but breaks the past epoch established by \"argued,\" \"forced,\" and \"went.\""},{"id":"C","text":"flourished","is_correct":true,"explanation":"Correct: \"flourished\" satisfies Standard English conventions for this blank."},{"id":"D","text":"thrives","is_correct":false,"explanation":"[Tense Shift] present \"thrives\" introduces a dangling-style mismatch with the historical past frame of the passage."}]'::jsonb, 'C', 'Step 1 — Match subject and timeline
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
VALUES ('eeca40b1-e24a-4630-9a5a-644a584beb6a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. Nestled deep within the highly pressurized geothermal vents of the mid-ocean ridge, where temperatures can exceed $400^\circ\text{C}$, ______ vast colonies of chemosynthetic archaea, which survive without sunlight by exploiting chemical gradients along the ocean floor. Policy implications depend on whether the observed effect persists when practical constraints such as access vary.', 'passage', '[{"id":"A","text":"flourishes","is_correct":false,"explanation":"[Tense Shift] singular \"flourishes\" misaligns with the plural subject in this inverted finite-verb position."},{"id":"B","text":"flourish","is_correct":false,"explanation":"[Proximity Decoy] plural \"flourish\" tracks the nearer plural noun but breaks inverted agreement with the true subject after the blank."},{"id":"C","text":"thrives","is_correct":false,"explanation":"[Dangling Modifier] singular \"thrives\" agrees with a nearby singular noun in the opening phrase, not the plural subject \"vast colonies of chemosynthetic archaea.\""},{"id":"D","text":"thrive","is_correct":true,"explanation":"Correct: \"thrive\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Unpack inverted syntax
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
VALUES ('c4709fde-a06c-4235-854c-943a37d0ba39', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying paleoclimatology at Antarctic ice-core laboratories have documented how sulfate spike layers shape broader conclusions. Neither the lead engineer nor the junior technicians who assembled the prototype overnight ______ able to explain why the sensor failed during the final calibration test. Classroom textbooks may still compress the result, though the original study qualifies every major claim. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled.', 'passage', '[{"id":"A","text":"were","is_correct":true,"explanation":"Correct: \"were\" satisfies Standard English conventions for this blank."},{"id":"B","text":"was","is_correct":false,"explanation":"[Dangling Modifier] singular \"was\" agrees with \"engineer,\" the farther noun, instead of the nearer plural \"technicians.\""},{"id":"C","text":"has","is_correct":false,"explanation":"[Tense Shift] singular present perfect misaligns with the plural nearer subject and past context."},{"id":"D","text":"is","is_correct":false,"explanation":"[Proximity Decoy] present tense breaks the past narrative established by \"assembled\" and \"failed.\""}]'::jsonb, 'A', 'Step 1 — Apply the neither/nor rule
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
VALUES ('17e08c84-34af-48d4-a3a9-1aee19a480bb', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that rising carbon dioxide forced many deciduous species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges.', 'passage', '[{"id":"A","text":"flourishes","is_correct":false,"explanation":"[Proximity Decoy] singular present breaks both the plural subject and the historical past timeline."},{"id":"B","text":"flourished","is_correct":true,"explanation":"Correct: \"flourished\" satisfies Standard English conventions for this blank."},{"id":"C","text":"flourish","is_correct":false,"explanation":"[Dangling Modifier] present \"flourish\" tracks the nearby plural \"populations\" but breaks the past epoch established by \"argued,\" \"forced,\" and \"went.\""},{"id":"D","text":"thrives","is_correct":false,"explanation":"[Tense Shift] present \"thrives\" introduces a dangling-style mismatch with the historical past frame of the passage."}]'::jsonb, 'B', 'Step 1 — Match subject and timeline
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
VALUES ('e5171fdc-e8f5-4768-b61e-e8266fdd6fe0', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying paleoclimatology at Antarctic ice-core laboratories have documented how sulfate spike layers shape broader conclusions. Nestled deep within the highly pressurized geothermal vents of the mid-ocean ridge, where temperatures can exceed $400^\circ\text{C}$, ______ vast colonies of chemosynthetic archaea, which survive without sunlight by exploiting chemical gradients along the ocean floor. Classroom textbooks may still compress the result, though the original study qualifies every major claim.', 'passage', '[{"id":"A","text":"flourishes","is_correct":false,"explanation":"[Tense Shift] singular \"flourishes\" misaligns with the plural subject in this inverted finite-verb position."},{"id":"B","text":"flourish","is_correct":false,"explanation":"[Proximity Decoy] plural \"flourish\" tracks the nearer plural noun but breaks inverted agreement with the true subject after the blank."},{"id":"C","text":"thrive","is_correct":true,"explanation":"Correct: \"thrive\" satisfies Standard English conventions for this blank."},{"id":"D","text":"thrives","is_correct":false,"explanation":"[Dangling Modifier] singular \"thrives\" agrees with a nearby singular noun in the opening phrase, not the plural subject \"vast colonies of chemosynthetic archaea.\""}]'::jsonb, 'C', 'Step 1 — Unpack inverted syntax
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
VALUES ('a7c413ee-af45-439e-9498-6bd766e3ae0e', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. Neither the lead engineer nor the junior technicians who assembled the prototype overnight ______ able to explain why the sensor failed during the final calibration test. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges. Stakeholders should weigh the evidence against limitations the researchers document throughout the study.', 'passage', '[{"id":"A","text":"was","is_correct":false,"explanation":"[Dangling Modifier] singular \"was\" agrees with \"engineer,\" the farther noun, instead of the nearer plural \"technicians.\""},{"id":"B","text":"has","is_correct":false,"explanation":"[Tense Shift] singular present perfect misaligns with the plural nearer subject and past context."},{"id":"C","text":"is","is_correct":false,"explanation":"[Proximity Decoy] present tense breaks the past narrative established by \"assembled\" and \"failed.\""},{"id":"D","text":"were","is_correct":true,"explanation":"Correct: \"were\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Apply the neither/nor rule
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
VALUES ('7108c0c8-21ce-4f4e-8db6-4e32b8a306f1', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying economics at regional labor market surveys have documented how wage adjustment estimates shape broader conclusions. Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that rising carbon dioxide forced many deciduous species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical.', 'passage', '[{"id":"A","text":"flourished","is_correct":true,"explanation":"Correct: \"flourished\" satisfies Standard English conventions for this blank."},{"id":"B","text":"flourishes","is_correct":false,"explanation":"[Proximity Decoy] singular present breaks both the plural subject and the historical past timeline."},{"id":"C","text":"flourish","is_correct":false,"explanation":"[Dangling Modifier] present \"flourish\" tracks the nearby plural \"populations\" but breaks the past epoch established by \"argued,\" \"forced,\" and \"went.\""},{"id":"D","text":"thrives","is_correct":false,"explanation":"[Tense Shift] present \"thrives\" introduces a dangling-style mismatch with the historical past frame of the passage."}]'::jsonb, 'A', 'Step 1 — Match subject and timeline
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
VALUES ('e1c81864-e7b6-4b1a-bcd2-641fd1bcf7e7', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. Nestled deep within the highly pressurized geothermal vents of the mid-ocean ridge, where temperatures can exceed $400^\circ\text{C}$, ______ vast colonies of chemosynthetic archaea, which survive without sunlight by exploiting chemical gradients along the ocean floor. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges.', 'passage', '[{"id":"A","text":"flourishes","is_correct":false,"explanation":"[Tense Shift] singular \"flourishes\" misaligns with the plural subject in this inverted finite-verb position."},{"id":"B","text":"thrive","is_correct":true,"explanation":"Correct: \"thrive\" satisfies Standard English conventions for this blank."},{"id":"C","text":"flourish","is_correct":false,"explanation":"[Proximity Decoy] plural \"flourish\" tracks the nearer plural noun but breaks inverted agreement with the true subject after the blank."},{"id":"D","text":"thrives","is_correct":false,"explanation":"[Dangling Modifier] singular \"thrives\" agrees with a nearby singular noun in the opening phrase, not the plural subject \"vast colonies of chemosynthetic archaea.\""}]'::jsonb, 'B', 'Step 1 — Unpack inverted syntax
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
VALUES ('a733f9ce-6e99-4ece-a030-33e1cc1371d3', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying economics at regional labor market surveys have documented how wage adjustment estimates shape broader conclusions. Neither the lead engineer nor the junior technicians who assembled the prototype overnight ______ able to explain why the sensor failed during the final calibration test. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical. Policy implications depend on whether the observed effect persists when practical constraints such as access vary.', 'passage', '[{"id":"A","text":"was","is_correct":false,"explanation":"[Dangling Modifier] singular \"was\" agrees with \"engineer,\" the farther noun, instead of the nearer plural \"technicians.\""},{"id":"B","text":"has","is_correct":false,"explanation":"[Tense Shift] singular present perfect misaligns with the plural nearer subject and past context."},{"id":"C","text":"were","is_correct":true,"explanation":"Correct: \"were\" satisfies Standard English conventions for this blank."},{"id":"D","text":"is","is_correct":false,"explanation":"[Proximity Decoy] present tense breaks the past narrative established by \"assembled\" and \"failed.\""}]'::jsonb, 'C', 'Step 1 — Apply the neither/nor rule
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
VALUES ('a170604c-50fd-4e22-a8d4-52366313f92a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that rising carbon dioxide forced many deciduous species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids.', 'passage', '[{"id":"A","text":"flourishes","is_correct":false,"explanation":"[Proximity Decoy] singular present breaks both the plural subject and the historical past timeline."},{"id":"B","text":"flourish","is_correct":false,"explanation":"[Dangling Modifier] present \"flourish\" tracks the nearby plural \"populations\" but breaks the past epoch established by \"argued,\" \"forced,\" and \"went.\""},{"id":"C","text":"thrives","is_correct":false,"explanation":"[Tense Shift] present \"thrives\" introduces a dangling-style mismatch with the historical past frame of the passage."},{"id":"D","text":"flourished","is_correct":true,"explanation":"Correct: \"flourished\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Match subject and timeline
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
VALUES ('4d06a2b5-538a-4f42-9086-08a72c8fc847', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying economics at regional labor market surveys have documented how wage adjustment estimates shape broader conclusions. Nestled deep within the highly pressurized geothermal vents of the mid-ocean ridge, where temperatures can exceed $400^\circ\text{C}$, ______ vast colonies of chemosynthetic archaea, which survive without sunlight by exploiting chemical gradients along the ocean floor. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical.', 'passage', '[{"id":"A","text":"thrive","is_correct":true,"explanation":"Correct: \"thrive\" satisfies Standard English conventions for this blank."},{"id":"B","text":"flourishes","is_correct":false,"explanation":"[Tense Shift] singular \"flourishes\" misaligns with the plural subject in this inverted finite-verb position."},{"id":"C","text":"flourish","is_correct":false,"explanation":"[Proximity Decoy] plural \"flourish\" tracks the nearer plural noun but breaks inverted agreement with the true subject after the blank."},{"id":"D","text":"thrives","is_correct":false,"explanation":"[Dangling Modifier] singular \"thrives\" agrees with a nearby singular noun in the opening phrase, not the plural subject \"vast colonies of chemosynthetic archaea.\""}]'::jsonb, 'A', 'Step 1 — Unpack inverted syntax
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
VALUES ('8e646707-8056-4674-9e7a-34b72d4bf145', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. Neither the lead engineer nor the junior technicians who assembled the prototype overnight ______ able to explain why the sensor failed during the final calibration test. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids. Classroom textbooks may still compress the result, though the original study qualifies every major claim.', 'passage', '[{"id":"A","text":"was","is_correct":false,"explanation":"[Dangling Modifier] singular \"was\" agrees with \"engineer,\" the farther noun, instead of the nearer plural \"technicians.\""},{"id":"B","text":"were","is_correct":true,"explanation":"Correct: \"were\" satisfies Standard English conventions for this blank."},{"id":"C","text":"has","is_correct":false,"explanation":"[Tense Shift] singular present perfect misaligns with the plural nearer subject and past context."},{"id":"D","text":"is","is_correct":false,"explanation":"[Proximity Decoy] present tense breaks the past narrative established by \"assembled\" and \"failed.\""}]'::jsonb, 'B', 'Step 1 — Apply the neither/nor rule
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
VALUES ('919c3fb2-d8c5-403f-89a3-22e9dd4583e0', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying archaeology at coastal excavation trenches have documented how ceramic shard assemblages shape broader conclusions. Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that rising carbon dioxide forced many deciduous species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice.', 'passage', '[{"id":"A","text":"flourishes","is_correct":false,"explanation":"[Proximity Decoy] singular present breaks both the plural subject and the historical past timeline."},{"id":"B","text":"flourish","is_correct":false,"explanation":"[Dangling Modifier] present \"flourish\" tracks the nearby plural \"populations\" but breaks the past epoch established by \"argued,\" \"forced,\" and \"went.\""},{"id":"C","text":"flourished","is_correct":true,"explanation":"Correct: \"flourished\" satisfies Standard English conventions for this blank."},{"id":"D","text":"thrives","is_correct":false,"explanation":"[Tense Shift] present \"thrives\" introduces a dangling-style mismatch with the historical past frame of the passage."}]'::jsonb, 'C', 'Step 1 — Match subject and timeline
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
VALUES ('ebfd4244-550f-4dee-8cc3-59ead1ddba4d', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. Nestled deep within the highly pressurized geothermal vents of the mid-ocean ridge, where temperatures can exceed $400^\circ\text{C}$, ______ vast colonies of chemosynthetic archaea, which survive without sunlight by exploiting chemical gradients along the ocean floor. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids.', 'passage', '[{"id":"A","text":"flourishes","is_correct":false,"explanation":"[Tense Shift] singular \"flourishes\" misaligns with the plural subject in this inverted finite-verb position."},{"id":"B","text":"flourish","is_correct":false,"explanation":"[Proximity Decoy] plural \"flourish\" tracks the nearer plural noun but breaks inverted agreement with the true subject after the blank."},{"id":"C","text":"thrives","is_correct":false,"explanation":"[Dangling Modifier] singular \"thrives\" agrees with a nearby singular noun in the opening phrase, not the plural subject \"vast colonies of chemosynthetic archaea.\""},{"id":"D","text":"thrive","is_correct":true,"explanation":"Correct: \"thrive\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Unpack inverted syntax
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
VALUES ('503017a2-c764-4509-8e0e-3ad46902d907', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying archaeology at coastal excavation trenches have documented how ceramic shard assemblages shape broader conclusions. Neither the lead engineer nor the junior technicians who assembled the prototype overnight ______ able to explain why the sensor failed during the final calibration test. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice.', 'passage', '[{"id":"A","text":"were","is_correct":true,"explanation":"Correct: \"were\" satisfies Standard English conventions for this blank."},{"id":"B","text":"was","is_correct":false,"explanation":"[Dangling Modifier] singular \"was\" agrees with \"engineer,\" the farther noun, instead of the nearer plural \"technicians.\""},{"id":"C","text":"has","is_correct":false,"explanation":"[Tense Shift] singular present perfect misaligns with the plural nearer subject and past context."},{"id":"D","text":"is","is_correct":false,"explanation":"[Proximity Decoy] present tense breaks the past narrative established by \"assembled\" and \"failed.\""}]'::jsonb, 'A', 'Step 1 — Apply the neither/nor rule
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
VALUES ('d2e5dc99-5d7f-4a89-af2d-c6643dd8422a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that rising carbon dioxide forced many deciduous species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage.', 'passage', '[{"id":"A","text":"flourishes","is_correct":false,"explanation":"[Proximity Decoy] singular present breaks both the plural subject and the historical past timeline."},{"id":"B","text":"flourished","is_correct":true,"explanation":"Correct: \"flourished\" satisfies Standard English conventions for this blank."},{"id":"C","text":"flourish","is_correct":false,"explanation":"[Dangling Modifier] present \"flourish\" tracks the nearby plural \"populations\" but breaks the past epoch established by \"argued,\" \"forced,\" and \"went.\""},{"id":"D","text":"thrives","is_correct":false,"explanation":"[Tense Shift] present \"thrives\" introduces a dangling-style mismatch with the historical past frame of the passage."}]'::jsonb, 'B', 'Step 1 — Match subject and timeline
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
VALUES ('45509a0e-a537-44f6-8798-378800af52cd', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying archaeology at coastal excavation trenches have documented how ceramic shard assemblages shape broader conclusions. Nestled deep within the highly pressurized geothermal vents of the mid-ocean ridge, where temperatures can exceed $400^\circ\text{C}$, ______ vast colonies of chemosynthetic archaea, which survive without sunlight by exploiting chemical gradients along the ocean floor. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice.', 'passage', '[{"id":"A","text":"flourishes","is_correct":false,"explanation":"[Tense Shift] singular \"flourishes\" misaligns with the plural subject in this inverted finite-verb position."},{"id":"B","text":"flourish","is_correct":false,"explanation":"[Proximity Decoy] plural \"flourish\" tracks the nearer plural noun but breaks inverted agreement with the true subject after the blank."},{"id":"C","text":"thrive","is_correct":true,"explanation":"Correct: \"thrive\" satisfies Standard English conventions for this blank."},{"id":"D","text":"thrives","is_correct":false,"explanation":"[Dangling Modifier] singular \"thrives\" agrees with a nearby singular noun in the opening phrase, not the plural subject \"vast colonies of chemosynthetic archaea.\""}]'::jsonb, 'C', 'Step 1 — Unpack inverted syntax
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
VALUES ('329cc790-17f5-4582-bffb-3d61b55c503a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. Neither the lead engineer nor the junior technicians who assembled the prototype overnight ______ able to explain why the sensor failed during the final calibration test. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical.', 'passage', '[{"id":"A","text":"was","is_correct":false,"explanation":"[Dangling Modifier] singular \"was\" agrees with \"engineer,\" the farther noun, instead of the nearer plural \"technicians.\""},{"id":"B","text":"has","is_correct":false,"explanation":"[Tense Shift] singular present perfect misaligns with the plural nearer subject and past context."},{"id":"C","text":"is","is_correct":false,"explanation":"[Proximity Decoy] present tense breaks the past narrative established by \"assembled\" and \"failed.\""},{"id":"D","text":"were","is_correct":true,"explanation":"Correct: \"were\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Apply the neither/nor rule
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
VALUES ('2519d7c4-bdf3-4da5-bdc9-dff17befedf5', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying ecology at mangrove restoration plots have documented how seedling survival rates shape broader conclusions. Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that rising carbon dioxide forced many deciduous species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them.', 'passage', '[{"id":"A","text":"flourished","is_correct":true,"explanation":"Correct: \"flourished\" satisfies Standard English conventions for this blank."},{"id":"B","text":"flourishes","is_correct":false,"explanation":"[Proximity Decoy] singular present breaks both the plural subject and the historical past timeline."},{"id":"C","text":"flourish","is_correct":false,"explanation":"[Dangling Modifier] present \"flourish\" tracks the nearby plural \"populations\" but breaks the past epoch established by \"argued,\" \"forced,\" and \"went.\""},{"id":"D","text":"thrives","is_correct":false,"explanation":"[Tense Shift] present \"thrives\" introduces a dangling-style mismatch with the historical past frame of the passage."}]'::jsonb, 'A', 'Step 1 — Match subject and timeline
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
VALUES ('c8c29ce5-682d-4e21-8312-12431eb60301', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. Nestled deep within the highly pressurized geothermal vents of the mid-ocean ridge, where temperatures can exceed $400^\circ\text{C}$, ______ vast colonies of chemosynthetic archaea, which survive without sunlight by exploiting chemical gradients along the ocean floor. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage.', 'passage', '[{"id":"A","text":"flourishes","is_correct":false,"explanation":"[Tense Shift] singular \"flourishes\" misaligns with the plural subject in this inverted finite-verb position."},{"id":"B","text":"thrive","is_correct":true,"explanation":"Correct: \"thrive\" satisfies Standard English conventions for this blank."},{"id":"C","text":"flourish","is_correct":false,"explanation":"[Proximity Decoy] plural \"flourish\" tracks the nearer plural noun but breaks inverted agreement with the true subject after the blank."},{"id":"D","text":"thrives","is_correct":false,"explanation":"[Dangling Modifier] singular \"thrives\" agrees with a nearby singular noun in the opening phrase, not the plural subject \"vast colonies of chemosynthetic archaea.\""}]'::jsonb, 'B', 'Step 1 — Unpack inverted syntax
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
VALUES ('b83aaeae-a47d-407d-8798-9fd1873dda80', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying ecology at mangrove restoration plots have documented how seedling survival rates shape broader conclusions. Neither the lead engineer nor the junior technicians who assembled the prototype overnight ______ able to explain why the sensor failed during the final calibration test. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids.', 'passage', '[{"id":"A","text":"was","is_correct":false,"explanation":"[Dangling Modifier] singular \"was\" agrees with \"engineer,\" the farther noun, instead of the nearer plural \"technicians.\""},{"id":"B","text":"has","is_correct":false,"explanation":"[Tense Shift] singular present perfect misaligns with the plural nearer subject and past context."},{"id":"C","text":"were","is_correct":true,"explanation":"Correct: \"were\" satisfies Standard English conventions for this blank."},{"id":"D","text":"is","is_correct":false,"explanation":"[Proximity Decoy] present tense breaks the past narrative established by \"assembled\" and \"failed.\""}]'::jsonb, 'C', 'Step 1 — Apply the neither/nor rule
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
VALUES ('3baee6a6-e28f-4fbd-94c8-b3666dbcec51', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that rising carbon dioxide forced many deciduous species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled.', 'passage', '[{"id":"A","text":"flourishes","is_correct":false,"explanation":"[Proximity Decoy] singular present breaks both the plural subject and the historical past timeline."},{"id":"B","text":"flourish","is_correct":false,"explanation":"[Dangling Modifier] present \"flourish\" tracks the nearby plural \"populations\" but breaks the past epoch established by \"argued,\" \"forced,\" and \"went.\""},{"id":"C","text":"thrives","is_correct":false,"explanation":"[Tense Shift] present \"thrives\" introduces a dangling-style mismatch with the historical past frame of the passage."},{"id":"D","text":"flourished","is_correct":true,"explanation":"Correct: \"flourished\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Match subject and timeline
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
VALUES ('86e03629-af99-40e9-a628-e1ad6d5e39ee', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying ecology at mangrove restoration plots have documented how seedling survival rates shape broader conclusions. Nestled deep within the highly pressurized geothermal vents of the mid-ocean ridge, where temperatures can exceed $400^\circ\text{C}$, ______ vast colonies of chemosynthetic archaea, which survive without sunlight by exploiting chemical gradients along the ocean floor. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them.', 'passage', '[{"id":"A","text":"thrive","is_correct":true,"explanation":"Correct: \"thrive\" satisfies Standard English conventions for this blank."},{"id":"B","text":"flourishes","is_correct":false,"explanation":"[Tense Shift] singular \"flourishes\" misaligns with the plural subject in this inverted finite-verb position."},{"id":"C","text":"flourish","is_correct":false,"explanation":"[Proximity Decoy] plural \"flourish\" tracks the nearer plural noun but breaks inverted agreement with the true subject after the blank."},{"id":"D","text":"thrives","is_correct":false,"explanation":"[Dangling Modifier] singular \"thrives\" agrees with a nearby singular noun in the opening phrase, not the plural subject \"vast colonies of chemosynthetic archaea.\""}]'::jsonb, 'A', 'Step 1 — Unpack inverted syntax
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
VALUES ('bc0feafc-c1f3-4902-8f68-300c8db45776', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. Neither the lead engineer nor the junior technicians who assembled the prototype overnight ______ able to explain why the sensor failed during the final calibration test. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice.', 'passage', '[{"id":"A","text":"was","is_correct":false,"explanation":"[Dangling Modifier] singular \"was\" agrees with \"engineer,\" the farther noun, instead of the nearer plural \"technicians.\""},{"id":"B","text":"were","is_correct":true,"explanation":"Correct: \"were\" satisfies Standard English conventions for this blank."},{"id":"C","text":"has","is_correct":false,"explanation":"[Tense Shift] singular present perfect misaligns with the plural nearer subject and past context."},{"id":"D","text":"is","is_correct":false,"explanation":"[Proximity Decoy] present tense breaks the past narrative established by \"assembled\" and \"failed.\""}]'::jsonb, 'B', 'Step 1 — Apply the neither/nor rule
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
VALUES ('8c64f3d3-740c-4932-8bb3-90f80b755e2a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying paleoclimatology at Antarctic ice-core laboratories have documented how sulfate spike layers shape broader conclusions. Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that rising carbon dioxide forced many deciduous species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct. Stakeholders should weigh the evidence against limitations the researchers document throughout the study.', 'passage', '[{"id":"A","text":"flourishes","is_correct":false,"explanation":"[Proximity Decoy] singular present breaks both the plural subject and the historical past timeline."},{"id":"B","text":"flourish","is_correct":false,"explanation":"[Dangling Modifier] present \"flourish\" tracks the nearby plural \"populations\" but breaks the past epoch established by \"argued,\" \"forced,\" and \"went.\""},{"id":"C","text":"flourished","is_correct":true,"explanation":"Correct: \"flourished\" satisfies Standard English conventions for this blank."},{"id":"D","text":"thrives","is_correct":false,"explanation":"[Tense Shift] present \"thrives\" introduces a dangling-style mismatch with the historical past frame of the passage."}]'::jsonb, 'C', 'Step 1 — Match subject and timeline
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
VALUES ('605aa7b1-7af1-4c50-8cb9-b1d1b0063900', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. Nestled deep within the highly pressurized geothermal vents of the mid-ocean ridge, where temperatures can exceed $400^\circ\text{C}$, ______ vast colonies of chemosynthetic archaea, which survive without sunlight by exploiting chemical gradients along the ocean floor. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled.', 'passage', '[{"id":"A","text":"flourishes","is_correct":false,"explanation":"[Tense Shift] singular \"flourishes\" misaligns with the plural subject in this inverted finite-verb position."},{"id":"B","text":"flourish","is_correct":false,"explanation":"[Proximity Decoy] plural \"flourish\" tracks the nearer plural noun but breaks inverted agreement with the true subject after the blank."},{"id":"C","text":"thrives","is_correct":false,"explanation":"[Dangling Modifier] singular \"thrives\" agrees with a nearby singular noun in the opening phrase, not the plural subject \"vast colonies of chemosynthetic archaea.\""},{"id":"D","text":"thrive","is_correct":true,"explanation":"Correct: \"thrive\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Unpack inverted syntax
The true subject {{yellow:vast colonies of chemosynthetic archaea}} follows the blank in an inverted construction.

Step 2 — Agree in number
Plural subject requires the plural finite verb form.

Step 3 — Select the grammatical option
Choice D (thrive) is grammatically correct.

Distractor analysis:
- A: [Tense Shift] singular "flourishes" misaligns with the plural subject in this inverted finite-verb position.
- B: [Proximity Decoy] plural "flourish" tracks the nearer plural noun but breaks inverted agreement with the true subject after the blank.
- C: [Dangling Modifier] singular "thrives" agrees with a nearby singular noun in the opening phrase, not the plural subject "vast colonies of chemosynthetic archaea."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
COMMIT;
