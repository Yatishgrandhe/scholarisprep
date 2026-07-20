BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('719684b6-083b-4ecf-a111-6da31f59fa59', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'A series of lectures that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Correct: ''series'' as subject is singular here."},{"id":"B","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"were","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"have been","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:A series of lectures}}; ''series'' as subject is singular here.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (is) is correct.

Distractor analysis:
- B: ''are'' does not agree.
- C: ''were'' does not agree.
- D: ''have been'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d22b16db-f993-4c7c-aa9c-1df356e1bd05', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Neither the lead engineer nor the junior technicians who assembled the prototype ______ able to explain why the sensor failed during the final test.', 'passage', '[{"id":"A","text":"were","is_correct":true,"explanation":"Verb agrees with nearer plural subject ''technicians.''"},{"id":"B","text":"was","is_correct":false,"explanation":"''was'' would agree with singular subject only."},{"id":"C","text":"is","is_correct":false,"explanation":"''is'' is singular present."},{"id":"D","text":"has been","is_correct":false,"explanation":"''has been'' is singular."}]'::jsonb, 'A', 'Step 1 — Apply the neither/nor rule
With {{yellow:Neither the lead engineer nor the junior technicians}}, the verb agrees with the nearer subject.

Step 2 — Check the nearer subject
''Technicians'' is plural, so the plural verb ''were'' is required.

Step 3 — Select the grammatical option
Choice A (were) agrees with the nearer plural subject.

Distractor analysis:
- B: ''was'' agrees with a singular subject, not the nearer plural one.
- C: ''is'' is singular present.
- D: ''has been'' is singular.', 'With ''neither...nor,'' the verb matches the subject nearest to it.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a2aeaa2b-f112-4155-85e1-0fc912b0f776', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that the sudden surge in atmospheric carbon dioxide forced many deciduous plant species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct.', 'passage', '[{"id":"A","text":"flourished","is_correct":true,"explanation":"Past tense aligns with ''argued,'' ''forced,'' ''went.''"},{"id":"B","text":"flourish","is_correct":false,"explanation":"Present tense breaks historical context."},{"id":"C","text":"flourishing","is_correct":false,"explanation":"Participle cannot be the main finite verb."},{"id":"D","text":"will flourish","is_correct":false,"explanation":"Future tense is inconsistent with the epoch described."}]'::jsonb, 'A', 'Step 1 — Match subject and timeline
The passage establishes a past historical context with {{yellow:argued, forced, went}}.

Step 2 — Use the right tense
Populations that survived did so in the same past epoch, requiring past tense ''flourished.''

Step 3 — Select the grammatical option
Choice A (flourished) maintains tense consistency.

Distractor analysis:
- B: ''flourish'' is present.
- C: ''flourishing'' is not a finite verb.
- D: ''will flourish'' is future.', 'The entire passage describes a past epoch — which verb form fits?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('43efda0a-9965-440b-95f0-7ab70ee3a294', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The number of applicants that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"has","is_correct":true,"explanation":"Correct: ''the number'' is singular."},{"id":"B","text":"have","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"were","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The number of applicants}}; ''the number'' is singular.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (has) is correct.

Distractor analysis:
- B: ''have'' does not agree.
- C: ''are'' does not agree.
- D: ''were'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1d35bc18-6822-4fde-8d7e-cdb4736684bd', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Neither the lead engineer nor the junior technicians who assembled the prototype ______ able to explain why the sensor failed during the final test.', 'passage', '[{"id":"A","text":"were","is_correct":true,"explanation":"Verb agrees with nearer plural subject ''technicians.''"},{"id":"B","text":"was","is_correct":false,"explanation":"''was'' would agree with singular subject only."},{"id":"C","text":"is","is_correct":false,"explanation":"''is'' is singular present."},{"id":"D","text":"has been","is_correct":false,"explanation":"''has been'' is singular."}]'::jsonb, 'A', 'Step 1 — Apply the neither/nor rule
With {{yellow:Neither the lead engineer nor the junior technicians}}, the verb agrees with the nearer subject.

Step 2 — Check the nearer subject
''Technicians'' is plural, so the plural verb ''were'' is required.

Step 3 — Select the grammatical option
Choice A (were) agrees with the nearer plural subject.

