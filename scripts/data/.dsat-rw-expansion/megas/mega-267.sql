BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('75ca6855-1c66-4176-9cac-f0cb81c10322', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The number of applicants that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"has","is_correct":true,"explanation":"Correct: ''the number'' is singular."},{"id":"B","text":"have","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"were","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The number of applicants}}; ''the number'' is singular.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (has) is correct.

Distractor analysis:
- B: ''have'' does not agree.
- C: ''are'' does not agree.
- D: ''were'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1d1fcd5a-941b-4ea8-9aa4-a2fc3b86402d', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The collection of rare coins that the museum acquired last year ______ now on display in the east wing.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Singular ''collection'' takes ''is''."},{"id":"B","text":"are","is_correct":false,"explanation":"''are'' agrees with ''coins,'' not the subject."},{"id":"C","text":"were","is_correct":false,"explanation":"''were'' is plural and past."},{"id":"D","text":"have been","is_correct":false,"explanation":"''have been'' is plural."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The collection of rare coins}}; ''collection'' is singular.

Step 2 — Match the verb
A singular subject takes the singular verb ''is,'' fitting the present cue ''now.''

Step 3 — Select the grammatical option
Choice A (is) agrees with the singular subject.

Distractor analysis:
- B: ''are'' wrongly agrees with ''coins.''
- C: ''were'' is plural and past.
- D: ''have been'' is plural.', 'Ignore ''of rare coins'' — is the subject singular or plural?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ca749efb-b4b9-4896-9796-ad6e0d41677c', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'When a hummingbird hovers, it beats ______ wings up to fifty times per second, a feat that demands enormous energy.', 'passage', '[{"id":"A","text":"its","is_correct":true,"explanation":"Singular possessive for ''a hummingbird.''"},{"id":"B","text":"it''s","is_correct":false,"explanation":"''it''s'' means ''it is.''"},{"id":"C","text":"their","is_correct":false,"explanation":"''their'' is plural."},{"id":"D","text":"it","is_correct":false,"explanation":"''it'' is not possessive."}]'::jsonb, 'A', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a hummingbird}}, which is singular.

Step 2 — Choose the possessive
The singular possessive ''its'' modifies ''wings.''

Step 3 — Select the grammatical option
Choice A (its) is the correct possessive.

Distractor analysis:
- B: ''it''s'' is the contraction ''it is.''
- C: ''their'' is plural.
- D: ''it'' is not possessive.', 'Singular bird + possession of wings — which form shows ownership?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8b966db3-f9c1-4d1a-95cf-27ee1e675c30', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'A series of lectures that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Correct: ''series'' as subject is singular here."},{"id":"B","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"were","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"have been","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:A series of lectures}}; ''series'' as subject is singular here.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (is) is correct.

Distractor analysis:
- B: ''are'' does not agree.
- C: ''were'' does not agree.
- D: ''have been'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('08facab3-81e5-4837-848d-a8e1ed9cef22', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The collection of rare coins that the museum acquired last year ______ now on display in the east wing.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Singular ''collection'' takes ''is''."},{"id":"B","text":"are","is_correct":false,"explanation":"''are'' agrees with ''coins,'' not the subject."},{"id":"C","text":"were","is_correct":false,"explanation":"''were'' is plural and past."},{"id":"D","text":"have been","is_correct":false,"explanation":"''have been'' is plural."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The collection of rare coins}}; ''collection'' is singular.

Step 2 — Match the verb
A singular subject takes the singular verb ''is,'' fitting the present cue ''now.''

Step 3 — Select the grammatical option
Choice A (is) agrees with the singular subject.

