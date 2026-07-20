BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('07f2d0a9-1975-4b4a-8dd5-882d3dd8e8a1', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'A series of lectures that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Correct: ''series'' as subject is singular here."},{"id":"B","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"were","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"have been","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
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
VALUES ('a57dde8f-aa21-4c8c-9dbf-3679ddba7fb8', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'By the time the survey results were published, the research team ______ the same neighborhoods for nearly a decade, returning each spring to record changes.', 'passage', '[{"id":"A","text":"had studied","is_correct":true,"explanation":"Past perfect shows action before ''were published.''"},{"id":"B","text":"studies","is_correct":false,"explanation":"Present tense clashes with past narrative."},{"id":"C","text":"will study","is_correct":false,"explanation":"Future tense is inconsistent."},{"id":"D","text":"is studying","is_correct":false,"explanation":"Present progressive breaks the timeline."}]'::jsonb, 'A', 'Step 1 — Establish the timeline
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
VALUES ('05a63877-541a-4e4b-bab5-176c1e35cb7c', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'A good documentary should inform its audience, challenge their assumptions, and ______ them to look at a familiar subject in a new way.', 'passage', '[{"id":"A","text":"invite","is_correct":true,"explanation":"Base form parallel with ''inform'' and ''challenge.''"},{"id":"B","text":"inviting","is_correct":false,"explanation":"Participle breaks parallel structure."},{"id":"C","text":"invites","is_correct":false,"explanation":"Conjugated -s form breaks parallel series."},{"id":"D","text":"to invite","is_correct":false,"explanation":"Infinitive disrupts the parallel verbs."}]'::jsonb, 'A', 'Step 1 — Spot the series
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
VALUES ('6c80fdda-0765-4980-8106-3d251029d55e', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The bundle of manuscripts that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"was","is_correct":true,"explanation":"Correct: singular collective subject."},{"id":"B","text":"were","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"have been","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
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
VALUES ('83513e8a-ede8-440d-9c27-18a3e7dc1062', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'By the time the survey results were published, the research team ______ the same neighborhoods for nearly a decade, returning each spring to record changes.', 'passage', '[{"id":"A","text":"had studied","is_correct":true,"explanation":"Past perfect shows action before ''were published.''"},{"id":"B","text":"studies","is_correct":false,"explanation":"Present tense clashes with past narrative."},{"id":"C","text":"will study","is_correct":false,"explanation":"Future tense is inconsistent."},{"id":"D","text":"is studying","is_correct":false,"explanation":"Present progressive breaks the timeline."}]'::jsonb, 'A', 'Step 1 — Establish the timeline
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
VALUES ('71736bc9-40b2-467d-b4c9-cb47b37796cd', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'A good documentary should inform its audience, challenge their assumptions, and ______ them to look at a familiar subject in a new way.', 'passage', '[{"id":"A","text":"invite","is_correct":true,"explanation":"Base form parallel with ''inform'' and ''challenge.''"},{"id":"B","text":"inviting","is_correct":false,"explanation":"Participle breaks parallel structure."},{"id":"C","text":"invites","is_correct":false,"explanation":"Conjugated -s form breaks parallel series."},{"id":"D","text":"to invite","is_correct":false,"explanation":"Infinitive disrupts the parallel verbs."}]'::jsonb, 'A', 'Step 1 — Spot the series
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
VALUES ('97951ac1-8806-4212-b88a-163b3d4c376c', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The panel of experts that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"has","is_correct":true,"explanation":"Correct: singular collective subject."},{"id":"B","text":"have","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"had","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"are having","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
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
VALUES ('3946591f-4c80-462c-a98e-09eba77ea173', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'By the time the survey results were published, the research team ______ the same neighborhoods for nearly a decade, returning each spring to record changes.', 'passage', '[{"id":"A","text":"had studied","is_correct":true,"explanation":"Past perfect shows action before ''were published.''"},{"id":"B","text":"studies","is_correct":false,"explanation":"Present tense clashes with past narrative."},{"id":"C","text":"will study","is_correct":false,"explanation":"Future tense is inconsistent."},{"id":"D","text":"is studying","is_correct":false,"explanation":"Present progressive breaks the timeline."}]'::jsonb, 'A', 'Step 1 — Establish the timeline
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
VALUES ('eeffe633-3694-4ae9-835a-43763b797214', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'A good documentary should inform its audience, challenge their assumptions, and ______ them to look at a familiar subject in a new way.', 'passage', '[{"id":"A","text":"invite","is_correct":true,"explanation":"Base form parallel with ''inform'' and ''challenge.''"},{"id":"B","text":"inviting","is_correct":false,"explanation":"Participle breaks parallel structure."},{"id":"C","text":"invites","is_correct":false,"explanation":"Conjugated -s form breaks parallel series."},{"id":"D","text":"to invite","is_correct":false,"explanation":"Infinitive disrupts the parallel verbs."}]'::jsonb, 'A', 'Step 1 — Spot the series
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
VALUES ('78f83042-4d26-4c78-abb7-2b06e6b333de', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Each of the volunteers that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"was","is_correct":true,"explanation":"Correct: ''each'' is singular."},{"id":"B","text":"were","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"have been","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
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
VALUES ('ab0287de-0246-45f9-a8be-1028da6fcb52', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'By the time the survey results were published, the research team ______ the same neighborhoods for nearly a decade, returning each spring to record changes.', 'passage', '[{"id":"A","text":"had studied","is_correct":true,"explanation":"Past perfect shows action before ''were published.''"},{"id":"B","text":"studies","is_correct":false,"explanation":"Present tense clashes with past narrative."},{"id":"C","text":"will study","is_correct":false,"explanation":"Future tense is inconsistent."},{"id":"D","text":"is studying","is_correct":false,"explanation":"Present progressive breaks the timeline."}]'::jsonb, 'A', 'Step 1 — Establish the timeline
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
VALUES ('7a5b7d82-23c1-48b4-a67d-ff780e115620', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'A good documentary should inform its audience, challenge their assumptions, and ______ them to look at a familiar subject in a new way.', 'passage', '[{"id":"A","text":"invite","is_correct":true,"explanation":"Base form parallel with ''inform'' and ''challenge.''"},{"id":"B","text":"inviting","is_correct":false,"explanation":"Participle breaks parallel structure."},{"id":"C","text":"invites","is_correct":false,"explanation":"Conjugated -s form breaks parallel series."},{"id":"D","text":"to invite","is_correct":false,"explanation":"Infinitive disrupts the parallel verbs."}]'::jsonb, 'A', 'Step 1 — Spot the series
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
VALUES ('af90c74c-100c-4419-b3e5-7ecb02e5f6a3', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The number of applicants that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"has","is_correct":true,"explanation":"Correct: ''the number'' is singular."},{"id":"B","text":"have","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"were","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
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
VALUES ('efb61c4e-423a-4ade-a976-9b9c9f49de66', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'By the time the survey results were published, the research team ______ the same neighborhoods for nearly a decade, returning each spring to record changes.', 'passage', '[{"id":"A","text":"had studied","is_correct":true,"explanation":"Past perfect shows action before ''were published.''"},{"id":"B","text":"studies","is_correct":false,"explanation":"Present tense clashes with past narrative."},{"id":"C","text":"will study","is_correct":false,"explanation":"Future tense is inconsistent."},{"id":"D","text":"is studying","is_correct":false,"explanation":"Present progressive breaks the timeline."}]'::jsonb, 'A', 'Step 1 — Establish the timeline
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
VALUES ('ea4818a3-ab70-46fa-9f48-ad9c7ff8e7a4', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'A good documentary should inform its audience, challenge their assumptions, and ______ them to look at a familiar subject in a new way.', 'passage', '[{"id":"A","text":"invite","is_correct":true,"explanation":"Base form parallel with ''inform'' and ''challenge.''"},{"id":"B","text":"inviting","is_correct":false,"explanation":"Participle breaks parallel structure."},{"id":"C","text":"invites","is_correct":false,"explanation":"Conjugated -s form breaks parallel series."},{"id":"D","text":"to invite","is_correct":false,"explanation":"Infinitive disrupts the parallel verbs."}]'::jsonb, 'A', 'Step 1 — Spot the series
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
