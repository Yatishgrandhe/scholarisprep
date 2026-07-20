BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('58f45070-af08-45ca-83e9-8aab74f2f2ee', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The number of applicants that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"has","is_correct":true,"explanation":"Correct: ''the number'' is singular."},{"id":"B","text":"have","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"were","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
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
VALUES ('77e748aa-5886-4b29-a227-427a92d8274e', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The collection of rare coins that the museum acquired last year ______ now on display in the east wing.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Singular ''collection'' takes ''is''."},{"id":"B","text":"are","is_correct":false,"explanation":"''are'' agrees with ''coins,'' not the subject."},{"id":"C","text":"were","is_correct":false,"explanation":"''were'' is plural and past."},{"id":"D","text":"have been","is_correct":false,"explanation":"''have been'' is plural."}]'::jsonb, 'A', 'Step 1 — Find the real subject
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
VALUES ('28433266-3dc4-477c-89e4-5453329ad94e', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'When a hummingbird hovers, it beats ______ wings up to fifty times per second, a feat that demands enormous energy.', 'passage', '[{"id":"A","text":"its","is_correct":true,"explanation":"Singular possessive for ''a hummingbird.''"},{"id":"B","text":"it''s","is_correct":false,"explanation":"''it''s'' means ''it is.''"},{"id":"C","text":"their","is_correct":false,"explanation":"''their'' is plural."},{"id":"D","text":"it","is_correct":false,"explanation":"''it'' is not possessive."}]'::jsonb, 'A', 'Step 1 — Identify the antecedent
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
VALUES ('5eda7b35-2a0e-4f23-9e6c-8a3ed39fe0b9', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'A series of lectures that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Correct: ''series'' as subject is singular here."},{"id":"B","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"were","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"have been","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
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
VALUES ('b5c3d49b-ff5b-46d5-8ce3-9313fb8fbcb3', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The collection of rare coins that the museum acquired last year ______ now on display in the east wing.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Singular ''collection'' takes ''is''."},{"id":"B","text":"are","is_correct":false,"explanation":"''are'' agrees with ''coins,'' not the subject."},{"id":"C","text":"were","is_correct":false,"explanation":"''were'' is plural and past."},{"id":"D","text":"have been","is_correct":false,"explanation":"''have been'' is plural."}]'::jsonb, 'A', 'Step 1 — Find the real subject
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
VALUES ('3dab9ff2-08f8-41ea-938a-202ef0a808e9', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'When a hummingbird hovers, it beats ______ wings up to fifty times per second, a feat that demands enormous energy.', 'passage', '[{"id":"A","text":"its","is_correct":true,"explanation":"Singular possessive for ''a hummingbird.''"},{"id":"B","text":"it''s","is_correct":false,"explanation":"''it''s'' means ''it is.''"},{"id":"C","text":"their","is_correct":false,"explanation":"''their'' is plural."},{"id":"D","text":"it","is_correct":false,"explanation":"''it'' is not possessive."}]'::jsonb, 'A', 'Step 1 — Identify the antecedent
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
VALUES ('24834e53-9989-45c7-93ed-0245c487e46e', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The bundle of manuscripts that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"was","is_correct":true,"explanation":"Correct: singular collective subject."},{"id":"B","text":"were","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"have been","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
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
VALUES ('7fe72af7-649a-45e3-9b9c-a6a4a87aa7c3', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The collection of rare coins that the museum acquired last year ______ now on display in the east wing.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Singular ''collection'' takes ''is''."},{"id":"B","text":"are","is_correct":false,"explanation":"''are'' agrees with ''coins,'' not the subject."},{"id":"C","text":"were","is_correct":false,"explanation":"''were'' is plural and past."},{"id":"D","text":"have been","is_correct":false,"explanation":"''have been'' is plural."}]'::jsonb, 'A', 'Step 1 — Find the real subject
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
VALUES ('3fd2ab0f-96b8-4379-9e14-ed416a0d60aa', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'When a hummingbird hovers, it beats ______ wings up to fifty times per second, a feat that demands enormous energy.', 'passage', '[{"id":"A","text":"its","is_correct":true,"explanation":"Singular possessive for ''a hummingbird.''"},{"id":"B","text":"it''s","is_correct":false,"explanation":"''it''s'' means ''it is.''"},{"id":"C","text":"their","is_correct":false,"explanation":"''their'' is plural."},{"id":"D","text":"it","is_correct":false,"explanation":"''it'' is not possessive."}]'::jsonb, 'A', 'Step 1 — Identify the antecedent
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
VALUES ('b3979ff9-1d86-48d0-90dc-b2d315e13db4', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The panel of experts that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"has","is_correct":true,"explanation":"Correct: singular collective subject."},{"id":"B","text":"have","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"had","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"are having","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
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
VALUES ('4411f3bb-3d62-4212-a7a1-b9ebb4d53ce4', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The collection of rare coins that the museum acquired last year ______ now on display in the east wing.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Singular ''collection'' takes ''is''."},{"id":"B","text":"are","is_correct":false,"explanation":"''are'' agrees with ''coins,'' not the subject."},{"id":"C","text":"were","is_correct":false,"explanation":"''were'' is plural and past."},{"id":"D","text":"have been","is_correct":false,"explanation":"''have been'' is plural."}]'::jsonb, 'A', 'Step 1 — Find the real subject
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
VALUES ('1fad7412-b249-4d78-bfd7-cbbba6570645', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'When a hummingbird hovers, it beats ______ wings up to fifty times per second, a feat that demands enormous energy.', 'passage', '[{"id":"A","text":"its","is_correct":true,"explanation":"Singular possessive for ''a hummingbird.''"},{"id":"B","text":"it''s","is_correct":false,"explanation":"''it''s'' means ''it is.''"},{"id":"C","text":"their","is_correct":false,"explanation":"''their'' is plural."},{"id":"D","text":"it","is_correct":false,"explanation":"''it'' is not possessive."}]'::jsonb, 'A', 'Step 1 — Identify the antecedent
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
VALUES ('34e92c96-5370-4aff-8134-02c11ea817bf', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Each of the volunteers that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"was","is_correct":true,"explanation":"Correct: ''each'' is singular."},{"id":"B","text":"were","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"have been","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
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
VALUES ('2442e40f-b019-4972-962c-90a7714781fc', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The collection of rare coins that the museum acquired last year ______ now on display in the east wing.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Singular ''collection'' takes ''is''."},{"id":"B","text":"are","is_correct":false,"explanation":"''are'' agrees with ''coins,'' not the subject."},{"id":"C","text":"were","is_correct":false,"explanation":"''were'' is plural and past."},{"id":"D","text":"have been","is_correct":false,"explanation":"''have been'' is plural."}]'::jsonb, 'A', 'Step 1 — Find the real subject
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
VALUES ('dccdcfbb-2015-4673-96c1-9483d7415322', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'When a hummingbird hovers, it beats ______ wings up to fifty times per second, a feat that demands enormous energy.', 'passage', '[{"id":"A","text":"its","is_correct":true,"explanation":"Singular possessive for ''a hummingbird.''"},{"id":"B","text":"it''s","is_correct":false,"explanation":"''it''s'' means ''it is.''"},{"id":"C","text":"their","is_correct":false,"explanation":"''their'' is plural."},{"id":"D","text":"it","is_correct":false,"explanation":"''it'' is not possessive."}]'::jsonb, 'A', 'Step 1 — Identify the antecedent
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