Distractor analysis:
- B: ''are'' wrongly agrees with ''coins.''
- C: ''were'' is plural and past.
- D: ''have been'' is plural.', 'Ignore ''of rare coins'' — is the subject singular or plural?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('613fda00-7332-495a-aac5-c75a275bd54e', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'When a hummingbird hovers, it beats ______ wings up to fifty times per second, a feat that demands enormous energy.', 'passage', '[{"id":"A","text":"its","is_correct":true,"explanation":"Singular possessive for ''a hummingbird.''"},{"id":"B","text":"it''s","is_correct":false,"explanation":"''it''s'' means ''it is.''"},{"id":"C","text":"their","is_correct":false,"explanation":"''their'' is plural."},{"id":"D","text":"it","is_correct":false,"explanation":"''it'' is not possessive."}]'::jsonb, 'A', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a hummingbird}}, which is singular.

Step 2 — Choose the possessive
The singular possessive ''its'' modifies ''wings.''

Step 3 — Select the grammatical option
Choice A (its) is the correct possessive.

Distractor analysis:
- B: ''it''s'' is the contraction ''it is.''
- C: ''their'' is plural.
- D: ''it'' is not possessive.', 'Singular bird + possession of wings — which form shows ownership?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9bfcb48d-e9ae-45eb-b9c5-c8e52ea8fedc', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The bundle of manuscripts that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"was","is_correct":true,"explanation":"Correct: singular collective subject."},{"id":"B","text":"were","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"have been","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The bundle of manuscripts}}; singular collective subject.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (was) is correct.

Distractor analysis:
- B: ''were'' does not agree.
- C: ''are'' does not agree.
- D: ''have been'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b9c7991f-cbbe-4870-950f-922ab0cd49fc', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The collection of rare coins that the museum acquired last year ______ now on display in the east wing.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Singular ''collection'' takes ''is''."},{"id":"B","text":"are","is_correct":false,"explanation":"''are'' agrees with ''coins,'' not the subject."},{"id":"C","text":"were","is_correct":false,"explanation":"''were'' is plural and past."},{"id":"D","text":"have been","is_correct":false,"explanation":"''have been'' is plural."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The collection of rare coins}}; ''collection'' is singular.

Step 2 — Match the verb
A singular subject takes the singular verb ''is,'' fitting the present cue ''now.''

Step 3 — Select the grammatical option
Choice A (is) agrees with the singular subject.

Distractor analysis:
- B: ''are'' wrongly agrees with ''coins.''
- C: ''were'' is plural and past.
- D: ''have been'' is plural.', 'Ignore ''of rare coins'' — is the subject singular or plural?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c083ad0e-5db4-4819-ad31-8198db36f3f2', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'When a hummingbird hovers, it beats ______ wings up to fifty times per second, a feat that demands enormous energy.', 'passage', '[{"id":"A","text":"its","is_correct":true,"explanation":"Singular possessive for ''a hummingbird.''"},{"id":"B","text":"it''s","is_correct":false,"explanation":"''it''s'' means ''it is.''"},{"id":"C","text":"their","is_correct":false,"explanation":"''their'' is plural."},{"id":"D","text":"it","is_correct":false,"explanation":"''it'' is not possessive."}]'::jsonb, 'A', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a hummingbird}}, which is singular.

Step 2 — Choose the possessive
The singular possessive ''its'' modifies ''wings.''

Step 3 — Select the grammatical option
Choice A (its) is the correct possessive.

