BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bf41dd4b-803f-4a67-885e-c1de346ba6c2', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest library reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored reading room.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"A comma plus the coordinating conjunction ''and'' correctly joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone between two independent clauses creates a comma splice."},{"id":"C","text":"","is_correct":false,"explanation":"Running the two independent clauses together with no punctuation is a run-on (fused) sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without a preceding comma is incorrect when joining two independent clauses of this length."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
Both sides are independent: {{yellow:The city''s oldest library reopened last spring}} and ''thousands of visitors lined up.''
Step 2 — Join them correctly
Two independent clauses are joined with a comma plus a coordinating conjunction, so '', and'' is correct.

Step 3 — Confirm the answer
The correct choice satisfies Standard English conventions as analyzed above.

Distractor analysis:
- B: a lone comma makes a comma splice.
- C: no punctuation makes a run-on.
- D: ''and'' without the comma is nonstandard for clauses of this length.', 'Both halves could stand alone as sentences — how do you join two complete sentences?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-dsat-rw-expansion.mjs","original":true,"challenged_problem":true,"difficulty_tier":"challenged"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9e96223b-e642-45fa-8025-6bb4047dca16', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The collection of rare coins that the museum acquired last year ______ now on display in the east wing.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"The singular subject ''collection'' takes the singular verb ''is.''"},{"id":"B","text":"are","is_correct":false,"explanation":"''are'' agrees with ''coins,'' but the true subject is the singular ''collection.''"},{"id":"C","text":"were","is_correct":false,"explanation":"''were'' is both plural and past tense, conflicting with the singular subject and the present ''now.''"},{"id":"D","text":"have been","is_correct":false,"explanation":"''have been'' is plural and does not agree with the singular subject ''collection.''"}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The collection of rare coins}}; ''of rare coins'' is a prepositional phrase, and ''collection'' is singular.
Step 2 — Match the verb
A singular subject takes the singular verb ''is,'' which also fits the present-tense cue ''now.''

Step 3 — Confirm the answer
The correct choice satisfies Standard English conventions as analyzed above.

Distractor analysis:
- B: ''are'' wrongly agrees with ''coins.''
- C: ''were'' is plural and past tense.
- D: ''have been'' is plural.', 'Ignore ''of rare coins'' — what is the actual subject, and is it singular or plural?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-dsat-rw-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c6a7d68c-dcde-4376-a793-cb1a6ed67659', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'When a hummingbird hovers, it beats ______ wings up to fifty times per second, a feat that demands enormous energy.', 'passage', '[{"id":"A","text":"its","is_correct":true,"explanation":"''its'' is the singular possessive agreeing with the singular antecedent ''a hummingbird.''"},{"id":"B","text":"it''s","is_correct":false,"explanation":"''it''s'' means ''it is'' and cannot show possession."},{"id":"C","text":"their","is_correct":false,"explanation":"''their'' is plural and does not agree with the singular ''a hummingbird.''"},{"id":"D","text":"it","is_correct":false,"explanation":"''it'' is a subject/object pronoun, not the possessive needed before ''wings.''"}]'::jsonb, 'A', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a hummingbird}}, which is singular.
Step 2 — Choose the possessive
The singular possessive ''its'' correctly modifies ''wings.''

Step 3 — Confirm the answer
The correct choice satisfies Standard English conventions as analyzed above.

