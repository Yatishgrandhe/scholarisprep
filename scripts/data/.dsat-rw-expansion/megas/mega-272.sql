BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('08e5515b-f669-4caa-acc7-5380bc13aec5', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'A series of lectures that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Correct: ''series'' as subject is singular here."},{"id":"B","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"were","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"have been","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:A series of lectures}}; ''series'' as subject is singular here.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (is) is correct.

Distractor analysis:
- B: ''are'' does not agree.
- C: ''were'' does not agree.
- D: ''have been'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('66437886-ecb4-4fa2-a5a3-9d266f8c335f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'By the time the survey results were published, the research team ______ the same neighborhoods for nearly a decade, returning each spring to record changes.', 'passage', '[{"id":"A","text":"had studied","is_correct":true,"explanation":"Past perfect shows action before ''were published.''"},{"id":"B","text":"studies","is_correct":false,"explanation":"Present tense clashes with past narrative."},{"id":"C","text":"will study","is_correct":false,"explanation":"Future tense is inconsistent."},{"id":"D","text":"is studying","is_correct":false,"explanation":"Present progressive breaks the timeline."}]'::jsonb, 'A', 'Step 1 — Establish the timeline
The anchor event is past: {{yellow:By the time the survey results were published}}.

Step 2 — Show the earlier action
Studying happened before that past moment, requiring past perfect.

Step 3 — Select the grammatical option
Choice A (had studied) is correct.

Distractor analysis:
- B: ''studies'' is present.
- C: ''will study'' is future.
- D: ''is studying'' is present progressive.', 'One past action finished before another — which tense shows ''earlier than the past''?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('314dfa9d-d134-4e82-8e77-0c2a977cfe27', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'A good documentary should inform its audience, challenge their assumptions, and ______ them to look at a familiar subject in a new way.', 'passage', '[{"id":"A","text":"invite","is_correct":true,"explanation":"Base form parallel with ''inform'' and ''challenge.''"},{"id":"B","text":"inviting","is_correct":false,"explanation":"Participle breaks parallel structure."},{"id":"C","text":"invites","is_correct":false,"explanation":"Conjugated -s form breaks parallel series."},{"id":"D","text":"to invite","is_correct":false,"explanation":"Infinitive disrupts the parallel verbs."}]'::jsonb, 'A', 'Step 1 — Spot the series
The sentence lists what a documentary should do: {{yellow:inform, challenge}}, and a third action.

Step 2 — Keep it parallel
After ''should,'' all verbs must share the same base form.

Step 3 — Select the grammatical option
Choice A (invite) maintains parallel structure.

Distractor analysis:
- B: ''inviting'' is a participle.
- C: ''invites'' is conjugated.
- D: ''to invite'' is an infinitive.', 'Match the form of the other verbs in the list after ''should.''', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('acbc39e3-9b40-4cf1-a68d-8a06cee0816a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The bundle of manuscripts that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"was","is_correct":true,"explanation":"Correct: singular collective subject."},{"id":"B","text":"were","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"have been","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The bundle of manuscripts}}; singular collective subject.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (was) is correct.

Distractor analysis:
- B: ''were'' does not agree.
- C: ''are'' does not agree.
- D: ''have been'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f5cc5d01-8c15-4480-8f6f-65158c84eda4', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'By the time the survey results were published, the research team ______ the same neighborhoods for nearly a decade, returning each spring to record changes.', 'passage', '[{"id":"A","text":"had studied","is_correct":true,"explanation":"Past perfect shows action before ''were published.''"},{"id":"B","text":"studies","is_correct":false,"explanation":"Present tense clashes with past narrative."},{"id":"C","text":"will study","is_correct":false,"explanation":"Future tense is inconsistent."},{"id":"D","text":"is studying","is_correct":false,"explanation":"Present progressive breaks the timeline."}]'::jsonb, 'A', 'Step 1 — Establish the timeline
The anchor event is past: {{yellow:By the time the survey results were published}}.

Step 2 — Show the earlier action
Studying happened before that past moment, requiring past perfect.

Step 3 — Select the grammatical option
Choice A (had studied) is correct.

Distractor analysis:
- B: ''studies'' is present.
- C: ''will study'' is future.
- D: ''is studying'' is present progressive.', 'One past action finished before another — which tense shows ''earlier than the past''?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bf31740d-b461-4c0b-be45-e39e5f4d3ac3', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'A good documentary should inform its audience, challenge their assumptions, and ______ them to look at a familiar subject in a new way.', 'passage', '[{"id":"A","text":"invite","is_correct":true,"explanation":"Base form parallel with ''inform'' and ''challenge.''"},{"id":"B","text":"inviting","is_correct":false,"explanation":"Participle breaks parallel structure."},{"id":"C","text":"invites","is_correct":false,"explanation":"Conjugated -s form breaks parallel series."},{"id":"D","text":"to invite","is_correct":false,"explanation":"Infinitive disrupts the parallel verbs."}]'::jsonb, 'A', 'Step 1 — Spot the series
The sentence lists what a documentary should do: {{yellow:inform, challenge}}, and a third action.

Step 2 — Keep it parallel
After ''should,'' all verbs must share the same base form.

Step 3 — Select the grammatical option
Choice A (invite) maintains parallel structure.

Distractor analysis:
- B: ''inviting'' is a participle.
- C: ''invites'' is conjugated.
- D: ''to invite'' is an infinitive.', 'Match the form of the other verbs in the list after ''should.''', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('83604d9b-b559-4f9b-87c0-8094b4562326', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The panel of experts that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"has","is_correct":true,"explanation":"Correct: singular collective subject."},{"id":"B","text":"have","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"had","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"are having","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The panel of experts}}; singular collective subject.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (has) is correct.

Distractor analysis:
- B: ''have'' does not agree.
- C: ''had'' does not agree.
- D: ''are having'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('08920428-3718-42e2-bc25-193471cb9fb6', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'By the time the survey results were published, the research team ______ the same neighborhoods for nearly a decade, returning each spring to record changes.', 'passage', '[{"id":"A","text":"had studied","is_correct":true,"explanation":"Past perfect shows action before ''were published.''"},{"id":"B","text":"studies","is_correct":false,"explanation":"Present tense clashes with past narrative."},{"id":"C","text":"will study","is_correct":false,"explanation":"Future tense is inconsistent."},{"id":"D","text":"is studying","is_correct":false,"explanation":"Present progressive breaks the timeline."}]'::jsonb, 'A', 'Step 1 — Establish the timeline
The anchor event is past: {{yellow:By the time the survey results were published}}.

Step 2 — Show the earlier action
Studying happened before that past moment, requiring past perfect.

Step 3 — Select the grammatical option
Choice A (had studied) is correct.

Distractor analysis:
- B: ''studies'' is present.
- C: ''will study'' is future.
- D: ''is studying'' is present progressive.', 'One past action finished before another — which tense shows ''earlier than the past''?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c861b098-3d69-4911-9dae-c5a1087743e2', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'A good documentary should inform its audience, challenge their assumptions, and ______ them to look at a familiar subject in a new way.', 'passage', '[{"id":"A","text":"invite","is_correct":true,"explanation":"Base form parallel with ''inform'' and ''challenge.''"},{"id":"B","text":"inviting","is_correct":false,"explanation":"Participle breaks parallel structure."},{"id":"C","text":"invites","is_correct":false,"explanation":"Conjugated -s form breaks parallel series."},{"id":"D","text":"to invite","is_correct":false,"explanation":"Infinitive disrupts the parallel verbs."}]'::jsonb, 'A', 'Step 1 — Spot the series
The sentence lists what a documentary should do: {{yellow:inform, challenge}}, and a third action.

Step 2 — Keep it parallel
After ''should,'' all verbs must share the same base form.

Step 3 — Select the grammatical option
Choice A (invite) maintains parallel structure.

Distractor analysis:
- B: ''inviting'' is a participle.
- C: ''invites'' is conjugated.
- D: ''to invite'' is an infinitive.', 'Match the form of the other verbs in the list after ''should.''', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5f977194-a5c9-4d57-a930-bcbedcb3c18c', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Each of the volunteers that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"was","is_correct":true,"explanation":"Correct: ''each'' is singular."},{"id":"B","text":"were","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"have been","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:Each of the volunteers}}; ''each'' is singular.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (was) is correct.

Distractor analysis:
- B: ''were'' does not agree.
- C: ''are'' does not agree.
- D: ''have been'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f0b06034-f792-4f4d-9de5-7092cbaa4c8d', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'By the time the survey results were published, the research team ______ the same neighborhoods for nearly a decade, returning each spring to record changes.', 'passage', '[{"id":"A","text":"had studied","is_correct":true,"explanation":"Past perfect shows action before ''were published.''"},{"id":"B","text":"studies","is_correct":false,"explanation":"Present tense clashes with past narrative."},{"id":"C","text":"will study","is_correct":false,"explanation":"Future tense is inconsistent."},{"id":"D","text":"is studying","is_correct":false,"explanation":"Present progressive breaks the timeline."}]'::jsonb, 'A', 'Step 1 — Establish the timeline
The anchor event is past: {{yellow:By the time the survey results were published}}.

Step 2 — Show the earlier action
Studying happened before that past moment, requiring past perfect.

Step 3 — Select the grammatical option
Choice A (had studied) is correct.

Distractor analysis:
- B: ''studies'' is present.
- C: ''will study'' is future.
- D: ''is studying'' is present progressive.', 'One past action finished before another — which tense shows ''earlier than the past''?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('278e3824-b5b0-4d4f-a706-3da6476477e1', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'A good documentary should inform its audience, challenge their assumptions, and ______ them to look at a familiar subject in a new way.', 'passage', '[{"id":"A","text":"invite","is_correct":true,"explanation":"Base form parallel with ''inform'' and ''challenge.''"},{"id":"B","text":"inviting","is_correct":false,"explanation":"Participle breaks parallel structure."},{"id":"C","text":"invites","is_correct":false,"explanation":"Conjugated -s form breaks parallel series."},{"id":"D","text":"to invite","is_correct":false,"explanation":"Infinitive disrupts the parallel verbs."}]'::jsonb, 'A', 'Step 1 — Spot the series
The sentence lists what a documentary should do: {{yellow:inform, challenge}}, and a third action.

Step 2 — Keep it parallel
After ''should,'' all verbs must share the same base form.

Step 3 — Select the grammatical option
Choice A (invite) maintains parallel structure.

Distractor analysis:
- B: ''inviting'' is a participle.
- C: ''invites'' is conjugated.
- D: ''to invite'' is an infinitive.', 'Match the form of the other verbs in the list after ''should.''', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a3077f58-c9e6-4ccd-9cda-91366388c450', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The number of applicants that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"has","is_correct":true,"explanation":"Correct: ''the number'' is singular."},{"id":"B","text":"have","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"were","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The number of applicants}}; ''the number'' is singular.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (has) is correct.

Distractor analysis:
- B: ''have'' does not agree.
- C: ''are'' does not agree.
- D: ''were'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4a49bdd2-1996-448e-ac9c-dab1858eef62', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'By the time the survey results were published, the research team ______ the same neighborhoods for nearly a decade, returning each spring to record changes.', 'passage', '[{"id":"A","text":"had studied","is_correct":true,"explanation":"Past perfect shows action before ''were published.''"},{"id":"B","text":"studies","is_correct":false,"explanation":"Present tense clashes with past narrative."},{"id":"C","text":"will study","is_correct":false,"explanation":"Future tense is inconsistent."},{"id":"D","text":"is studying","is_correct":false,"explanation":"Present progressive breaks the timeline."}]'::jsonb, 'A', 'Step 1 — Establish the timeline
The anchor event is past: {{yellow:By the time the survey results were published}}.

Step 2 — Show the earlier action
Studying happened before that past moment, requiring past perfect.

Step 3 — Select the grammatical option
Choice A (had studied) is correct.

Distractor analysis:
- B: ''studies'' is present.
- C: ''will study'' is future.
- D: ''is studying'' is present progressive.', 'One past action finished before another — which tense shows ''earlier than the past''?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('80fe278a-3fdc-40d2-9368-2b509001fc4e', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'A good documentary should inform its audience, challenge their assumptions, and ______ them to look at a familiar subject in a new way.', 'passage', '[{"id":"A","text":"invite","is_correct":true,"explanation":"Base form parallel with ''inform'' and ''challenge.''"},{"id":"B","text":"inviting","is_correct":false,"explanation":"Participle breaks parallel structure."},{"id":"C","text":"invites","is_correct":false,"explanation":"Conjugated -s form breaks parallel series."},{"id":"D","text":"to invite","is_correct":false,"explanation":"Infinitive disrupts the parallel verbs."}]'::jsonb, 'A', 'Step 1 — Spot the series
The sentence lists what a documentary should do: {{yellow:inform, challenge}}, and a third action.

Step 2 — Keep it parallel
After ''should,'' all verbs must share the same base form.

Step 3 — Select the grammatical option
Choice A (invite) maintains parallel structure.

Distractor analysis:
- B: ''inviting'' is a participle.
- C: ''invites'' is conjugated.
- D: ''to invite'' is an infinitive.', 'Match the form of the other verbs in the list after ''should.''', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