Distractor analysis:
- B: ''was'' agrees with a singular subject, not the nearer plural one.
- C: ''is'' is singular present.
- D: ''has been'' is singular.', 'With ''neither...nor,'' the verb matches the subject nearest to it.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('971f67d6-9ce2-4d6f-b030-2fd34882b791', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that the sudden surge in atmospheric carbon dioxide forced many deciduous plant species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct.', 'passage', '[{"id":"A","text":"flourished","is_correct":true,"explanation":"Past tense aligns with ''argued,'' ''forced,'' ''went.''"},{"id":"B","text":"flourish","is_correct":false,"explanation":"Present tense breaks historical context."},{"id":"C","text":"flourishing","is_correct":false,"explanation":"Participle cannot be the main finite verb."},{"id":"D","text":"will flourish","is_correct":false,"explanation":"Future tense is inconsistent with the epoch described."}]'::jsonb, 'A', 'Step 1 — Match subject and timeline
The passage establishes a past historical context with {{yellow:argued, forced, went}}.

Step 2 — Use the right tense
Populations that survived did so in the same past epoch, requiring past tense ''flourished.''

Step 3 — Select the grammatical option
Choice A (flourished) maintains tense consistency.

Distractor analysis:
- B: ''flourish'' is present.
- C: ''flourishing'' is not a finite verb.
- D: ''will flourish'' is future.', 'The entire passage describes a past epoch — which verb form fits?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8dbcc2da-dfe8-4122-b2bd-02d2a8e750e8', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Each of the volunteers that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"was","is_correct":true,"explanation":"Correct: ''each'' is singular."},{"id":"B","text":"were","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"have been","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:Each of the volunteers}}; ''each'' is singular.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (was) is correct.

Distractor analysis:
- B: ''were'' does not agree.
- C: ''are'' does not agree.
- D: ''have been'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0200073e-484a-448e-bf01-3852237e7446', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Neither the lead engineer nor the junior technicians who assembled the prototype ______ able to explain why the sensor failed during the final test.', 'passage', '[{"id":"A","text":"were","is_correct":true,"explanation":"Verb agrees with nearer plural subject ''technicians.''"},{"id":"B","text":"was","is_correct":false,"explanation":"''was'' would agree with singular subject only."},{"id":"C","text":"is","is_correct":false,"explanation":"''is'' is singular present."},{"id":"D","text":"has been","is_correct":false,"explanation":"''has been'' is singular."}]'::jsonb, 'A', 'Step 1 — Apply the neither/nor rule
With {{yellow:Neither the lead engineer nor the junior technicians}}, the verb agrees with the nearer subject.

Step 2 — Check the nearer subject
''Technicians'' is plural, so the plural verb ''were'' is required.

Step 3 — Select the grammatical option
Choice A (were) agrees with the nearer plural subject.

Distractor analysis:
- B: ''was'' agrees with a singular subject, not the nearer plural one.
- C: ''is'' is singular present.
- D: ''has been'' is singular.', 'With ''neither...nor,'' the verb matches the subject nearest to it.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5b512dce-2fcd-4fcc-9873-9c91804b7f08', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that the sudden surge in atmospheric carbon dioxide forced many deciduous plant species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct.', 'passage', '[{"id":"A","text":"flourished","is_correct":true,"explanation":"Past tense aligns with ''argued,'' ''forced,'' ''went.''"},{"id":"B","text":"flourish","is_correct":false,"explanation":"Present tense breaks historical context."},{"id":"C","text":"flourishing","is_correct":false,"explanation":"Participle cannot be the main finite verb."},{"id":"D","text":"will flourish","is_correct":false,"explanation":"Future tense is inconsistent with the epoch described."}]'::jsonb, 'A', 'Step 1 — Match subject and timeline
The passage establishes a past historical context with {{yellow:argued, forced, went}}.

Step 2 — Use the right tense
Populations that survived did so in the same past epoch, requiring past tense ''flourished.''

Step 3 — Select the grammatical option
Choice A (flourished) maintains tense consistency.

Distractor analysis:
- B: ''flourish'' is present.
- C: ''flourishing'' is not a finite verb.
- D: ''will flourish'' is future.', 'The entire passage describes a past epoch — which verb form fits?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('62520457-89cb-4e8c-9739-085fe29f090c', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The panel of experts that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"has","is_correct":true,"explanation":"Correct: singular collective subject."},{"id":"B","text":"have","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"had","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"are having","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The panel of experts}}; singular collective subject.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (has) is correct.

Distractor analysis:
- B: ''have'' does not agree.
- C: ''had'' does not agree.
- D: ''are having'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f30cabb9-096c-4e09-bb72-26bacc7013e7', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Neither the lead engineer nor the junior technicians who assembled the prototype ______ able to explain why the sensor failed during the final test.', 'passage', '[{"id":"A","text":"were","is_correct":true,"explanation":"Verb agrees with nearer plural subject ''technicians.''"},{"id":"B","text":"was","is_correct":false,"explanation":"''was'' would agree with singular subject only."},{"id":"C","text":"is","is_correct":false,"explanation":"''is'' is singular present."},{"id":"D","text":"has been","is_correct":false,"explanation":"''has been'' is singular."}]'::jsonb, 'A', 'Step 1 — Apply the neither/nor rule
With {{yellow:Neither the lead engineer nor the junior technicians}}, the verb agrees with the nearer subject.

Step 2 — Check the nearer subject
''Technicians'' is plural, so the plural verb ''were'' is required.

Step 3 — Select the grammatical option
Choice A (were) agrees with the nearer plural subject.

Distractor analysis:
- B: ''was'' agrees with a singular subject, not the nearer plural one.
- C: ''is'' is singular present.
- D: ''has been'' is singular.', 'With ''neither...nor,'' the verb matches the subject nearest to it.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('80981374-3b70-41f8-92e4-b9f5958dc01a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that the sudden surge in atmospheric carbon dioxide forced many deciduous plant species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct.', 'passage', '[{"id":"A","text":"flourished","is_correct":true,"explanation":"Past tense aligns with ''argued,'' ''forced,'' ''went.''"},{"id":"B","text":"flourish","is_correct":false,"explanation":"Present tense breaks historical context."},{"id":"C","text":"flourishing","is_correct":false,"explanation":"Participle cannot be the main finite verb."},{"id":"D","text":"will flourish","is_correct":false,"explanation":"Future tense is inconsistent with the epoch described."}]'::jsonb, 'A', 'Step 1 — Match subject and timeline
The passage establishes a past historical context with {{yellow:argued, forced, went}}.

Step 2 — Use the right tense
Populations that survived did so in the same past epoch, requiring past tense ''flourished.''

Step 3 — Select the grammatical option
Choice A (flourished) maintains tense consistency.

Distractor analysis:
- B: ''flourish'' is present.
- C: ''flourishing'' is not a finite verb.
- D: ''will flourish'' is future.', 'The entire passage describes a past epoch — which verb form fits?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a1424385-e59b-48b8-8fd3-9782cba69b69', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The bundle of manuscripts that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"was","is_correct":true,"explanation":"Correct: singular collective subject."},{"id":"B","text":"were","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"have been","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The bundle of manuscripts}}; singular collective subject.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (was) is correct.

Distractor analysis:
- B: ''were'' does not agree.
- C: ''are'' does not agree.
- D: ''have been'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('96dd6f15-2c4c-4e00-96c3-676100c0cc88', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Neither the lead engineer nor the junior technicians who assembled the prototype ______ able to explain why the sensor failed during the final test.', 'passage', '[{"id":"A","text":"were","is_correct":true,"explanation":"Verb agrees with nearer plural subject ''technicians.''"},{"id":"B","text":"was","is_correct":false,"explanation":"''was'' would agree with singular subject only."},{"id":"C","text":"is","is_correct":false,"explanation":"''is'' is singular present."},{"id":"D","text":"has been","is_correct":false,"explanation":"''has been'' is singular."}]'::jsonb, 'A', 'Step 1 — Apply the neither/nor rule
With {{yellow:Neither the lead engineer nor the junior technicians}}, the verb agrees with the nearer subject.

Step 2 — Check the nearer subject
''Technicians'' is plural, so the plural verb ''were'' is required.

Step 3 — Select the grammatical option
Choice A (were) agrees with the nearer plural subject.

Distractor analysis:
- B: ''was'' agrees with a singular subject, not the nearer plural one.
- C: ''is'' is singular present.
- D: ''has been'' is singular.', 'With ''neither...nor,'' the verb matches the subject nearest to it.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6262a94b-aabe-45e3-b734-ff9317da56df', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that the sudden surge in atmospheric carbon dioxide forced many deciduous plant species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct.', 'passage', '[{"id":"A","text":"flourished","is_correct":true,"explanation":"Past tense aligns with ''argued,'' ''forced,'' ''went.''"},{"id":"B","text":"flourish","is_correct":false,"explanation":"Present tense breaks historical context."},{"id":"C","text":"flourishing","is_correct":false,"explanation":"Participle cannot be the main finite verb."},{"id":"D","text":"will flourish","is_correct":false,"explanation":"Future tense is inconsistent with the epoch described."}]'::jsonb, 'A', 'Step 1 — Match subject and timeline
The passage establishes a past historical context with {{yellow:argued, forced, went}}.

Step 2 — Use the right tense
Populations that survived did so in the same past epoch, requiring past tense ''flourished.''

Step 3 — Select the grammatical option
Choice A (flourished) maintains tense consistency.

Distractor analysis:
- B: ''flourish'' is present.
- C: ''flourishing'' is not a finite verb.
- D: ''will flourish'' is future.', 'The entire passage describes a past epoch — which verb form fits?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
