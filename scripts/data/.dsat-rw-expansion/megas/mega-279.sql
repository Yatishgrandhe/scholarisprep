BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('95605705-24a4-407a-8bad-3357dca0d152', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'A series of lectures that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Correct: ''series'' as subject is singular here."},{"id":"B","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"were","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"have been","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
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
VALUES ('67ec03f1-da24-4cff-a25e-86533653767b', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Neither the lead engineer nor the junior technicians who assembled the prototype ______ able to explain why the sensor failed during the final test.', 'passage', '[{"id":"A","text":"were","is_correct":true,"explanation":"Verb agrees with nearer plural subject ''technicians.''"},{"id":"B","text":"was","is_correct":false,"explanation":"''was'' would agree with singular subject only."},{"id":"C","text":"is","is_correct":false,"explanation":"''is'' is singular present."},{"id":"D","text":"has been","is_correct":false,"explanation":"''has been'' is singular."}]'::jsonb, 'A', 'Step 1 — Apply the neither/nor rule
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
VALUES ('05d22aec-d465-435a-b5a7-6fabbdfc37fc', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that the sudden surge in atmospheric carbon dioxide forced many deciduous plant species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct.', 'passage', '[{"id":"A","text":"flourished","is_correct":true,"explanation":"Past tense aligns with ''argued,'' ''forced,'' ''went.''"},{"id":"B","text":"flourish","is_correct":false,"explanation":"Present tense breaks historical context."},{"id":"C","text":"flourishing","is_correct":false,"explanation":"Participle cannot be the main finite verb."},{"id":"D","text":"will flourish","is_correct":false,"explanation":"Future tense is inconsistent with the epoch described."}]'::jsonb, 'A', 'Step 1 — Match subject and timeline
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
VALUES ('56a76bdd-33ea-4293-9d35-b14e5b321706', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The number of applicants that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"has","is_correct":true,"explanation":"Correct: ''the number'' is singular."},{"id":"B","text":"have","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"were","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
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
VALUES ('ec43c63f-1784-4438-9e74-5a129c20c145', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Neither the lead engineer nor the junior technicians who assembled the prototype ______ able to explain why the sensor failed during the final test.', 'passage', '[{"id":"A","text":"were","is_correct":true,"explanation":"Verb agrees with nearer plural subject ''technicians.''"},{"id":"B","text":"was","is_correct":false,"explanation":"''was'' would agree with singular subject only."},{"id":"C","text":"is","is_correct":false,"explanation":"''is'' is singular present."},{"id":"D","text":"has been","is_correct":false,"explanation":"''has been'' is singular."}]'::jsonb, 'A', 'Step 1 — Apply the neither/nor rule
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
VALUES ('c7abf93d-b95a-4717-ada4-98cac75fe6fd', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that the sudden surge in atmospheric carbon dioxide forced many deciduous plant species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct.', 'passage', '[{"id":"A","text":"flourished","is_correct":true,"explanation":"Past tense aligns with ''argued,'' ''forced,'' ''went.''"},{"id":"B","text":"flourish","is_correct":false,"explanation":"Present tense breaks historical context."},{"id":"C","text":"flourishing","is_correct":false,"explanation":"Participle cannot be the main finite verb."},{"id":"D","text":"will flourish","is_correct":false,"explanation":"Future tense is inconsistent with the epoch described."}]'::jsonb, 'A', 'Step 1 — Match subject and timeline
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
VALUES ('4942166f-e5d5-49db-8b2c-e1a69155f5c4', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Each of the volunteers that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"was","is_correct":true,"explanation":"Correct: ''each'' is singular."},{"id":"B","text":"were","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"have been","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
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
VALUES ('8301e99d-08ec-4724-87d9-d5989229325b', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Neither the lead engineer nor the junior technicians who assembled the prototype ______ able to explain why the sensor failed during the final test.', 'passage', '[{"id":"A","text":"were","is_correct":true,"explanation":"Verb agrees with nearer plural subject ''technicians.''"},{"id":"B","text":"was","is_correct":false,"explanation":"''was'' would agree with singular subject only."},{"id":"C","text":"is","is_correct":false,"explanation":"''is'' is singular present."},{"id":"D","text":"has been","is_correct":false,"explanation":"''has been'' is singular."}]'::jsonb, 'A', 'Step 1 — Apply the neither/nor rule
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
VALUES ('d8ab78cf-5764-452d-be7e-16cb0d619248', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that the sudden surge in atmospheric carbon dioxide forced many deciduous plant species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct.', 'passage', '[{"id":"A","text":"flourished","is_correct":true,"explanation":"Past tense aligns with ''argued,'' ''forced,'' ''went.''"},{"id":"B","text":"flourish","is_correct":false,"explanation":"Present tense breaks historical context."},{"id":"C","text":"flourishing","is_correct":false,"explanation":"Participle cannot be the main finite verb."},{"id":"D","text":"will flourish","is_correct":false,"explanation":"Future tense is inconsistent with the epoch described."}]'::jsonb, 'A', 'Step 1 — Match subject and timeline
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
VALUES ('b1429bf2-3fb2-40fd-833f-13e5c0b5ce92', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The panel of experts that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"has","is_correct":true,"explanation":"Correct: singular collective subject."},{"id":"B","text":"have","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"had","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"are having","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
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
VALUES ('2342c543-b0bb-4be1-994e-33222c00e2a0', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Neither the lead engineer nor the junior technicians who assembled the prototype ______ able to explain why the sensor failed during the final test.', 'passage', '[{"id":"A","text":"were","is_correct":true,"explanation":"Verb agrees with nearer plural subject ''technicians.''"},{"id":"B","text":"was","is_correct":false,"explanation":"''was'' would agree with singular subject only."},{"id":"C","text":"is","is_correct":false,"explanation":"''is'' is singular present."},{"id":"D","text":"has been","is_correct":false,"explanation":"''has been'' is singular."}]'::jsonb, 'A', 'Step 1 — Apply the neither/nor rule
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
VALUES ('025d6727-8981-4d4d-b172-74bfeb6fa8cd', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that the sudden surge in atmospheric carbon dioxide forced many deciduous plant species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct.', 'passage', '[{"id":"A","text":"flourished","is_correct":true,"explanation":"Past tense aligns with ''argued,'' ''forced,'' ''went.''"},{"id":"B","text":"flourish","is_correct":false,"explanation":"Present tense breaks historical context."},{"id":"C","text":"flourishing","is_correct":false,"explanation":"Participle cannot be the main finite verb."},{"id":"D","text":"will flourish","is_correct":false,"explanation":"Future tense is inconsistent with the epoch described."}]'::jsonb, 'A', 'Step 1 — Match subject and timeline
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
VALUES ('6172030d-7063-4fec-8062-3ef2faca96f3', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The bundle of manuscripts that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"was","is_correct":true,"explanation":"Correct: singular collective subject."},{"id":"B","text":"were","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"have been","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
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
VALUES ('d0dd838d-37fc-4e37-a56a-6e06c22dc84b', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Neither the lead engineer nor the junior technicians who assembled the prototype ______ able to explain why the sensor failed during the final test.', 'passage', '[{"id":"A","text":"were","is_correct":true,"explanation":"Verb agrees with nearer plural subject ''technicians.''"},{"id":"B","text":"was","is_correct":false,"explanation":"''was'' would agree with singular subject only."},{"id":"C","text":"is","is_correct":false,"explanation":"''is'' is singular present."},{"id":"D","text":"has been","is_correct":false,"explanation":"''has been'' is singular."}]'::jsonb, 'A', 'Step 1 — Apply the neither/nor rule
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
VALUES ('c5c281ce-52e3-4f05-8e00-a46a7bff7772', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that the sudden surge in atmospheric carbon dioxide forced many deciduous plant species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct.', 'passage', '[{"id":"A","text":"flourished","is_correct":true,"explanation":"Past tense aligns with ''argued,'' ''forced,'' ''went.''"},{"id":"B","text":"flourish","is_correct":false,"explanation":"Present tense breaks historical context."},{"id":"C","text":"flourishing","is_correct":false,"explanation":"Participle cannot be the main finite verb."},{"id":"D","text":"will flourish","is_correct":false,"explanation":"Future tense is inconsistent with the epoch described."}]'::jsonb, 'A', 'Step 1 — Match subject and timeline
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