Distractor analysis:
- B: ''it''s'' is the contraction ''it is.''
- C: ''their'' is plural.
- D: ''it'' is not possessive.', 'Singular animal + possession of its wings — which form shows ownership?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-dsat-rw-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('25f54eaf-5769-4e6e-a5c8-d3b546884558', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'By the time the survey results were published, the research team ______ the same neighborhoods for nearly a decade, returning each spring to record changes.', 'passage', '[{"id":"A","text":"had studied","is_correct":true,"explanation":"The past perfect ''had studied'' shows the study was completed before the past ''were published.''"},{"id":"B","text":"studies","is_correct":false,"explanation":"''studies'' is present tense and clashes with the past-tense narrative."},{"id":"C","text":"will study","is_correct":false,"explanation":"''will study'' is future tense, inconsistent with the past context."},{"id":"D","text":"is studying","is_correct":false,"explanation":"''is studying'' is present progressive and breaks the past timeline."}]'::jsonb, 'A', 'Step 1 — Establish the timeline
The anchor event is past: {{yellow:By the time the survey results were published}}.
Step 2 — Show the earlier action
The team''s studying happened before that past moment, so the past perfect ''had studied'' is required.

Step 3 — Confirm the answer
The correct choice satisfies Standard English conventions as analyzed above.

Distractor analysis:
- B: ''studies'' is present tense.
- C: ''will study'' is future.
- D: ''is studying'' is present progressive.', 'One past action finished before another past action — which tense shows ''earlier than the past''?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-dsat-rw-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c53410cd-0cd0-4aab-95bf-ed6d7823a0d2', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'A good documentary should inform its audience, challenge their assumptions, and ______ them to look at a familiar subject in a new way.', 'passage', '[{"id":"A","text":"invite","is_correct":true,"explanation":"''invite'' is the base form, parallel with ''inform'' and ''challenge'' in the series."},{"id":"B","text":"inviting","is_correct":false,"explanation":"''inviting'' is a participle that breaks the parallel base-verb structure."},{"id":"C","text":"invites","is_correct":false,"explanation":"''invites'' adds an -s that does not match the base-form verbs in the list."},{"id":"D","text":"to invite","is_correct":false,"explanation":"''to invite'' is an infinitive that disrupts the parallel series of verbs."}]'::jsonb, 'A', 'Step 1 — Spot the series
The sentence lists what a documentary should do: {{yellow:inform its audience, challenge their assumptions}}, and a third action.
Step 2 — Keep it parallel
The first two verbs are base forms after ''should,'' so the third must also be the base form ''invite.''

Step 3 — Confirm the answer
The correct choice satisfies Standard English conventions as analyzed above.

Distractor analysis:
- B: ''inviting'' is a participle.
- C: ''invites'' is conjugated.
- D: ''to invite'' is an infinitive.', 'Match the form of the other verbs in the list after ''should.''', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-dsat-rw-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4f9c2cab-8f95-4829-8804-d9dfa48b42dd', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Neither the lead engineer nor the junior technicians who assembled the prototype ______ able to explain why the sensor failed during the final test.', 'passage', '[{"id":"A","text":"were","is_correct":true,"explanation":"In ''neither...nor,'' the verb agrees with the nearer subject ''technicians,'' which is plural, so ''were'' is correct."},{"id":"B","text":"was","is_correct":false,"explanation":"''was'' would agree with a singular subject, but the nearer subject ''technicians'' is plural."},{"id":"C","text":"is","is_correct":false,"explanation":"''is'' is singular and present tense, conflicting with the plural nearer subject and the past context."},{"id":"D","text":"has been","is_correct":false,"explanation":"''has been'' is singular and does not agree with the plural nearer subject."}]'::jsonb, 'A', 'Step 1 — Apply the neither/nor rule
With {{yellow:Neither the lead engineer nor the junior technicians}}, the verb agrees with the subject closer to it.
Step 2 — Check the nearer subject
The nearer subject, ''technicians,'' is plural, so the plural verb ''were'' is correct.

Step 3 — Confirm the answer
The correct choice satisfies Standard English conventions as analyzed above.

Distractor analysis:
- B: ''was'' agrees with a singular subject, not the nearer plural one.
- C: ''is'' is singular and present.
- D: ''has been'' is singular.', 'With ''neither...nor,'' the verb matches the subject nearest to it.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-dsat-rw-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('286c1c26-a48d-45a4-81cf-adec47876600', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Having been buried under volcanic ash for two millennia, archaeologists were astonished that the frescoes ______ their vivid color.', 'passage', '[{"id":"A","text":"had retained","is_correct":true,"explanation":"The frescoes, not the archaeologists, retained color; the past perfect fits the action completed before the astonishment."},{"id":"B","text":"have retained","is_correct":false,"explanation":"''have retained'' is present perfect and clashes with the past-tense ''were astonished.''"},{"id":"C","text":"retaining","is_correct":false,"explanation":"''retaining'' is a participle and cannot serve as the clause''s main verb."},{"id":"D","text":"retains","is_correct":false,"explanation":"''retains'' is singular present tense and does not fit the plural subject or past timeline."}]'::jsonb, 'A', 'Step 1 — Match subject and timeline
The relevant subject is ''the frescoes,'' and the discovery is past: archaeologists {{yellow:were astonished}}.
Step 2 — Use the right tense
The color was kept before that past astonishment, so the plural past perfect ''had retained'' is correct.

Step 3 — Confirm the answer
The correct choice satisfies Standard English conventions as analyzed above.

Distractor analysis:
- B: ''have retained'' is present perfect.
- C: ''retaining'' is a participle, not a finite verb.
- D: ''retains'' is singular present.', 'The frescoes kept their color before the archaeologists were astonished — which tense and number fit?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-dsat-rw-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('98363bca-4d72-421a-a502-8669ae7345dc', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The collection of rare coins that the museum acquired last year ______ now on display in the east wing.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Singular ''collection'' takes ''is''."},{"id":"B","text":"are","is_correct":false,"explanation":"''are'' agrees with ''coins,'' not the subject."},{"id":"C","text":"were","is_correct":false,"explanation":"''were'' is plural and past."},{"id":"D","text":"have been","is_correct":false,"explanation":"''have been'' is plural."}]'::jsonb, 'A', 'Step 1 — Find the real subject
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
VALUES ('02e3f980-93c6-4939-9b45-62ca2b46042e', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'When a hummingbird hovers, it beats ______ wings up to fifty times per second, a feat that demands enormous energy.', 'passage', '[{"id":"A","text":"its","is_correct":true,"explanation":"Singular possessive for ''a hummingbird.''"},{"id":"B","text":"it''s","is_correct":false,"explanation":"''it''s'' means ''it is.''"},{"id":"C","text":"their","is_correct":false,"explanation":"''their'' is plural."},{"id":"D","text":"it","is_correct":false,"explanation":"''it'' is not possessive."}]'::jsonb, 'A', 'Step 1 — Identify the antecedent
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
VALUES ('1d1d9d6d-0b24-4e0c-a643-23f64f358e97', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The panel of experts that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"has","is_correct":true,"explanation":"Correct: singular collective subject."},{"id":"B","text":"have","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"had","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"are having","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
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
VALUES ('e1de9854-e91c-45f7-b467-f8595ef3dc93', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The collection of rare coins that the museum acquired last year ______ now on display in the east wing.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Singular ''collection'' takes ''is''."},{"id":"B","text":"are","is_correct":false,"explanation":"''are'' agrees with ''coins,'' not the subject."},{"id":"C","text":"were","is_correct":false,"explanation":"''were'' is plural and past."},{"id":"D","text":"have been","is_correct":false,"explanation":"''have been'' is plural."}]'::jsonb, 'A', 'Step 1 — Find the real subject
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
VALUES ('5f633def-4e85-4c01-9465-2dafbe6dae3a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'When a hummingbird hovers, it beats ______ wings up to fifty times per second, a feat that demands enormous energy.', 'passage', '[{"id":"A","text":"its","is_correct":true,"explanation":"Singular possessive for ''a hummingbird.''"},{"id":"B","text":"it''s","is_correct":false,"explanation":"''it''s'' means ''it is.''"},{"id":"C","text":"their","is_correct":false,"explanation":"''their'' is plural."},{"id":"D","text":"it","is_correct":false,"explanation":"''it'' is not possessive."}]'::jsonb, 'A', 'Step 1 — Identify the antecedent
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
VALUES ('1e11c57a-9ef5-4ac2-8175-57925e323c9d', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Each of the volunteers that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"was","is_correct":true,"explanation":"Correct: ''each'' is singular."},{"id":"B","text":"were","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"have been","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
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
VALUES ('4caedd81-0da1-4cf4-89b7-1f56ec896649', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The collection of rare coins that the museum acquired last year ______ now on display in the east wing.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Singular ''collection'' takes ''is''."},{"id":"B","text":"are","is_correct":false,"explanation":"''are'' agrees with ''coins,'' not the subject."},{"id":"C","text":"were","is_correct":false,"explanation":"''were'' is plural and past."},{"id":"D","text":"have been","is_correct":false,"explanation":"''have been'' is plural."}]'::jsonb, 'A', 'Step 1 — Find the real subject
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
VALUES ('84ee7386-563d-4c7d-a0e7-77dc2898a778', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'When a hummingbird hovers, it beats ______ wings up to fifty times per second, a feat that demands enormous energy.', 'passage', '[{"id":"A","text":"its","is_correct":true,"explanation":"Singular possessive for ''a hummingbird.''"},{"id":"B","text":"it''s","is_correct":false,"explanation":"''it''s'' means ''it is.''"},{"id":"C","text":"their","is_correct":false,"explanation":"''their'' is plural."},{"id":"D","text":"it","is_correct":false,"explanation":"''it'' is not possessive."}]'::jsonb, 'A', 'Step 1 — Identify the antecedent
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
