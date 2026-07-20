BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('34d4e6a3-9d5b-4841-a8b0-5989ae30a813', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying archaeology at coastal excavation trenches have documented how ceramic shard assemblages shape broader conclusions. By the time the survey results were published in the spring, the research team ______ the same neighborhoods for nearly a decade, returning each year to record incremental changes. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical. Policy implications depend on whether the observed effect persists when practical constraints such as access vary.', 'passage', '[{"id":"A","text":"had studied","is_correct":true,"explanation":"Correct: \"had studied\" satisfies Standard English conventions for this blank."},{"id":"B","text":"have studied","is_correct":false,"explanation":"[Tense Shift] present perfect plural cannot express an action completed before a past anchor event."},{"id":"C","text":"has studied","is_correct":false,"explanation":"[Dangling Modifier] present perfect agrees with a nearby plural noun but not the past-before-past timeline required here."},{"id":"D","text":"was studied","is_correct":false,"explanation":"[Proximity Decoy] passive past breaks the active timeline anchored by \"were published.\""}]'::jsonb, 'A', 'Step 1 — Establish the timeline
The anchor event is past: {{yellow:By the time the survey results were published}}.

Step 2 — Show the earlier action
Studying happened before that past moment, requiring past perfect.

Step 3 — Select the grammatical option
Choice A (had studied) is grammatically correct.

Distractor analysis:
- B: [Tense Shift] present perfect plural cannot express an action completed before a past anchor event.
- C: [Dangling Modifier] present perfect agrees with a nearby plural noun but not the past-before-past timeline required here.
- D: [Proximity Decoy] passive past breaks the active timeline anchored by "were published."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5e33df15-61f0-4c7d-b2a8-ab42a44858db', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. A strong documentary should inform its audience, challenge their assumptions, and ______ viewers to reconsider a familiar subject from an unexpected angle. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids. Classroom textbooks may still compress the result, though the original study qualifies every major claim.', 'passage', '[{"id":"A","text":"inviting","is_correct":false,"explanation":"[Dangling Modifier] present participle agrees with a nearby noun but breaks the parallel verb series after \"should.\""},{"id":"B","text":"invite","is_correct":true,"explanation":"Correct: \"invite\" satisfies Standard English conventions for this blank."},{"id":"C","text":"invites","is_correct":false,"explanation":"[Proximity Decoy] third-person singular form breaks the established base-form verb series."},{"id":"D","text":"invited","is_correct":false,"explanation":"[Tense Shift] past participle disrupts the parallel base verbs \"inform\" and \"challenge\" after \"should.\""}]'::jsonb, 'B', 'Step 1 — Spot the series
The sentence lists what a documentary should do: {{yellow:inform, challenge}}, and a third action.

Step 2 — Keep it parallel
After ''should,'' all verbs must share the same base form.

Step 3 — Select the grammatical option
Choice B (invite) is grammatically correct.

Distractor analysis:
- A: [Dangling Modifier] present participle agrees with a nearby noun but breaks the parallel verb series after "should."
- C: [Proximity Decoy] third-person singular form breaks the established base-form verb series.
- D: [Tense Shift] past participle disrupts the parallel base verbs "inform" and "challenge" after "should."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3fbad3a9-5f81-4c45-a178-7c8148688c82', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying ecology at mangrove restoration plots have documented how seedling survival rates shape broader conclusions. The lead researcher, along with several junior analysts who reviewed the raw telemetry, ______ prepared a revised manuscript before the funding deadline arrived. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges.', 'passage', '[{"id":"A","text":"have","is_correct":false,"explanation":"[Dangling Modifier] plural \"have\" agrees with \"analysts\" near the blank, not the singular subject \"researcher.\""},{"id":"B","text":"had","is_correct":false,"explanation":"[Proximity Decoy] past perfect breaks the present-perfect timeline implied by the ongoing manuscript preparation."},{"id":"C","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"D","text":"are","is_correct":false,"explanation":"[Tense Shift] \"are\" is a linking verb that leaves the participial phrase \"prepared\" dangling without a finite main verb."}]'::jsonb, 'C', 'Step 1 — Find the true subject
With {{yellow:The lead researcher, along with several junior analysts}}, the verb agrees with the main subject, not the phrase introduced by ''along with.''

Step 2 — Match tense and number
Singular ''researcher'' requires a singular auxiliary compatible with the completed preparation.

Step 3 — Select the grammatical option
Choice C (has) is grammatically correct.

Distractor analysis:
- A: [Dangling Modifier] plural "have" agrees with "analysts" near the blank, not the singular subject "researcher."
- B: [Proximity Decoy] past perfect breaks the present-perfect timeline implied by the ongoing manuscript preparation.
- D: [Tense Shift] "are" is a linking verb that leaves the participial phrase "prepared" dangling without a finite main verb.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f89d3e06-8e27-4ed4-94b3-5b34c8e8c056', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. By the time the survey results were published in the spring, the research team ______ the same neighborhoods for nearly a decade, returning each year to record incremental changes. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids.', 'passage', '[{"id":"A","text":"have studied","is_correct":false,"explanation":"[Tense Shift] present perfect plural cannot express an action completed before a past anchor event."},{"id":"B","text":"has studied","is_correct":false,"explanation":"[Dangling Modifier] present perfect agrees with a nearby plural noun but not the past-before-past timeline required here."},{"id":"C","text":"was studied","is_correct":false,"explanation":"[Proximity Decoy] passive past breaks the active timeline anchored by \"were published.\""},{"id":"D","text":"had studied","is_correct":true,"explanation":"Correct: \"had studied\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Establish the timeline
The anchor event is past: {{yellow:By the time the survey results were published}}.

Step 2 — Show the earlier action
Studying happened before that past moment, requiring past perfect.

Step 3 — Select the grammatical option
Choice D (had studied) is grammatically correct.

Distractor analysis:
- A: [Tense Shift] present perfect plural cannot express an action completed before a past anchor event.
- B: [Dangling Modifier] present perfect agrees with a nearby plural noun but not the past-before-past timeline required here.
- C: [Proximity Decoy] passive past breaks the active timeline anchored by "were published."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e1ed8376-ac2b-468d-8749-2db85666cabe', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying ecology at mangrove restoration plots have documented how seedling survival rates shape broader conclusions. A strong documentary should inform its audience, challenge their assumptions, and ______ viewers to reconsider a familiar subject from an unexpected angle. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges.', 'passage', '[{"id":"A","text":"invite","is_correct":true,"explanation":"Correct: \"invite\" satisfies Standard English conventions for this blank."},{"id":"B","text":"inviting","is_correct":false,"explanation":"[Dangling Modifier] present participle agrees with a nearby noun but breaks the parallel verb series after \"should.\""},{"id":"C","text":"invites","is_correct":false,"explanation":"[Proximity Decoy] third-person singular form breaks the established base-form verb series."},{"id":"D","text":"invited","is_correct":false,"explanation":"[Tense Shift] past participle disrupts the parallel base verbs \"inform\" and \"challenge\" after \"should.\""}]'::jsonb, 'A', 'Step 1 — Spot the series
The sentence lists what a documentary should do: {{yellow:inform, challenge}}, and a third action.

Step 2 — Keep it parallel
After ''should,'' all verbs must share the same base form.

Step 3 — Select the grammatical option
Choice A (invite) is grammatically correct.

Distractor analysis:
- B: [Dangling Modifier] present participle agrees with a nearby noun but breaks the parallel verb series after "should."
- C: [Proximity Decoy] third-person singular form breaks the established base-form verb series.
- D: [Tense Shift] past participle disrupts the parallel base verbs "inform" and "challenge" after "should."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('212620bf-ea6e-48cf-92bd-7d7bea861ec2', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. The lead researcher, along with several junior analysts who reviewed the raw telemetry, ______ prepared a revised manuscript before the funding deadline arrived. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical.', 'passage', '[{"id":"A","text":"have","is_correct":false,"explanation":"[Dangling Modifier] plural \"have\" agrees with \"analysts\" near the blank, not the singular subject \"researcher.\""},{"id":"B","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"C","text":"had","is_correct":false,"explanation":"[Proximity Decoy] past perfect breaks the present-perfect timeline implied by the ongoing manuscript preparation."},{"id":"D","text":"are","is_correct":false,"explanation":"[Tense Shift] \"are\" is a linking verb that leaves the participial phrase \"prepared\" dangling without a finite main verb."}]'::jsonb, 'B', 'Step 1 — Find the true subject
With {{yellow:The lead researcher, along with several junior analysts}}, the verb agrees with the main subject, not the phrase introduced by ''along with.''

Step 2 — Match tense and number
Singular ''researcher'' requires a singular auxiliary compatible with the completed preparation.

Step 3 — Select the grammatical option
Choice B (has) is grammatically correct.

Distractor analysis:
- A: [Dangling Modifier] plural "have" agrees with "analysts" near the blank, not the singular subject "researcher."
- C: [Proximity Decoy] past perfect breaks the present-perfect timeline implied by the ongoing manuscript preparation.
- D: [Tense Shift] "are" is a linking verb that leaves the participial phrase "prepared" dangling without a finite main verb.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('974dbb5c-9637-4ac7-aa19-8f2cfd2c1634', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying ecology at mangrove restoration plots have documented how seedling survival rates shape broader conclusions. By the time the survey results were published in the spring, the research team ______ the same neighborhoods for nearly a decade, returning each year to record incremental changes. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice.', 'passage', '[{"id":"A","text":"have studied","is_correct":false,"explanation":"[Tense Shift] present perfect plural cannot express an action completed before a past anchor event."},{"id":"B","text":"has studied","is_correct":false,"explanation":"[Dangling Modifier] present perfect agrees with a nearby plural noun but not the past-before-past timeline required here."},{"id":"C","text":"had studied","is_correct":true,"explanation":"Correct: \"had studied\" satisfies Standard English conventions for this blank."},{"id":"D","text":"was studied","is_correct":false,"explanation":"[Proximity Decoy] passive past breaks the active timeline anchored by \"were published.\""}]'::jsonb, 'C', 'Step 1 — Establish the timeline
The anchor event is past: {{yellow:By the time the survey results were published}}.

Step 2 — Show the earlier action
Studying happened before that past moment, requiring past perfect.

Step 3 — Select the grammatical option
Choice C (had studied) is grammatically correct.

Distractor analysis:
- A: [Tense Shift] present perfect plural cannot express an action completed before a past anchor event.
- B: [Dangling Modifier] present perfect agrees with a nearby plural noun but not the past-before-past timeline required here.
- D: [Proximity Decoy] passive past breaks the active timeline anchored by "were published."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('128fa794-4c5f-4502-9f1b-a32fe3137351', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. A strong documentary should inform its audience, challenge their assumptions, and ______ viewers to reconsider a familiar subject from an unexpected angle. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical.', 'passage', '[{"id":"A","text":"inviting","is_correct":false,"explanation":"[Dangling Modifier] present participle agrees with a nearby noun but breaks the parallel verb series after \"should.\""},{"id":"B","text":"invites","is_correct":false,"explanation":"[Proximity Decoy] third-person singular form breaks the established base-form verb series."},{"id":"C","text":"invited","is_correct":false,"explanation":"[Tense Shift] past participle disrupts the parallel base verbs \"inform\" and \"challenge\" after \"should.\""},{"id":"D","text":"invite","is_correct":true,"explanation":"Correct: \"invite\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Spot the series
The sentence lists what a documentary should do: {{yellow:inform, challenge}}, and a third action.

Step 2 — Keep it parallel
After ''should,'' all verbs must share the same base form.

Step 3 — Select the grammatical option
Choice D (invite) is grammatically correct.

Distractor analysis:
- A: [Dangling Modifier] present participle agrees with a nearby noun but breaks the parallel verb series after "should."
- B: [Proximity Decoy] third-person singular form breaks the established base-form verb series.
- C: [Tense Shift] past participle disrupts the parallel base verbs "inform" and "challenge" after "should."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1b047fd8-cd4c-47ad-9828-26be7d7e0674', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying paleoclimatology at Antarctic ice-core laboratories have documented how sulfate spike layers shape broader conclusions. The lead researcher, along with several junior analysts who reviewed the raw telemetry, ______ prepared a revised manuscript before the funding deadline arrived. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids.', 'passage', '[{"id":"A","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"B","text":"have","is_correct":false,"explanation":"[Dangling Modifier] plural \"have\" agrees with \"analysts\" near the blank, not the singular subject \"researcher.\""},{"id":"C","text":"had","is_correct":false,"explanation":"[Proximity Decoy] past perfect breaks the present-perfect timeline implied by the ongoing manuscript preparation."},{"id":"D","text":"are","is_correct":false,"explanation":"[Tense Shift] \"are\" is a linking verb that leaves the participial phrase \"prepared\" dangling without a finite main verb."}]'::jsonb, 'A', 'Step 1 — Find the true subject
With {{yellow:The lead researcher, along with several junior analysts}}, the verb agrees with the main subject, not the phrase introduced by ''along with.''

Step 2 — Match tense and number
Singular ''researcher'' requires a singular auxiliary compatible with the completed preparation.

Step 3 — Select the grammatical option
Choice A (has) is grammatically correct.

Distractor analysis:
- B: [Dangling Modifier] plural "have" agrees with "analysts" near the blank, not the singular subject "researcher."
- C: [Proximity Decoy] past perfect breaks the present-perfect timeline implied by the ongoing manuscript preparation.
- D: [Tense Shift] "are" is a linking verb that leaves the participial phrase "prepared" dangling without a finite main verb.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('74eb1562-7d74-4501-9ad9-0274bb3029e1', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. By the time the survey results were published in the spring, the research team ______ the same neighborhoods for nearly a decade, returning each year to record incremental changes. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical.', 'passage', '[{"id":"A","text":"have studied","is_correct":false,"explanation":"[Tense Shift] present perfect plural cannot express an action completed before a past anchor event."},{"id":"B","text":"had studied","is_correct":true,"explanation":"Correct: \"had studied\" satisfies Standard English conventions for this blank."},{"id":"C","text":"has studied","is_correct":false,"explanation":"[Dangling Modifier] present perfect agrees with a nearby plural noun but not the past-before-past timeline required here."},{"id":"D","text":"was studied","is_correct":false,"explanation":"[Proximity Decoy] passive past breaks the active timeline anchored by \"were published.\""}]'::jsonb, 'B', 'Step 1 — Establish the timeline
The anchor event is past: {{yellow:By the time the survey results were published}}.

Step 2 — Show the earlier action
Studying happened before that past moment, requiring past perfect.

Step 3 — Select the grammatical option
Choice B (had studied) is grammatically correct.

Distractor analysis:
- A: [Tense Shift] present perfect plural cannot express an action completed before a past anchor event.
- C: [Dangling Modifier] present perfect agrees with a nearby plural noun but not the past-before-past timeline required here.
- D: [Proximity Decoy] passive past breaks the active timeline anchored by "were published."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fcba90f0-9c2e-46ec-9d38-d4d7392e3e8a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying paleoclimatology at Antarctic ice-core laboratories have documented how sulfate spike layers shape broader conclusions. A strong documentary should inform its audience, challenge their assumptions, and ______ viewers to reconsider a familiar subject from an unexpected angle. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids.', 'passage', '[{"id":"A","text":"inviting","is_correct":false,"explanation":"[Dangling Modifier] present participle agrees with a nearby noun but breaks the parallel verb series after \"should.\""},{"id":"B","text":"invites","is_correct":false,"explanation":"[Proximity Decoy] third-person singular form breaks the established base-form verb series."},{"id":"C","text":"invite","is_correct":true,"explanation":"Correct: \"invite\" satisfies Standard English conventions for this blank."},{"id":"D","text":"invited","is_correct":false,"explanation":"[Tense Shift] past participle disrupts the parallel base verbs \"inform\" and \"challenge\" after \"should.\""}]'::jsonb, 'C', 'Step 1 — Spot the series
The sentence lists what a documentary should do: {{yellow:inform, challenge}}, and a third action.

Step 2 — Keep it parallel
After ''should,'' all verbs must share the same base form.

Step 3 — Select the grammatical option
Choice C (invite) is grammatically correct.

Distractor analysis:
- A: [Dangling Modifier] present participle agrees with a nearby noun but breaks the parallel verb series after "should."
- B: [Proximity Decoy] third-person singular form breaks the established base-form verb series.
- D: [Tense Shift] past participle disrupts the parallel base verbs "inform" and "challenge" after "should."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('48f9a838-31d8-4a26-8857-5f00d9044d38', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. The lead researcher, along with several junior analysts who reviewed the raw telemetry, ______ prepared a revised manuscript before the funding deadline arrived. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice.', 'passage', '[{"id":"A","text":"have","is_correct":false,"explanation":"[Dangling Modifier] plural \"have\" agrees with \"analysts\" near the blank, not the singular subject \"researcher.\""},{"id":"B","text":"had","is_correct":false,"explanation":"[Proximity Decoy] past perfect breaks the present-perfect timeline implied by the ongoing manuscript preparation."},{"id":"C","text":"are","is_correct":false,"explanation":"[Tense Shift] \"are\" is a linking verb that leaves the participial phrase \"prepared\" dangling without a finite main verb."},{"id":"D","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Find the true subject
With {{yellow:The lead researcher, along with several junior analysts}}, the verb agrees with the main subject, not the phrase introduced by ''along with.''

Step 2 — Match tense and number
Singular ''researcher'' requires a singular auxiliary compatible with the completed preparation.

Step 3 — Select the grammatical option
Choice D (has) is grammatically correct.

Distractor analysis:
- A: [Dangling Modifier] plural "have" agrees with "analysts" near the blank, not the singular subject "researcher."
- B: [Proximity Decoy] past perfect breaks the present-perfect timeline implied by the ongoing manuscript preparation.
- C: [Tense Shift] "are" is a linking verb that leaves the participial phrase "prepared" dangling without a finite main verb.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f4ece8d9-113a-4cb7-b4b9-542cbb24560f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying paleoclimatology at Antarctic ice-core laboratories have documented how sulfate spike layers shape broader conclusions. By the time the survey results were published in the spring, the research team ______ the same neighborhoods for nearly a decade, returning each year to record incremental changes. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids.', 'passage', '[{"id":"A","text":"had studied","is_correct":true,"explanation":"Correct: \"had studied\" satisfies Standard English conventions for this blank."},{"id":"B","text":"have studied","is_correct":false,"explanation":"[Tense Shift] present perfect plural cannot express an action completed before a past anchor event."},{"id":"C","text":"has studied","is_correct":false,"explanation":"[Dangling Modifier] present perfect agrees with a nearby plural noun but not the past-before-past timeline required here."},{"id":"D","text":"was studied","is_correct":false,"explanation":"[Proximity Decoy] passive past breaks the active timeline anchored by \"were published.\""}]'::jsonb, 'A', 'Step 1 — Establish the timeline
The anchor event is past: {{yellow:By the time the survey results were published}}.

Step 2 — Show the earlier action
Studying happened before that past moment, requiring past perfect.

Step 3 — Select the grammatical option
Choice A (had studied) is grammatically correct.

Distractor analysis:
- B: [Tense Shift] present perfect plural cannot express an action completed before a past anchor event.
- C: [Dangling Modifier] present perfect agrees with a nearby plural noun but not the past-before-past timeline required here.
- D: [Proximity Decoy] passive past breaks the active timeline anchored by "were published."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f70c6a97-3b03-44d2-b24e-eb96da505b61', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. A strong documentary should inform its audience, challenge their assumptions, and ______ viewers to reconsider a familiar subject from an unexpected angle. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice.', 'passage', '[{"id":"A","text":"inviting","is_correct":false,"explanation":"[Dangling Modifier] present participle agrees with a nearby noun but breaks the parallel verb series after \"should.\""},{"id":"B","text":"invite","is_correct":true,"explanation":"Correct: \"invite\" satisfies Standard English conventions for this blank."},{"id":"C","text":"invites","is_correct":false,"explanation":"[Proximity Decoy] third-person singular form breaks the established base-form verb series."},{"id":"D","text":"invited","is_correct":false,"explanation":"[Tense Shift] past participle disrupts the parallel base verbs \"inform\" and \"challenge\" after \"should.\""}]'::jsonb, 'B', 'Step 1 — Spot the series
The sentence lists what a documentary should do: {{yellow:inform, challenge}}, and a third action.

Step 2 — Keep it parallel
After ''should,'' all verbs must share the same base form.

Step 3 — Select the grammatical option
Choice B (invite) is grammatically correct.

Distractor analysis:
- A: [Dangling Modifier] present participle agrees with a nearby noun but breaks the parallel verb series after "should."
- C: [Proximity Decoy] third-person singular form breaks the established base-form verb series.
- D: [Tense Shift] past participle disrupts the parallel base verbs "inform" and "challenge" after "should."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4271a0ce-d122-417e-be8f-1ad8f974759d', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying economics at regional labor market surveys have documented how wage adjustment estimates shape broader conclusions. The lead researcher, along with several junior analysts who reviewed the raw telemetry, ______ prepared a revised manuscript before the funding deadline arrived. Stakeholders should weigh the evidence against limitations the researchers document throughout the study. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage.', 'passage', '[{"id":"A","text":"have","is_correct":false,"explanation":"[Dangling Modifier] plural \"have\" agrees with \"analysts\" near the blank, not the singular subject \"researcher.\""},{"id":"B","text":"had","is_correct":false,"explanation":"[Proximity Decoy] past perfect breaks the present-perfect timeline implied by the ongoing manuscript preparation."},{"id":"C","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"D","text":"are","is_correct":false,"explanation":"[Tense Shift] \"are\" is a linking verb that leaves the participial phrase \"prepared\" dangling without a finite main verb."}]'::jsonb, 'C', 'Step 1 — Find the true subject
With {{yellow:The lead researcher, along with several junior analysts}}, the verb agrees with the main subject, not the phrase introduced by ''along with.''

Step 2 — Match tense and number
Singular ''researcher'' requires a singular auxiliary compatible with the completed preparation.

Step 3 — Select the grammatical option
Choice C (has) is grammatically correct.

Distractor analysis:
- A: [Dangling Modifier] plural "have" agrees with "analysts" near the blank, not the singular subject "researcher."
- B: [Proximity Decoy] past perfect breaks the present-perfect timeline implied by the ongoing manuscript preparation.
- D: [Tense Shift] "are" is a linking verb that leaves the participial phrase "prepared" dangling without a finite main verb.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('17aeb0a2-be6f-4702-9548-e51fb1d64192', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. By the time the survey results were published in the spring, the research team ______ the same neighborhoods for nearly a decade, returning each year to record incremental changes. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled.', 'passage', '[{"id":"A","text":"have studied","is_correct":false,"explanation":"[Tense Shift] present perfect plural cannot express an action completed before a past anchor event."},{"id":"B","text":"has studied","is_correct":false,"explanation":"[Dangling Modifier] present perfect agrees with a nearby plural noun but not the past-before-past timeline required here."},{"id":"C","text":"was studied","is_correct":false,"explanation":"[Proximity Decoy] passive past breaks the active timeline anchored by \"were published.\""},{"id":"D","text":"had studied","is_correct":true,"explanation":"Correct: \"had studied\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Establish the timeline
The anchor event is past: {{yellow:By the time the survey results were published}}.

Step 2 — Show the earlier action
Studying happened before that past moment, requiring past perfect.

Step 3 — Select the grammatical option
Choice D (had studied) is grammatically correct.

Distractor analysis:
- A: [Tense Shift] present perfect plural cannot express an action completed before a past anchor event.
- B: [Dangling Modifier] present perfect agrees with a nearby plural noun but not the past-before-past timeline required here.
- C: [Proximity Decoy] passive past breaks the active timeline anchored by "were published."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a8f5e3d9-0fd1-4c52-a0c9-51c3408a826a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying economics at regional labor market surveys have documented how wage adjustment estimates shape broader conclusions. A strong documentary should inform its audience, challenge their assumptions, and ______ viewers to reconsider a familiar subject from an unexpected angle. Stakeholders should weigh the evidence against limitations the researchers document throughout the study. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage.', 'passage', '[{"id":"A","text":"invite","is_correct":true,"explanation":"Correct: \"invite\" satisfies Standard English conventions for this blank."},{"id":"B","text":"inviting","is_correct":false,"explanation":"[Dangling Modifier] present participle agrees with a nearby noun but breaks the parallel verb series after \"should.\""},{"id":"C","text":"invites","is_correct":false,"explanation":"[Proximity Decoy] third-person singular form breaks the established base-form verb series."},{"id":"D","text":"invited","is_correct":false,"explanation":"[Tense Shift] past participle disrupts the parallel base verbs \"inform\" and \"challenge\" after \"should.\""}]'::jsonb, 'A', 'Step 1 — Spot the series
The sentence lists what a documentary should do: {{yellow:inform, challenge}}, and a third action.

Step 2 — Keep it parallel
After ''should,'' all verbs must share the same base form.

Step 3 — Select the grammatical option
Choice A (invite) is grammatically correct.

Distractor analysis:
- B: [Dangling Modifier] present participle agrees with a nearby noun but breaks the parallel verb series after "should."
- C: [Proximity Decoy] third-person singular form breaks the established base-form verb series.
- D: [Tense Shift] past participle disrupts the parallel base verbs "inform" and "challenge" after "should."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('87997897-aa09-4c4d-8bdf-b37a5b7b06c8', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. The lead researcher, along with several junior analysts who reviewed the raw telemetry, ______ prepared a revised manuscript before the funding deadline arrived. Policy implications depend on whether the observed effect persists when practical constraints such as access vary. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them.', 'passage', '[{"id":"A","text":"have","is_correct":false,"explanation":"[Dangling Modifier] plural \"have\" agrees with \"analysts\" near the blank, not the singular subject \"researcher.\""},{"id":"B","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"C","text":"had","is_correct":false,"explanation":"[Proximity Decoy] past perfect breaks the present-perfect timeline implied by the ongoing manuscript preparation."},{"id":"D","text":"are","is_correct":false,"explanation":"[Tense Shift] \"are\" is a linking verb that leaves the participial phrase \"prepared\" dangling without a finite main verb."}]'::jsonb, 'B', 'Step 1 — Find the true subject
With {{yellow:The lead researcher, along with several junior analysts}}, the verb agrees with the main subject, not the phrase introduced by ''along with.''

Step 2 — Match tense and number
Singular ''researcher'' requires a singular auxiliary compatible with the completed preparation.

Step 3 — Select the grammatical option
Choice B (has) is grammatically correct.

Distractor analysis:
- A: [Dangling Modifier] plural "have" agrees with "analysts" near the blank, not the singular subject "researcher."
- C: [Proximity Decoy] past perfect breaks the present-perfect timeline implied by the ongoing manuscript preparation.
- D: [Tense Shift] "are" is a linking verb that leaves the participial phrase "prepared" dangling without a finite main verb.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('45f541bf-9521-41fe-b6b2-e59e0c0a0b79', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying economics at regional labor market surveys have documented how wage adjustment estimates shape broader conclusions. By the time the survey results were published in the spring, the research team ______ the same neighborhoods for nearly a decade, returning each year to record incremental changes. Stakeholders should weigh the evidence against limitations the researchers document throughout the study. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage.', 'passage', '[{"id":"A","text":"have studied","is_correct":false,"explanation":"[Tense Shift] present perfect plural cannot express an action completed before a past anchor event."},{"id":"B","text":"has studied","is_correct":false,"explanation":"[Dangling Modifier] present perfect agrees with a nearby plural noun but not the past-before-past timeline required here."},{"id":"C","text":"had studied","is_correct":true,"explanation":"Correct: \"had studied\" satisfies Standard English conventions for this blank."},{"id":"D","text":"was studied","is_correct":false,"explanation":"[Proximity Decoy] passive past breaks the active timeline anchored by \"were published.\""}]'::jsonb, 'C', 'Step 1 — Establish the timeline
The anchor event is past: {{yellow:By the time the survey results were published}}.

Step 2 — Show the earlier action
Studying happened before that past moment, requiring past perfect.

Step 3 — Select the grammatical option
Choice C (had studied) is grammatically correct.

Distractor analysis:
- A: [Tense Shift] present perfect plural cannot express an action completed before a past anchor event.
- B: [Dangling Modifier] present perfect agrees with a nearby plural noun but not the past-before-past timeline required here.
- D: [Proximity Decoy] passive past breaks the active timeline anchored by "were published."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2ec68986-9014-4535-b02f-f42915cea4a7', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. A strong documentary should inform its audience, challenge their assumptions, and ______ viewers to reconsider a familiar subject from an unexpected angle. Policy implications depend on whether the observed effect persists when practical constraints such as access vary. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them.', 'passage', '[{"id":"A","text":"inviting","is_correct":false,"explanation":"[Dangling Modifier] present participle agrees with a nearby noun but breaks the parallel verb series after \"should.\""},{"id":"B","text":"invites","is_correct":false,"explanation":"[Proximity Decoy] third-person singular form breaks the established base-form verb series."},{"id":"C","text":"invited","is_correct":false,"explanation":"[Tense Shift] past participle disrupts the parallel base verbs \"inform\" and \"challenge\" after \"should.\""},{"id":"D","text":"invite","is_correct":true,"explanation":"Correct: \"invite\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Spot the series
The sentence lists what a documentary should do: {{yellow:inform, challenge}}, and a third action.

Step 2 — Keep it parallel
After ''should,'' all verbs must share the same base form.

Step 3 — Select the grammatical option
Choice D (invite) is grammatically correct.

Distractor analysis:
- A: [Dangling Modifier] present participle agrees with a nearby noun but breaks the parallel verb series after "should."
- B: [Proximity Decoy] third-person singular form breaks the established base-form verb series.
- C: [Tense Shift] past participle disrupts the parallel base verbs "inform" and "challenge" after "should."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c499759a-85e7-4974-8f29-290fea82e047', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying archaeology at coastal excavation trenches have documented how ceramic shard assemblages shape broader conclusions. The lead researcher, along with several junior analysts who reviewed the raw telemetry, ______ prepared a revised manuscript before the funding deadline arrived. Classroom textbooks may still compress the result, though the original study qualifies every major claim. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled.', 'passage', '[{"id":"A","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"B","text":"have","is_correct":false,"explanation":"[Dangling Modifier] plural \"have\" agrees with \"analysts\" near the blank, not the singular subject \"researcher.\""},{"id":"C","text":"had","is_correct":false,"explanation":"[Proximity Decoy] past perfect breaks the present-perfect timeline implied by the ongoing manuscript preparation."},{"id":"D","text":"are","is_correct":false,"explanation":"[Tense Shift] \"are\" is a linking verb that leaves the participial phrase \"prepared\" dangling without a finite main verb."}]'::jsonb, 'A', 'Step 1 — Find the true subject
With {{yellow:The lead researcher, along with several junior analysts}}, the verb agrees with the main subject, not the phrase introduced by ''along with.''

Step 2 — Match tense and number
Singular ''researcher'' requires a singular auxiliary compatible with the completed preparation.

Step 3 — Select the grammatical option
Choice A (has) is grammatically correct.

Distractor analysis:
- B: [Dangling Modifier] plural "have" agrees with "analysts" near the blank, not the singular subject "researcher."
- C: [Proximity Decoy] past perfect breaks the present-perfect timeline implied by the ongoing manuscript preparation.
- D: [Tense Shift] "are" is a linking verb that leaves the participial phrase "prepared" dangling without a finite main verb.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('02ab53e1-5f0a-4c0b-a263-d9767f6f8c91', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. By the time the survey results were published in the spring, the research team ______ the same neighborhoods for nearly a decade, returning each year to record incremental changes. Policy implications depend on whether the observed effect persists when practical constraints such as access vary.', 'passage', '[{"id":"A","text":"have studied","is_correct":false,"explanation":"[Tense Shift] present perfect plural cannot express an action completed before a past anchor event."},{"id":"B","text":"had studied","is_correct":true,"explanation":"Correct: \"had studied\" satisfies Standard English conventions for this blank."},{"id":"C","text":"has studied","is_correct":false,"explanation":"[Dangling Modifier] present perfect agrees with a nearby plural noun but not the past-before-past timeline required here."},{"id":"D","text":"was studied","is_correct":false,"explanation":"[Proximity Decoy] passive past breaks the active timeline anchored by \"were published.\""}]'::jsonb, 'B', 'Step 1 — Establish the timeline
The anchor event is past: {{yellow:By the time the survey results were published}}.

Step 2 — Show the earlier action
Studying happened before that past moment, requiring past perfect.

Step 3 — Select the grammatical option
Choice B (had studied) is grammatically correct.

Distractor analysis:
- A: [Tense Shift] present perfect plural cannot express an action completed before a past anchor event.
- C: [Dangling Modifier] present perfect agrees with a nearby plural noun but not the past-before-past timeline required here.
- D: [Proximity Decoy] passive past breaks the active timeline anchored by "were published."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d8b2c54c-1029-4d3a-99b3-ba87b57bbdc2', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying archaeology at coastal excavation trenches have documented how ceramic shard assemblages shape broader conclusions. A strong documentary should inform its audience, challenge their assumptions, and ______ viewers to reconsider a familiar subject from an unexpected angle. Classroom textbooks may still compress the result, though the original study qualifies every major claim. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled.', 'passage', '[{"id":"A","text":"inviting","is_correct":false,"explanation":"[Dangling Modifier] present participle agrees with a nearby noun but breaks the parallel verb series after \"should.\""},{"id":"B","text":"invites","is_correct":false,"explanation":"[Proximity Decoy] third-person singular form breaks the established base-form verb series."},{"id":"C","text":"invite","is_correct":true,"explanation":"Correct: \"invite\" satisfies Standard English conventions for this blank."},{"id":"D","text":"invited","is_correct":false,"explanation":"[Tense Shift] past participle disrupts the parallel base verbs \"inform\" and \"challenge\" after \"should.\""}]'::jsonb, 'C', 'Step 1 — Spot the series
The sentence lists what a documentary should do: {{yellow:inform, challenge}}, and a third action.

Step 2 — Keep it parallel
After ''should,'' all verbs must share the same base form.

Step 3 — Select the grammatical option
Choice C (invite) is grammatically correct.

Distractor analysis:
- A: [Dangling Modifier] present participle agrees with a nearby noun but breaks the parallel verb series after "should."
- B: [Proximity Decoy] third-person singular form breaks the established base-form verb series.
- D: [Tense Shift] past participle disrupts the parallel base verbs "inform" and "challenge" after "should."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0557adc4-eec8-4755-b383-b1f94dc17cca', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. The lead researcher, along with several junior analysts who reviewed the raw telemetry, ______ prepared a revised manuscript before the funding deadline arrived. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges. Stakeholders should weigh the evidence against limitations the researchers document throughout the study.', 'passage', '[{"id":"A","text":"have","is_correct":false,"explanation":"[Dangling Modifier] plural \"have\" agrees with \"analysts\" near the blank, not the singular subject \"researcher.\""},{"id":"B","text":"had","is_correct":false,"explanation":"[Proximity Decoy] past perfect breaks the present-perfect timeline implied by the ongoing manuscript preparation."},{"id":"C","text":"are","is_correct":false,"explanation":"[Tense Shift] \"are\" is a linking verb that leaves the participial phrase \"prepared\" dangling without a finite main verb."},{"id":"D","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Find the true subject
With {{yellow:The lead researcher, along with several junior analysts}}, the verb agrees with the main subject, not the phrase introduced by ''along with.''

Step 2 — Match tense and number
Singular ''researcher'' requires a singular auxiliary compatible with the completed preparation.

Step 3 — Select the grammatical option
Choice D (has) is grammatically correct.

Distractor analysis:
- A: [Dangling Modifier] plural "have" agrees with "analysts" near the blank, not the singular subject "researcher."
- B: [Proximity Decoy] past perfect breaks the present-perfect timeline implied by the ongoing manuscript preparation.
- C: [Tense Shift] "are" is a linking verb that leaves the participial phrase "prepared" dangling without a finite main verb.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8d1cf2c3-b768-4506-bae9-089d000d8817', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying archaeology at coastal excavation trenches have documented how ceramic shard assemblages shape broader conclusions. By the time the survey results were published in the spring, the research team ______ the same neighborhoods for nearly a decade, returning each year to record incremental changes. Classroom textbooks may still compress the result, though the original study qualifies every major claim.', 'passage', '[{"id":"A","text":"had studied","is_correct":true,"explanation":"Correct: \"had studied\" satisfies Standard English conventions for this blank."},{"id":"B","text":"have studied","is_correct":false,"explanation":"[Tense Shift] present perfect plural cannot express an action completed before a past anchor event."},{"id":"C","text":"has studied","is_correct":false,"explanation":"[Dangling Modifier] present perfect agrees with a nearby plural noun but not the past-before-past timeline required here."},{"id":"D","text":"was studied","is_correct":false,"explanation":"[Proximity Decoy] passive past breaks the active timeline anchored by \"were published.\""}]'::jsonb, 'A', 'Step 1 — Establish the timeline
The anchor event is past: {{yellow:By the time the survey results were published}}.

Step 2 — Show the earlier action
Studying happened before that past moment, requiring past perfect.

Step 3 — Select the grammatical option
Choice A (had studied) is grammatically correct.

Distractor analysis:
- B: [Tense Shift] present perfect plural cannot express an action completed before a past anchor event.
- C: [Dangling Modifier] present perfect agrees with a nearby plural noun but not the past-before-past timeline required here.
- D: [Proximity Decoy] passive past breaks the active timeline anchored by "were published."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9cb88149-c2bc-4c2a-b4f8-5eb80e05c61d', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. A strong documentary should inform its audience, challenge their assumptions, and ______ viewers to reconsider a familiar subject from an unexpected angle. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges. Stakeholders should weigh the evidence against limitations the researchers document throughout the study.', 'passage', '[{"id":"A","text":"inviting","is_correct":false,"explanation":"[Dangling Modifier] present participle agrees with a nearby noun but breaks the parallel verb series after \"should.\""},{"id":"B","text":"invite","is_correct":true,"explanation":"Correct: \"invite\" satisfies Standard English conventions for this blank."},{"id":"C","text":"invites","is_correct":false,"explanation":"[Proximity Decoy] third-person singular form breaks the established base-form verb series."},{"id":"D","text":"invited","is_correct":false,"explanation":"[Tense Shift] past participle disrupts the parallel base verbs \"inform\" and \"challenge\" after \"should.\""}]'::jsonb, 'B', 'Step 1 — Spot the series
The sentence lists what a documentary should do: {{yellow:inform, challenge}}, and a third action.

Step 2 — Keep it parallel
After ''should,'' all verbs must share the same base form.

Step 3 — Select the grammatical option
Choice B (invite) is grammatically correct.

Distractor analysis:
- A: [Dangling Modifier] present participle agrees with a nearby noun but breaks the parallel verb series after "should."
- C: [Proximity Decoy] third-person singular form breaks the established base-form verb series.
- D: [Tense Shift] past participle disrupts the parallel base verbs "inform" and "challenge" after "should."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('72925fc9-a6c4-4dff-bc4e-e98d5c37a71f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying ecology at mangrove restoration plots have documented how seedling survival rates shape broader conclusions. The lead researcher, along with several junior analysts who reviewed the raw telemetry, ______ prepared a revised manuscript before the funding deadline arrived. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical. Policy implications depend on whether the observed effect persists when practical constraints such as access vary.', 'passage', '[{"id":"A","text":"have","is_correct":false,"explanation":"[Dangling Modifier] plural \"have\" agrees with \"analysts\" near the blank, not the singular subject \"researcher.\""},{"id":"B","text":"had","is_correct":false,"explanation":"[Proximity Decoy] past perfect breaks the present-perfect timeline implied by the ongoing manuscript preparation."},{"id":"C","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"D","text":"are","is_correct":false,"explanation":"[Tense Shift] \"are\" is a linking verb that leaves the participial phrase \"prepared\" dangling without a finite main verb."}]'::jsonb, 'C', 'Step 1 — Find the true subject
With {{yellow:The lead researcher, along with several junior analysts}}, the verb agrees with the main subject, not the phrase introduced by ''along with.''

Step 2 — Match tense and number
Singular ''researcher'' requires a singular auxiliary compatible with the completed preparation.

Step 3 — Select the grammatical option
Choice C (has) is grammatically correct.

Distractor analysis:
- A: [Dangling Modifier] plural "have" agrees with "analysts" near the blank, not the singular subject "researcher."
- B: [Proximity Decoy] past perfect breaks the present-perfect timeline implied by the ongoing manuscript preparation.
- D: [Tense Shift] "are" is a linking verb that leaves the participial phrase "prepared" dangling without a finite main verb.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('602d2c3d-25a0-483f-98f7-e13da3d7c6e3', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. By the time the survey results were published in the spring, the research team ______ the same neighborhoods for nearly a decade, returning each year to record incremental changes. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges.', 'passage', '[{"id":"A","text":"have studied","is_correct":false,"explanation":"[Tense Shift] present perfect plural cannot express an action completed before a past anchor event."},{"id":"B","text":"has studied","is_correct":false,"explanation":"[Dangling Modifier] present perfect agrees with a nearby plural noun but not the past-before-past timeline required here."},{"id":"C","text":"was studied","is_correct":false,"explanation":"[Proximity Decoy] passive past breaks the active timeline anchored by \"were published.\""},{"id":"D","text":"had studied","is_correct":true,"explanation":"Correct: \"had studied\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Establish the timeline
The anchor event is past: {{yellow:By the time the survey results were published}}.

Step 2 — Show the earlier action
Studying happened before that past moment, requiring past perfect.

Step 3 — Select the grammatical option
Choice D (had studied) is grammatically correct.

Distractor analysis:
- A: [Tense Shift] present perfect plural cannot express an action completed before a past anchor event.
- B: [Dangling Modifier] present perfect agrees with a nearby plural noun but not the past-before-past timeline required here.
- C: [Proximity Decoy] passive past breaks the active timeline anchored by "were published."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9800ae92-8700-4b4c-b657-902d06f9dd4d', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying ecology at mangrove restoration plots have documented how seedling survival rates shape broader conclusions. A strong documentary should inform its audience, challenge their assumptions, and ______ viewers to reconsider a familiar subject from an unexpected angle. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical. Policy implications depend on whether the observed effect persists when practical constraints such as access vary.', 'passage', '[{"id":"A","text":"invite","is_correct":true,"explanation":"Correct: \"invite\" satisfies Standard English conventions for this blank."},{"id":"B","text":"inviting","is_correct":false,"explanation":"[Dangling Modifier] present participle agrees with a nearby noun but breaks the parallel verb series after \"should.\""},{"id":"C","text":"invites","is_correct":false,"explanation":"[Proximity Decoy] third-person singular form breaks the established base-form verb series."},{"id":"D","text":"invited","is_correct":false,"explanation":"[Tense Shift] past participle disrupts the parallel base verbs \"inform\" and \"challenge\" after \"should.\""}]'::jsonb, 'A', 'Step 1 — Spot the series
The sentence lists what a documentary should do: {{yellow:inform, challenge}}, and a third action.

Step 2 — Keep it parallel
After ''should,'' all verbs must share the same base form.

Step 3 — Select the grammatical option
Choice A (invite) is grammatically correct.

Distractor analysis:
- B: [Dangling Modifier] present participle agrees with a nearby noun but breaks the parallel verb series after "should."
- C: [Proximity Decoy] third-person singular form breaks the established base-form verb series.
- D: [Tense Shift] past participle disrupts the parallel base verbs "inform" and "challenge" after "should."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2a0e4a77-32ef-40e3-9ced-dddfd2743f83', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. The lead researcher, along with several junior analysts who reviewed the raw telemetry, ______ prepared a revised manuscript before the funding deadline arrived. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids. Classroom textbooks may still compress the result, though the original study qualifies every major claim.', 'passage', '[{"id":"A","text":"have","is_correct":false,"explanation":"[Dangling Modifier] plural \"have\" agrees with \"analysts\" near the blank, not the singular subject \"researcher.\""},{"id":"B","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"C","text":"had","is_correct":false,"explanation":"[Proximity Decoy] past perfect breaks the present-perfect timeline implied by the ongoing manuscript preparation."},{"id":"D","text":"are","is_correct":false,"explanation":"[Tense Shift] \"are\" is a linking verb that leaves the participial phrase \"prepared\" dangling without a finite main verb."}]'::jsonb, 'B', 'Step 1 — Find the true subject
With {{yellow:The lead researcher, along with several junior analysts}}, the verb agrees with the main subject, not the phrase introduced by ''along with.''

Step 2 — Match tense and number
Singular ''researcher'' requires a singular auxiliary compatible with the completed preparation.

Step 3 — Select the grammatical option
Choice B (has) is grammatically correct.

Distractor analysis:
- A: [Dangling Modifier] plural "have" agrees with "analysts" near the blank, not the singular subject "researcher."
- C: [Proximity Decoy] past perfect breaks the present-perfect timeline implied by the ongoing manuscript preparation.
- D: [Tense Shift] "are" is a linking verb that leaves the participial phrase "prepared" dangling without a finite main verb.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('65e6cc63-081d-479b-a615-7900a826f86e', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying ecology at mangrove restoration plots have documented how seedling survival rates shape broader conclusions. By the time the survey results were published in the spring, the research team ______ the same neighborhoods for nearly a decade, returning each year to record incremental changes. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical. Policy implications depend on whether the observed effect persists when practical constraints such as access vary.', 'passage', '[{"id":"A","text":"have studied","is_correct":false,"explanation":"[Tense Shift] present perfect plural cannot express an action completed before a past anchor event."},{"id":"B","text":"has studied","is_correct":false,"explanation":"[Dangling Modifier] present perfect agrees with a nearby plural noun but not the past-before-past timeline required here."},{"id":"C","text":"had studied","is_correct":true,"explanation":"Correct: \"had studied\" satisfies Standard English conventions for this blank."},{"id":"D","text":"was studied","is_correct":false,"explanation":"[Proximity Decoy] passive past breaks the active timeline anchored by \"were published.\""}]'::jsonb, 'C', 'Step 1 — Establish the timeline
The anchor event is past: {{yellow:By the time the survey results were published}}.

Step 2 — Show the earlier action
Studying happened before that past moment, requiring past perfect.

Step 3 — Select the grammatical option
Choice C (had studied) is grammatically correct.

Distractor analysis:
- A: [Tense Shift] present perfect plural cannot express an action completed before a past anchor event.
- B: [Dangling Modifier] present perfect agrees with a nearby plural noun but not the past-before-past timeline required here.
- D: [Proximity Decoy] passive past breaks the active timeline anchored by "were published."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c94d9dc0-64b1-4034-9360-4f53e5907dae', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. Neither the lead engineer nor the junior technicians who assembled the prototype overnight ______ able to explain why the sensor failed during the final calibration test. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical.', 'passage', '[{"id":"A","text":"was","is_correct":false,"explanation":"[Dangling Modifier] singular \"was\" agrees with \"engineer,\" the farther noun, instead of the nearer plural \"technicians.\""},{"id":"B","text":"has","is_correct":false,"explanation":"[Tense Shift] singular present perfect misaligns with the plural nearer subject and past context."},{"id":"C","text":"is","is_correct":false,"explanation":"[Proximity Decoy] present tense breaks the past narrative established by \"assembled\" and \"failed.\""},{"id":"D","text":"were","is_correct":true,"explanation":"Correct: \"were\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Apply the neither/nor rule
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
VALUES ('c40262ee-3beb-4d42-86b4-10d0e3650128', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying economics at regional labor market surveys have documented how wage adjustment estimates shape broader conclusions. Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that rising carbon dioxide forced many deciduous species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them.', 'passage', '[{"id":"A","text":"flourished","is_correct":true,"explanation":"Correct: \"flourished\" satisfies Standard English conventions for this blank."},{"id":"B","text":"flourishes","is_correct":false,"explanation":"[Proximity Decoy] singular present breaks both the plural subject and the historical past timeline."},{"id":"C","text":"flourish","is_correct":false,"explanation":"[Dangling Modifier] present \"flourish\" tracks the nearby plural \"populations\" but breaks the past epoch established by \"argued,\" \"forced,\" and \"went.\""},{"id":"D","text":"thrives","is_correct":false,"explanation":"[Tense Shift] present \"thrives\" introduces a dangling-style mismatch with the historical past frame of the passage."}]'::jsonb, 'A', 'Step 1 — Match subject and timeline
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
VALUES ('5410bcbb-3ba1-4a2b-a34e-c6a79a0aa8a5', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. Nestled deep within the highly pressurized geothermal vents of the mid-ocean ridge, where temperatures can exceed $400^\circ\text{C}$, ______ vast colonies of chemosynthetic archaea, which survive without sunlight by exploiting chemical gradients along the ocean floor. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage.', 'passage', '[{"id":"A","text":"flourishes","is_correct":false,"explanation":"[Tense Shift] singular \"flourishes\" misaligns with the plural subject in this inverted finite-verb position."},{"id":"B","text":"thrive","is_correct":true,"explanation":"Correct: \"thrive\" satisfies Standard English conventions for this blank."},{"id":"C","text":"flourish","is_correct":false,"explanation":"[Proximity Decoy] plural \"flourish\" tracks the nearer plural noun but breaks inverted agreement with the true subject after the blank."},{"id":"D","text":"thrives","is_correct":false,"explanation":"[Dangling Modifier] singular \"thrives\" agrees with a nearby singular noun in the opening phrase, not the plural subject \"vast colonies of chemosynthetic archaea.\""}]'::jsonb, 'B', 'Step 1 — Unpack inverted syntax
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
VALUES ('bb2f98d8-7efd-49e5-bc19-c1f623f75303', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying economics at regional labor market surveys have documented how wage adjustment estimates shape broader conclusions. Neither the lead engineer nor the junior technicians who assembled the prototype overnight ______ able to explain why the sensor failed during the final calibration test. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids.', 'passage', '[{"id":"A","text":"was","is_correct":false,"explanation":"[Dangling Modifier] singular \"was\" agrees with \"engineer,\" the farther noun, instead of the nearer plural \"technicians.\""},{"id":"B","text":"has","is_correct":false,"explanation":"[Tense Shift] singular present perfect misaligns with the plural nearer subject and past context."},{"id":"C","text":"were","is_correct":true,"explanation":"Correct: \"were\" satisfies Standard English conventions for this blank."},{"id":"D","text":"is","is_correct":false,"explanation":"[Proximity Decoy] present tense breaks the past narrative established by \"assembled\" and \"failed.\""}]'::jsonb, 'C', 'Step 1 — Apply the neither/nor rule
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
VALUES ('db0850be-d7b2-44de-a40e-20ea475fd23d', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that rising carbon dioxide forced many deciduous species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled.', 'passage', '[{"id":"A","text":"flourishes","is_correct":false,"explanation":"[Proximity Decoy] singular present breaks both the plural subject and the historical past timeline."},{"id":"B","text":"flourish","is_correct":false,"explanation":"[Dangling Modifier] present \"flourish\" tracks the nearby plural \"populations\" but breaks the past epoch established by \"argued,\" \"forced,\" and \"went.\""},{"id":"C","text":"thrives","is_correct":false,"explanation":"[Tense Shift] present \"thrives\" introduces a dangling-style mismatch with the historical past frame of the passage."},{"id":"D","text":"flourished","is_correct":true,"explanation":"Correct: \"flourished\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Match subject and timeline
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
VALUES ('f79ea422-209e-4bf3-a58a-7bb65647e430', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying economics at regional labor market surveys have documented how wage adjustment estimates shape broader conclusions. Nestled deep within the highly pressurized geothermal vents of the mid-ocean ridge, where temperatures can exceed $400^\circ\text{C}$, ______ vast colonies of chemosynthetic archaea, which survive without sunlight by exploiting chemical gradients along the ocean floor. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them.', 'passage', '[{"id":"A","text":"thrive","is_correct":true,"explanation":"Correct: \"thrive\" satisfies Standard English conventions for this blank."},{"id":"B","text":"flourishes","is_correct":false,"explanation":"[Tense Shift] singular \"flourishes\" misaligns with the plural subject in this inverted finite-verb position."},{"id":"C","text":"flourish","is_correct":false,"explanation":"[Proximity Decoy] plural \"flourish\" tracks the nearer plural noun but breaks inverted agreement with the true subject after the blank."},{"id":"D","text":"thrives","is_correct":false,"explanation":"[Dangling Modifier] singular \"thrives\" agrees with a nearby singular noun in the opening phrase, not the plural subject \"vast colonies of chemosynthetic archaea.\""}]'::jsonb, 'A', 'Step 1 — Unpack inverted syntax
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
VALUES ('b8baa7f4-f1c6-4e2c-a96c-57a1d00b69b6', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. Neither the lead engineer nor the junior technicians who assembled the prototype overnight ______ able to explain why the sensor failed during the final calibration test. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice.', 'passage', '[{"id":"A","text":"was","is_correct":false,"explanation":"[Dangling Modifier] singular \"was\" agrees with \"engineer,\" the farther noun, instead of the nearer plural \"technicians.\""},{"id":"B","text":"were","is_correct":true,"explanation":"Correct: \"were\" satisfies Standard English conventions for this blank."},{"id":"C","text":"has","is_correct":false,"explanation":"[Tense Shift] singular present perfect misaligns with the plural nearer subject and past context."},{"id":"D","text":"is","is_correct":false,"explanation":"[Proximity Decoy] present tense breaks the past narrative established by \"assembled\" and \"failed.\""}]'::jsonb, 'B', 'Step 1 — Apply the neither/nor rule
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
VALUES ('defc05ba-bcfb-49f9-b31c-77db815e11a7', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying archaeology at coastal excavation trenches have documented how ceramic shard assemblages shape broader conclusions. Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that rising carbon dioxide forced many deciduous species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct. Stakeholders should weigh the evidence against limitations the researchers document throughout the study.', 'passage', '[{"id":"A","text":"flourishes","is_correct":false,"explanation":"[Proximity Decoy] singular present breaks both the plural subject and the historical past timeline."},{"id":"B","text":"flourish","is_correct":false,"explanation":"[Dangling Modifier] present \"flourish\" tracks the nearby plural \"populations\" but breaks the past epoch established by \"argued,\" \"forced,\" and \"went.\""},{"id":"C","text":"flourished","is_correct":true,"explanation":"Correct: \"flourished\" satisfies Standard English conventions for this blank."},{"id":"D","text":"thrives","is_correct":false,"explanation":"[Tense Shift] present \"thrives\" introduces a dangling-style mismatch with the historical past frame of the passage."}]'::jsonb, 'C', 'Step 1 — Match subject and timeline
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
VALUES ('f34b2660-9dff-46da-a68b-1c1130bebac0', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. Nestled deep within the highly pressurized geothermal vents of the mid-ocean ridge, where temperatures can exceed $400^\circ\text{C}$, ______ vast colonies of chemosynthetic archaea, which survive without sunlight by exploiting chemical gradients along the ocean floor. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled.', 'passage', '[{"id":"A","text":"flourishes","is_correct":false,"explanation":"[Tense Shift] singular \"flourishes\" misaligns with the plural subject in this inverted finite-verb position."},{"id":"B","text":"flourish","is_correct":false,"explanation":"[Proximity Decoy] plural \"flourish\" tracks the nearer plural noun but breaks inverted agreement with the true subject after the blank."},{"id":"C","text":"thrives","is_correct":false,"explanation":"[Dangling Modifier] singular \"thrives\" agrees with a nearby singular noun in the opening phrase, not the plural subject \"vast colonies of chemosynthetic archaea.\""},{"id":"D","text":"thrive","is_correct":true,"explanation":"Correct: \"thrive\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Unpack inverted syntax
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
VALUES ('9431ecd9-cbfd-4cd3-b81d-54aa1478da76', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying archaeology at coastal excavation trenches have documented how ceramic shard assemblages shape broader conclusions. Neither the lead engineer nor the junior technicians who assembled the prototype overnight ______ able to explain why the sensor failed during the final calibration test. Stakeholders should weigh the evidence against limitations the researchers document throughout the study. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage.', 'passage', '[{"id":"A","text":"were","is_correct":true,"explanation":"Correct: \"were\" satisfies Standard English conventions for this blank."},{"id":"B","text":"was","is_correct":false,"explanation":"[Dangling Modifier] singular \"was\" agrees with \"engineer,\" the farther noun, instead of the nearer plural \"technicians.\""},{"id":"C","text":"has","is_correct":false,"explanation":"[Tense Shift] singular present perfect misaligns with the plural nearer subject and past context."},{"id":"D","text":"is","is_correct":false,"explanation":"[Proximity Decoy] present tense breaks the past narrative established by \"assembled\" and \"failed.\""}]'::jsonb, 'A', 'Step 1 — Apply the neither/nor rule
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
VALUES ('4b0ff7c2-628f-4dbd-9fbc-70fba38810d4', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that rising carbon dioxide forced many deciduous species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct. Policy implications depend on whether the observed effect persists when practical constraints such as access vary.', 'passage', '[{"id":"A","text":"flourishes","is_correct":false,"explanation":"[Proximity Decoy] singular present breaks both the plural subject and the historical past timeline."},{"id":"B","text":"flourished","is_correct":true,"explanation":"Correct: \"flourished\" satisfies Standard English conventions for this blank."},{"id":"C","text":"flourish","is_correct":false,"explanation":"[Dangling Modifier] present \"flourish\" tracks the nearby plural \"populations\" but breaks the past epoch established by \"argued,\" \"forced,\" and \"went.\""},{"id":"D","text":"thrives","is_correct":false,"explanation":"[Tense Shift] present \"thrives\" introduces a dangling-style mismatch with the historical past frame of the passage."}]'::jsonb, 'B', 'Step 1 — Match subject and timeline
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
VALUES ('b8f2b04b-aba3-47f6-ac59-2eb66bb6971d', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying archaeology at coastal excavation trenches have documented how ceramic shard assemblages shape broader conclusions. Nestled deep within the highly pressurized geothermal vents of the mid-ocean ridge, where temperatures can exceed $400^\circ\text{C}$, ______ vast colonies of chemosynthetic archaea, which survive without sunlight by exploiting chemical gradients along the ocean floor. Stakeholders should weigh the evidence against limitations the researchers document throughout the study.', 'passage', '[{"id":"A","text":"flourishes","is_correct":false,"explanation":"[Tense Shift] singular \"flourishes\" misaligns with the plural subject in this inverted finite-verb position."},{"id":"B","text":"flourish","is_correct":false,"explanation":"[Proximity Decoy] plural \"flourish\" tracks the nearer plural noun but breaks inverted agreement with the true subject after the blank."},{"id":"C","text":"thrive","is_correct":true,"explanation":"Correct: \"thrive\" satisfies Standard English conventions for this blank."},{"id":"D","text":"thrives","is_correct":false,"explanation":"[Dangling Modifier] singular \"thrives\" agrees with a nearby singular noun in the opening phrase, not the plural subject \"vast colonies of chemosynthetic archaea.\""}]'::jsonb, 'C', 'Step 1 — Unpack inverted syntax
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
VALUES ('96b04c88-1374-4296-953f-542a9adf6855', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. Neither the lead engineer nor the junior technicians who assembled the prototype overnight ______ able to explain why the sensor failed during the final calibration test. Policy implications depend on whether the observed effect persists when practical constraints such as access vary. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them.', 'passage', '[{"id":"A","text":"was","is_correct":false,"explanation":"[Dangling Modifier] singular \"was\" agrees with \"engineer,\" the farther noun, instead of the nearer plural \"technicians.\""},{"id":"B","text":"has","is_correct":false,"explanation":"[Tense Shift] singular present perfect misaligns with the plural nearer subject and past context."},{"id":"C","text":"is","is_correct":false,"explanation":"[Proximity Decoy] present tense breaks the past narrative established by \"assembled\" and \"failed.\""},{"id":"D","text":"were","is_correct":true,"explanation":"Correct: \"were\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Apply the neither/nor rule
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
VALUES ('14565cab-e06f-4942-9819-71625437582e', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying ecology at mangrove restoration plots have documented how seedling survival rates shape broader conclusions. Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that rising carbon dioxide forced many deciduous species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct. Classroom textbooks may still compress the result, though the original study qualifies every major claim.', 'passage', '[{"id":"A","text":"flourished","is_correct":true,"explanation":"Correct: \"flourished\" satisfies Standard English conventions for this blank."},{"id":"B","text":"flourishes","is_correct":false,"explanation":"[Proximity Decoy] singular present breaks both the plural subject and the historical past timeline."},{"id":"C","text":"flourish","is_correct":false,"explanation":"[Dangling Modifier] present \"flourish\" tracks the nearby plural \"populations\" but breaks the past epoch established by \"argued,\" \"forced,\" and \"went.\""},{"id":"D","text":"thrives","is_correct":false,"explanation":"[Tense Shift] present \"thrives\" introduces a dangling-style mismatch with the historical past frame of the passage."}]'::jsonb, 'A', 'Step 1 — Match subject and timeline
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
VALUES ('7306b61a-0037-4903-9720-dc36870ef73a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. Nestled deep within the highly pressurized geothermal vents of the mid-ocean ridge, where temperatures can exceed $400^\circ\text{C}$, ______ vast colonies of chemosynthetic archaea, which survive without sunlight by exploiting chemical gradients along the ocean floor. Policy implications depend on whether the observed effect persists when practical constraints such as access vary.', 'passage', '[{"id":"A","text":"flourishes","is_correct":false,"explanation":"[Tense Shift] singular \"flourishes\" misaligns with the plural subject in this inverted finite-verb position."},{"id":"B","text":"thrive","is_correct":true,"explanation":"Correct: \"thrive\" satisfies Standard English conventions for this blank."},{"id":"C","text":"flourish","is_correct":false,"explanation":"[Proximity Decoy] plural \"flourish\" tracks the nearer plural noun but breaks inverted agreement with the true subject after the blank."},{"id":"D","text":"thrives","is_correct":false,"explanation":"[Dangling Modifier] singular \"thrives\" agrees with a nearby singular noun in the opening phrase, not the plural subject \"vast colonies of chemosynthetic archaea.\""}]'::jsonb, 'B', 'Step 1 — Unpack inverted syntax
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
VALUES ('362fcfef-0533-4458-964a-4f63fb17419d', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying ecology at mangrove restoration plots have documented how seedling survival rates shape broader conclusions. Neither the lead engineer nor the junior technicians who assembled the prototype overnight ______ able to explain why the sensor failed during the final calibration test. Classroom textbooks may still compress the result, though the original study qualifies every major claim. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled.', 'passage', '[{"id":"A","text":"was","is_correct":false,"explanation":"[Dangling Modifier] singular \"was\" agrees with \"engineer,\" the farther noun, instead of the nearer plural \"technicians.\""},{"id":"B","text":"has","is_correct":false,"explanation":"[Tense Shift] singular present perfect misaligns with the plural nearer subject and past context."},{"id":"C","text":"were","is_correct":true,"explanation":"Correct: \"were\" satisfies Standard English conventions for this blank."},{"id":"D","text":"is","is_correct":false,"explanation":"[Proximity Decoy] present tense breaks the past narrative established by \"assembled\" and \"failed.\""}]'::jsonb, 'C', 'Step 1 — Apply the neither/nor rule
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
VALUES ('adc48000-679d-4fc3-a579-b8373a07a5ab', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that rising carbon dioxide forced many deciduous species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges.', 'passage', '[{"id":"A","text":"flourishes","is_correct":false,"explanation":"[Proximity Decoy] singular present breaks both the plural subject and the historical past timeline."},{"id":"B","text":"flourish","is_correct":false,"explanation":"[Dangling Modifier] present \"flourish\" tracks the nearby plural \"populations\" but breaks the past epoch established by \"argued,\" \"forced,\" and \"went.\""},{"id":"C","text":"thrives","is_correct":false,"explanation":"[Tense Shift] present \"thrives\" introduces a dangling-style mismatch with the historical past frame of the passage."},{"id":"D","text":"flourished","is_correct":true,"explanation":"Correct: \"flourished\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Match subject and timeline
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
VALUES ('10dc90d7-1b35-4517-b538-2ad26c69136e', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying ecology at mangrove restoration plots have documented how seedling survival rates shape broader conclusions. Nestled deep within the highly pressurized geothermal vents of the mid-ocean ridge, where temperatures can exceed $400^\circ\text{C}$, ______ vast colonies of chemosynthetic archaea, which survive without sunlight by exploiting chemical gradients along the ocean floor. Classroom textbooks may still compress the result, though the original study qualifies every major claim.', 'passage', '[{"id":"A","text":"thrive","is_correct":true,"explanation":"Correct: \"thrive\" satisfies Standard English conventions for this blank."},{"id":"B","text":"flourishes","is_correct":false,"explanation":"[Tense Shift] singular \"flourishes\" misaligns with the plural subject in this inverted finite-verb position."},{"id":"C","text":"flourish","is_correct":false,"explanation":"[Proximity Decoy] plural \"flourish\" tracks the nearer plural noun but breaks inverted agreement with the true subject after the blank."},{"id":"D","text":"thrives","is_correct":false,"explanation":"[Dangling Modifier] singular \"thrives\" agrees with a nearby singular noun in the opening phrase, not the plural subject \"vast colonies of chemosynthetic archaea.\""}]'::jsonb, 'A', 'Step 1 — Unpack inverted syntax
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
VALUES ('cc5b7a64-f491-450d-a1be-a4db48c98b38', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. Neither the lead engineer nor the junior technicians who assembled the prototype overnight ______ able to explain why the sensor failed during the final calibration test. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges. Stakeholders should weigh the evidence against limitations the researchers document throughout the study.', 'passage', '[{"id":"A","text":"was","is_correct":false,"explanation":"[Dangling Modifier] singular \"was\" agrees with \"engineer,\" the farther noun, instead of the nearer plural \"technicians.\""},{"id":"B","text":"were","is_correct":true,"explanation":"Correct: \"were\" satisfies Standard English conventions for this blank."},{"id":"C","text":"has","is_correct":false,"explanation":"[Tense Shift] singular present perfect misaligns with the plural nearer subject and past context."},{"id":"D","text":"is","is_correct":false,"explanation":"[Proximity Decoy] present tense breaks the past narrative established by \"assembled\" and \"failed.\""}]'::jsonb, 'B', 'Step 1 — Apply the neither/nor rule
With {{yellow:Neither the lead engineer nor the junior technicians}}, the verb agrees with the nearer subject.

Step 2 — Check the nearer subject
''Technicians'' is plural, so the plural verb ''were'' is required.

Step 3 — Select the grammatical option
Choice B (were) is grammatically correct.

Distractor analysis:
- A: [Dangling Modifier] singular "was" agrees with "engineer," the farther noun, instead of the nearer plural "technicians."
- C: [Tense Shift] singular present perfect misaligns with the plural nearer subject and past context.
- D: [Proximity Decoy] present tense breaks the past narrative established by "assembled" and "failed."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
COMMIT;