Distractor analysis:
- B: ''it''s'' is the contraction ''it is.''
- C: ''their'' is plural.
- D: ''it'' is not possessive.', 'Singular bird + possession of wings — which form shows ownership?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('36921709-840d-4063-a52a-046f66575744', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The panel of experts that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"has","is_correct":true,"explanation":"Correct: singular collective subject."},{"id":"B","text":"have","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"had","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"are having","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The panel of experts}}; singular collective subject.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (has) is correct.

Distractor analysis:
- B: ''have'' does not agree.
- C: ''had'' does not agree.
- D: ''are having'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7e4826a0-c5d3-41b9-947e-232221ede2a5', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The collection of rare coins that the museum acquired last year ______ now on display in the east wing.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Singular ''collection'' takes ''is''."},{"id":"B","text":"are","is_correct":false,"explanation":"''are'' agrees with ''coins,'' not the subject."},{"id":"C","text":"were","is_correct":false,"explanation":"''were'' is plural and past."},{"id":"D","text":"have been","is_correct":false,"explanation":"''have been'' is plural."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The collection of rare coins}}; ''collection'' is singular.

Step 2 — Match the verb
A singular subject takes the singular verb ''is,'' fitting the present cue ''now.''

Step 3 — Select the grammatical option
Choice A (is) agrees with the singular subject.

Distractor analysis:
- B: ''are'' wrongly agrees with ''coins.''
- C: ''were'' is plural and past.
- D: ''have been'' is plural.', 'Ignore ''of rare coins'' — is the subject singular or plural?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('14483c4f-15a1-4d4c-b3cf-febe1213ce5f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'When a hummingbird hovers, it beats ______ wings up to fifty times per second, a feat that demands enormous energy.', 'passage', '[{"id":"A","text":"its","is_correct":true,"explanation":"Singular possessive for ''a hummingbird.''"},{"id":"B","text":"it''s","is_correct":false,"explanation":"''it''s'' means ''it is.''"},{"id":"C","text":"their","is_correct":false,"explanation":"''their'' is plural."},{"id":"D","text":"it","is_correct":false,"explanation":"''it'' is not possessive."}]'::jsonb, 'A', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a hummingbird}}, which is singular.

Step 2 — Choose the possessive
The singular possessive ''its'' modifies ''wings.''

Step 3 — Select the grammatical option
Choice A (its) is the correct possessive.

Distractor analysis:
- B: ''it''s'' is the contraction ''it is.''
- C: ''their'' is plural.
- D: ''it'' is not possessive.', 'Singular bird + possession of wings — which form shows ownership?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e6a66637-1e0e-4554-8d38-31f1d0d39ce2', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Each of the volunteers that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"was","is_correct":true,"explanation":"Correct: ''each'' is singular."},{"id":"B","text":"were","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"have been","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:Each of the volunteers}}; ''each'' is singular.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (was) is correct.

Distractor analysis:
- B: ''were'' does not agree.
- C: ''are'' does not agree.
- D: ''have been'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7b6238f9-c19b-4943-b3af-c7a23b5bbac8', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The collection of rare coins that the museum acquired last year ______ now on display in the east wing.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Singular ''collection'' takes ''is''."},{"id":"B","text":"are","is_correct":false,"explanation":"''are'' agrees with ''coins,'' not the subject."},{"id":"C","text":"were","is_correct":false,"explanation":"''were'' is plural and past."},{"id":"D","text":"have been","is_correct":false,"explanation":"''have been'' is plural."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The collection of rare coins}}; ''collection'' is singular.

Step 2 — Match the verb
A singular subject takes the singular verb ''is,'' fitting the present cue ''now.''

Step 3 — Select the grammatical option
Choice A (is) agrees with the singular subject.

Distractor analysis:
- B: ''are'' wrongly agrees with ''coins.''
- C: ''were'' is plural and past.
- D: ''have been'' is plural.', 'Ignore ''of rare coins'' — is the subject singular or plural?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('568a589a-df1c-42b4-9682-2bf3ccd31632', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'When a hummingbird hovers, it beats ______ wings up to fifty times per second, a feat that demands enormous energy.', 'passage', '[{"id":"A","text":"its","is_correct":true,"explanation":"Singular possessive for ''a hummingbird.''"},{"id":"B","text":"it''s","is_correct":false,"explanation":"''it''s'' means ''it is.''"},{"id":"C","text":"their","is_correct":false,"explanation":"''their'' is plural."},{"id":"D","text":"it","is_correct":false,"explanation":"''it'' is not possessive."}]'::jsonb, 'A', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a hummingbird}}, which is singular.

Step 2 — Choose the possessive
The singular possessive ''its'' modifies ''wings.''

Step 3 — Select the grammatical option
Choice A (its) is the correct possessive.

Distractor analysis:
- B: ''it''s'' is the contraction ''it is.''
- C: ''their'' is plural.
- D: ''it'' is not possessive.', 'Singular bird + possession of wings — which form shows ownership?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
