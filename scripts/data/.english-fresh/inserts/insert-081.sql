BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f2e1b5d9-cb7a-4c0d-bfcf-61374eb6f6c5', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying archaeology at coastal excavation trenches have documented how ceramic shard assemblages shape broader conclusions. A strong documentary should inform its audience, challenge their assumptions, and ______ viewers to reconsider a familiar subject from an unexpected angle. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids.', 'passage', '[{"id":"A","text":"inviting","is_correct":false,"explanation":"[Dangling Modifier] present participle agrees with a nearby noun but breaks the parallel verb series after \"should.\""},{"id":"B","text":"invites","is_correct":false,"explanation":"[Proximity Decoy] third-person singular form breaks the established base-form verb series."},{"id":"C","text":"invite","is_correct":true,"explanation":"Correct: \"invite\" satisfies Standard English conventions for this blank."},{"id":"D","text":"invited","is_correct":false,"explanation":"[Tense Shift] past participle disrupts the parallel base verbs \"inform\" and \"challenge\" after \"should.\""}]'::jsonb, 'C', 'Step 1 — Spot the series
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
VALUES ('364d507c-e3fa-44f4-b5f5-bf6daa5401e4', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. The lead researcher, along with several junior analysts who reviewed the raw telemetry, ______ prepared a revised manuscript before the funding deadline arrived. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice.', 'passage', '[{"id":"A","text":"have","is_correct":false,"explanation":"[Dangling Modifier] plural \"have\" agrees with \"analysts\" near the blank, not the singular subject \"researcher.\""},{"id":"B","text":"had","is_correct":false,"explanation":"[Proximity Decoy] past perfect breaks the present-perfect timeline implied by the ongoing manuscript preparation."},{"id":"C","text":"are","is_correct":false,"explanation":"[Tense Shift] \"are\" is a linking verb that leaves the participial phrase \"prepared\" dangling without a finite main verb."},{"id":"D","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Find the true subject
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
VALUES ('74cbcd8a-9ca9-47e1-8095-27d9da9bac8b', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying archaeology at coastal excavation trenches have documented how ceramic shard assemblages shape broader conclusions. By the time the survey results were published in the spring, the research team ______ the same neighborhoods for nearly a decade, returning each year to record incremental changes. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids.', 'passage', '[{"id":"A","text":"had studied","is_correct":true,"explanation":"Correct: \"had studied\" satisfies Standard English conventions for this blank."},{"id":"B","text":"have studied","is_correct":false,"explanation":"[Tense Shift] present perfect plural cannot express an action completed before a past anchor event."},{"id":"C","text":"has studied","is_correct":false,"explanation":"[Dangling Modifier] present perfect agrees with a nearby plural noun but not the past-before-past timeline required here."},{"id":"D","text":"was studied","is_correct":false,"explanation":"[Proximity Decoy] passive past breaks the active timeline anchored by \"were published.\""}]'::jsonb, 'A', 'Step 1 — Establish the timeline
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
VALUES ('8d56dafa-f094-4419-a2eb-dbdbcb2b1aff', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. A strong documentary should inform its audience, challenge their assumptions, and ______ viewers to reconsider a familiar subject from an unexpected angle. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice.', 'passage', '[{"id":"A","text":"inviting","is_correct":false,"explanation":"[Dangling Modifier] present participle agrees with a nearby noun but breaks the parallel verb series after \"should.\""},{"id":"B","text":"invite","is_correct":true,"explanation":"Correct: \"invite\" satisfies Standard English conventions for this blank."},{"id":"C","text":"invites","is_correct":false,"explanation":"[Proximity Decoy] third-person singular form breaks the established base-form verb series."},{"id":"D","text":"invited","is_correct":false,"explanation":"[Tense Shift] past participle disrupts the parallel base verbs \"inform\" and \"challenge\" after \"should.\""}]'::jsonb, 'B', 'Step 1 — Spot the series
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
VALUES ('3cf88f4c-7d29-4199-90f0-da4625975253', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying ecology at mangrove restoration plots have documented how seedling survival rates shape broader conclusions. The lead researcher, along with several junior analysts who reviewed the raw telemetry, ______ prepared a revised manuscript before the funding deadline arrived. Stakeholders should weigh the evidence against limitations the researchers document throughout the study. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage.', 'passage', '[{"id":"A","text":"have","is_correct":false,"explanation":"[Dangling Modifier] plural \"have\" agrees with \"analysts\" near the blank, not the singular subject \"researcher.\""},{"id":"B","text":"had","is_correct":false,"explanation":"[Proximity Decoy] past perfect breaks the present-perfect timeline implied by the ongoing manuscript preparation."},{"id":"C","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"D","text":"are","is_correct":false,"explanation":"[Tense Shift] \"are\" is a linking verb that leaves the participial phrase \"prepared\" dangling without a finite main verb."}]'::jsonb, 'C', 'Step 1 — Find the true subject
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
VALUES ('8d2f21b7-679a-45ac-a8c6-aa17c98bbb37', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. By the time the survey results were published in the spring, the research team ______ the same neighborhoods for nearly a decade, returning each year to record incremental changes. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled.', 'passage', '[{"id":"A","text":"have studied","is_correct":false,"explanation":"[Tense Shift] present perfect plural cannot express an action completed before a past anchor event."},{"id":"B","text":"has studied","is_correct":false,"explanation":"[Dangling Modifier] present perfect agrees with a nearby plural noun but not the past-before-past timeline required here."},{"id":"C","text":"was studied","is_correct":false,"explanation":"[Proximity Decoy] passive past breaks the active timeline anchored by \"were published.\""},{"id":"D","text":"had studied","is_correct":true,"explanation":"Correct: \"had studied\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Establish the timeline
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
VALUES ('4101fc2b-0a5f-4663-9cfa-82514e27c903', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying ecology at mangrove restoration plots have documented how seedling survival rates shape broader conclusions. A strong documentary should inform its audience, challenge their assumptions, and ______ viewers to reconsider a familiar subject from an unexpected angle. Stakeholders should weigh the evidence against limitations the researchers document throughout the study. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage.', 'passage', '[{"id":"A","text":"invite","is_correct":true,"explanation":"Correct: \"invite\" satisfies Standard English conventions for this blank."},{"id":"B","text":"inviting","is_correct":false,"explanation":"[Dangling Modifier] present participle agrees with a nearby noun but breaks the parallel verb series after \"should.\""},{"id":"C","text":"invites","is_correct":false,"explanation":"[Proximity Decoy] third-person singular form breaks the established base-form verb series."},{"id":"D","text":"invited","is_correct":false,"explanation":"[Tense Shift] past participle disrupts the parallel base verbs \"inform\" and \"challenge\" after \"should.\""}]'::jsonb, 'A', 'Step 1 — Spot the series
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
VALUES ('32838cad-2567-44f5-9b09-11f33f3a008a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. The lead researcher, along with several junior analysts who reviewed the raw telemetry, ______ prepared a revised manuscript before the funding deadline arrived. Policy implications depend on whether the observed effect persists when practical constraints such as access vary. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them.', 'passage', '[{"id":"A","text":"have","is_correct":false,"explanation":"[Dangling Modifier] plural \"have\" agrees with \"analysts\" near the blank, not the singular subject \"researcher.\""},{"id":"B","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"C","text":"had","is_correct":false,"explanation":"[Proximity Decoy] past perfect breaks the present-perfect timeline implied by the ongoing manuscript preparation."},{"id":"D","text":"are","is_correct":false,"explanation":"[Tense Shift] \"are\" is a linking verb that leaves the participial phrase \"prepared\" dangling without a finite main verb."}]'::jsonb, 'B', 'Step 1 — Find the true subject
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
VALUES ('8dd77e6b-d834-4f90-8b68-1739efd25524', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying ecology at mangrove restoration plots have documented how seedling survival rates shape broader conclusions. By the time the survey results were published in the spring, the research team ______ the same neighborhoods for nearly a decade, returning each year to record incremental changes. Stakeholders should weigh the evidence against limitations the researchers document throughout the study. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage.', 'passage', '[{"id":"A","text":"have studied","is_correct":false,"explanation":"[Tense Shift] present perfect plural cannot express an action completed before a past anchor event."},{"id":"B","text":"has studied","is_correct":false,"explanation":"[Dangling Modifier] present perfect agrees with a nearby plural noun but not the past-before-past timeline required here."},{"id":"C","text":"had studied","is_correct":true,"explanation":"Correct: \"had studied\" satisfies Standard English conventions for this blank."},{"id":"D","text":"was studied","is_correct":false,"explanation":"[Proximity Decoy] passive past breaks the active timeline anchored by \"were published.\""}]'::jsonb, 'C', 'Step 1 — Establish the timeline
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
VALUES ('a9f7030d-bea6-4b67-b1ac-41b244af6abb', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. A strong documentary should inform its audience, challenge their assumptions, and ______ viewers to reconsider a familiar subject from an unexpected angle. Policy implications depend on whether the observed effect persists when practical constraints such as access vary. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them.', 'passage', '[{"id":"A","text":"inviting","is_correct":false,"explanation":"[Dangling Modifier] present participle agrees with a nearby noun but breaks the parallel verb series after \"should.\""},{"id":"B","text":"invites","is_correct":false,"explanation":"[Proximity Decoy] third-person singular form breaks the established base-form verb series."},{"id":"C","text":"invited","is_correct":false,"explanation":"[Tense Shift] past participle disrupts the parallel base verbs \"inform\" and \"challenge\" after \"should.\""},{"id":"D","text":"invite","is_correct":true,"explanation":"Correct: \"invite\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Spot the series
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
VALUES ('0f0a224e-dc7b-40e6-86e6-5bf4500560a1', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying paleoclimatology at Antarctic ice-core laboratories have documented how sulfate spike layers shape broader conclusions. The lead researcher, along with several junior analysts who reviewed the raw telemetry, ______ prepared a revised manuscript before the funding deadline arrived. Classroom textbooks may still compress the result, though the original study qualifies every major claim. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled.', 'passage', '[{"id":"A","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"B","text":"have","is_correct":false,"explanation":"[Dangling Modifier] plural \"have\" agrees with \"analysts\" near the blank, not the singular subject \"researcher.\""},{"id":"C","text":"had","is_correct":false,"explanation":"[Proximity Decoy] past perfect breaks the present-perfect timeline implied by the ongoing manuscript preparation."},{"id":"D","text":"are","is_correct":false,"explanation":"[Tense Shift] \"are\" is a linking verb that leaves the participial phrase \"prepared\" dangling without a finite main verb."}]'::jsonb, 'A', 'Step 1 — Find the true subject
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
VALUES ('049eac8d-418a-483a-a293-a139d09c7cee', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. By the time the survey results were published in the spring, the research team ______ the same neighborhoods for nearly a decade, returning each year to record incremental changes. Policy implications depend on whether the observed effect persists when practical constraints such as access vary.', 'passage', '[{"id":"A","text":"have studied","is_correct":false,"explanation":"[Tense Shift] present perfect plural cannot express an action completed before a past anchor event."},{"id":"B","text":"had studied","is_correct":true,"explanation":"Correct: \"had studied\" satisfies Standard English conventions for this blank."},{"id":"C","text":"has studied","is_correct":false,"explanation":"[Dangling Modifier] present perfect agrees with a nearby plural noun but not the past-before-past timeline required here."},{"id":"D","text":"was studied","is_correct":false,"explanation":"[Proximity Decoy] passive past breaks the active timeline anchored by \"were published.\""}]'::jsonb, 'B', 'Step 1 — Establish the timeline
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
VALUES ('a5317e55-5cbf-4829-8b7a-997252d4b01c', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying paleoclimatology at Antarctic ice-core laboratories have documented how sulfate spike layers shape broader conclusions. A strong documentary should inform its audience, challenge their assumptions, and ______ viewers to reconsider a familiar subject from an unexpected angle. Classroom textbooks may still compress the result, though the original study qualifies every major claim. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled.', 'passage', '[{"id":"A","text":"inviting","is_correct":false,"explanation":"[Dangling Modifier] present participle agrees with a nearby noun but breaks the parallel verb series after \"should.\""},{"id":"B","text":"invites","is_correct":false,"explanation":"[Proximity Decoy] third-person singular form breaks the established base-form verb series."},{"id":"C","text":"invite","is_correct":true,"explanation":"Correct: \"invite\" satisfies Standard English conventions for this blank."},{"id":"D","text":"invited","is_correct":false,"explanation":"[Tense Shift] past participle disrupts the parallel base verbs \"inform\" and \"challenge\" after \"should.\""}]'::jsonb, 'C', 'Step 1 — Spot the series
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
VALUES ('1a4f0bbb-7743-4396-83fe-f4873ba07907', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. The lead researcher, along with several junior analysts who reviewed the raw telemetry, ______ prepared a revised manuscript before the funding deadline arrived. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges. Stakeholders should weigh the evidence against limitations the researchers document throughout the study.', 'passage', '[{"id":"A","text":"have","is_correct":false,"explanation":"[Dangling Modifier] plural \"have\" agrees with \"analysts\" near the blank, not the singular subject \"researcher.\""},{"id":"B","text":"had","is_correct":false,"explanation":"[Proximity Decoy] past perfect breaks the present-perfect timeline implied by the ongoing manuscript preparation."},{"id":"C","text":"are","is_correct":false,"explanation":"[Tense Shift] \"are\" is a linking verb that leaves the participial phrase \"prepared\" dangling without a finite main verb."},{"id":"D","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Find the true subject
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
VALUES ('38e3a5d7-54b3-4d27-84ca-d020f1f4fd04', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying paleoclimatology at Antarctic ice-core laboratories have documented how sulfate spike layers shape broader conclusions. By the time the survey results were published in the spring, the research team ______ the same neighborhoods for nearly a decade, returning each year to record incremental changes. Classroom textbooks may still compress the result, though the original study qualifies every major claim.', 'passage', '[{"id":"A","text":"had studied","is_correct":true,"explanation":"Correct: \"had studied\" satisfies Standard English conventions for this blank."},{"id":"B","text":"have studied","is_correct":false,"explanation":"[Tense Shift] present perfect plural cannot express an action completed before a past anchor event."},{"id":"C","text":"has studied","is_correct":false,"explanation":"[Dangling Modifier] present perfect agrees with a nearby plural noun but not the past-before-past timeline required here."},{"id":"D","text":"was studied","is_correct":false,"explanation":"[Proximity Decoy] passive past breaks the active timeline anchored by \"were published.\""}]'::jsonb, 'A', 'Step 1 — Establish the timeline
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
VALUES ('ad2df165-a1a6-4dc2-a6f9-8262f879ffd1', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. A strong documentary should inform its audience, challenge their assumptions, and ______ viewers to reconsider a familiar subject from an unexpected angle. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges. Stakeholders should weigh the evidence against limitations the researchers document throughout the study.', 'passage', '[{"id":"A","text":"inviting","is_correct":false,"explanation":"[Dangling Modifier] present participle agrees with a nearby noun but breaks the parallel verb series after \"should.\""},{"id":"B","text":"invite","is_correct":true,"explanation":"Correct: \"invite\" satisfies Standard English conventions for this blank."},{"id":"C","text":"invites","is_correct":false,"explanation":"[Proximity Decoy] third-person singular form breaks the established base-form verb series."},{"id":"D","text":"invited","is_correct":false,"explanation":"[Tense Shift] past participle disrupts the parallel base verbs \"inform\" and \"challenge\" after \"should.\""}]'::jsonb, 'B', 'Step 1 — Spot the series
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
VALUES ('0d8866e2-4663-43de-b647-eef2b5765166', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying economics at regional labor market surveys have documented how wage adjustment estimates shape broader conclusions. The lead researcher, along with several junior analysts who reviewed the raw telemetry, ______ prepared a revised manuscript before the funding deadline arrived. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical. Policy implications depend on whether the observed effect persists when practical constraints such as access vary.', 'passage', '[{"id":"A","text":"have","is_correct":false,"explanation":"[Dangling Modifier] plural \"have\" agrees with \"analysts\" near the blank, not the singular subject \"researcher.\""},{"id":"B","text":"had","is_correct":false,"explanation":"[Proximity Decoy] past perfect breaks the present-perfect timeline implied by the ongoing manuscript preparation."},{"id":"C","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"D","text":"are","is_correct":false,"explanation":"[Tense Shift] \"are\" is a linking verb that leaves the participial phrase \"prepared\" dangling without a finite main verb."}]'::jsonb, 'C', 'Step 1 — Find the true subject
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
VALUES ('620045be-c060-4d4f-8909-38028a209577', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. By the time the survey results were published in the spring, the research team ______ the same neighborhoods for nearly a decade, returning each year to record incremental changes. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges.', 'passage', '[{"id":"A","text":"have studied","is_correct":false,"explanation":"[Tense Shift] present perfect plural cannot express an action completed before a past anchor event."},{"id":"B","text":"has studied","is_correct":false,"explanation":"[Dangling Modifier] present perfect agrees with a nearby plural noun but not the past-before-past timeline required here."},{"id":"C","text":"was studied","is_correct":false,"explanation":"[Proximity Decoy] passive past breaks the active timeline anchored by \"were published.\""},{"id":"D","text":"had studied","is_correct":true,"explanation":"Correct: \"had studied\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Establish the timeline
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
VALUES ('3530e239-3584-47d4-b4e3-74670629f726', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying economics at regional labor market surveys have documented how wage adjustment estimates shape broader conclusions. A strong documentary should inform its audience, challenge their assumptions, and ______ viewers to reconsider a familiar subject from an unexpected angle. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical. Policy implications depend on whether the observed effect persists when practical constraints such as access vary.', 'passage', '[{"id":"A","text":"invite","is_correct":true,"explanation":"Correct: \"invite\" satisfies Standard English conventions for this blank."},{"id":"B","text":"inviting","is_correct":false,"explanation":"[Dangling Modifier] present participle agrees with a nearby noun but breaks the parallel verb series after \"should.\""},{"id":"C","text":"invites","is_correct":false,"explanation":"[Proximity Decoy] third-person singular form breaks the established base-form verb series."},{"id":"D","text":"invited","is_correct":false,"explanation":"[Tense Shift] past participle disrupts the parallel base verbs \"inform\" and \"challenge\" after \"should.\""}]'::jsonb, 'A', 'Step 1 — Spot the series
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
VALUES ('855d1151-5976-4a24-8d99-2d4de007265d', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. The lead researcher, along with several junior analysts who reviewed the raw telemetry, ______ prepared a revised manuscript before the funding deadline arrived. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids. Classroom textbooks may still compress the result, though the original study qualifies every major claim.', 'passage', '[{"id":"A","text":"have","is_correct":false,"explanation":"[Dangling Modifier] plural \"have\" agrees with \"analysts\" near the blank, not the singular subject \"researcher.\""},{"id":"B","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"C","text":"had","is_correct":false,"explanation":"[Proximity Decoy] past perfect breaks the present-perfect timeline implied by the ongoing manuscript preparation."},{"id":"D","text":"are","is_correct":false,"explanation":"[Tense Shift] \"are\" is a linking verb that leaves the participial phrase \"prepared\" dangling without a finite main verb."}]'::jsonb, 'B', 'Step 1 — Find the true subject
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
VALUES ('4dda3f6a-82d9-4b60-872b-5d9237c1809e', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying economics at regional labor market surveys have documented how wage adjustment estimates shape broader conclusions. By the time the survey results were published in the spring, the research team ______ the same neighborhoods for nearly a decade, returning each year to record incremental changes. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical. Policy implications depend on whether the observed effect persists when practical constraints such as access vary.', 'passage', '[{"id":"A","text":"have studied","is_correct":false,"explanation":"[Tense Shift] present perfect plural cannot express an action completed before a past anchor event."},{"id":"B","text":"has studied","is_correct":false,"explanation":"[Dangling Modifier] present perfect agrees with a nearby plural noun but not the past-before-past timeline required here."},{"id":"C","text":"had studied","is_correct":true,"explanation":"Correct: \"had studied\" satisfies Standard English conventions for this blank."},{"id":"D","text":"was studied","is_correct":false,"explanation":"[Proximity Decoy] passive past breaks the active timeline anchored by \"were published.\""}]'::jsonb, 'C', 'Step 1 — Establish the timeline
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
VALUES ('fb6933de-83be-44ff-b843-5776c7e3e04d', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. A strong documentary should inform its audience, challenge their assumptions, and ______ viewers to reconsider a familiar subject from an unexpected angle. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids. Classroom textbooks may still compress the result, though the original study qualifies every major claim.', 'passage', '[{"id":"A","text":"inviting","is_correct":false,"explanation":"[Dangling Modifier] present participle agrees with a nearby noun but breaks the parallel verb series after \"should.\""},{"id":"B","text":"invites","is_correct":false,"explanation":"[Proximity Decoy] third-person singular form breaks the established base-form verb series."},{"id":"C","text":"invited","is_correct":false,"explanation":"[Tense Shift] past participle disrupts the parallel base verbs \"inform\" and \"challenge\" after \"should.\""},{"id":"D","text":"invite","is_correct":true,"explanation":"Correct: \"invite\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Spot the series
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
VALUES ('e26bcf28-05f9-409a-b560-be8c07e14b6f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying archaeology at coastal excavation trenches have documented how ceramic shard assemblages shape broader conclusions. The lead researcher, along with several junior analysts who reviewed the raw telemetry, ______ prepared a revised manuscript before the funding deadline arrived. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges.', 'passage', '[{"id":"A","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"B","text":"have","is_correct":false,"explanation":"[Dangling Modifier] plural \"have\" agrees with \"analysts\" near the blank, not the singular subject \"researcher.\""},{"id":"C","text":"had","is_correct":false,"explanation":"[Proximity Decoy] past perfect breaks the present-perfect timeline implied by the ongoing manuscript preparation."},{"id":"D","text":"are","is_correct":false,"explanation":"[Tense Shift] \"are\" is a linking verb that leaves the participial phrase \"prepared\" dangling without a finite main verb."}]'::jsonb, 'A', 'Step 1 — Find the true subject
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
VALUES ('c514c2c0-a976-45f1-80d5-0595060e26eb', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. By the time the survey results were published in the spring, the research team ______ the same neighborhoods for nearly a decade, returning each year to record incremental changes. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids.', 'passage', '[{"id":"A","text":"have studied","is_correct":false,"explanation":"[Tense Shift] present perfect plural cannot express an action completed before a past anchor event."},{"id":"B","text":"had studied","is_correct":true,"explanation":"Correct: \"had studied\" satisfies Standard English conventions for this blank."},{"id":"C","text":"has studied","is_correct":false,"explanation":"[Dangling Modifier] present perfect agrees with a nearby plural noun but not the past-before-past timeline required here."},{"id":"D","text":"was studied","is_correct":false,"explanation":"[Proximity Decoy] passive past breaks the active timeline anchored by \"were published.\""}]'::jsonb, 'B', 'Step 1 — Establish the timeline
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
VALUES ('8426a7fa-f04f-4cdf-b983-adb34527973d', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying archaeology at coastal excavation trenches have documented how ceramic shard assemblages shape broader conclusions. A strong documentary should inform its audience, challenge their assumptions, and ______ viewers to reconsider a familiar subject from an unexpected angle. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges.', 'passage', '[{"id":"A","text":"inviting","is_correct":false,"explanation":"[Dangling Modifier] present participle agrees with a nearby noun but breaks the parallel verb series after \"should.\""},{"id":"B","text":"invites","is_correct":false,"explanation":"[Proximity Decoy] third-person singular form breaks the established base-form verb series."},{"id":"C","text":"invite","is_correct":true,"explanation":"Correct: \"invite\" satisfies Standard English conventions for this blank."},{"id":"D","text":"invited","is_correct":false,"explanation":"[Tense Shift] past participle disrupts the parallel base verbs \"inform\" and \"challenge\" after \"should.\""}]'::jsonb, 'C', 'Step 1 — Spot the series
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
VALUES ('2ecfd8bd-12a2-4708-9c54-4aa6e8374f2d', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. The lead researcher, along with several junior analysts who reviewed the raw telemetry, ______ prepared a revised manuscript before the funding deadline arrived. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical.', 'passage', '[{"id":"A","text":"have","is_correct":false,"explanation":"[Dangling Modifier] plural \"have\" agrees with \"analysts\" near the blank, not the singular subject \"researcher.\""},{"id":"B","text":"had","is_correct":false,"explanation":"[Proximity Decoy] past perfect breaks the present-perfect timeline implied by the ongoing manuscript preparation."},{"id":"C","text":"are","is_correct":false,"explanation":"[Tense Shift] \"are\" is a linking verb that leaves the participial phrase \"prepared\" dangling without a finite main verb."},{"id":"D","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Find the true subject
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
VALUES ('ebb44c07-b247-491d-af67-85f28f817e44', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying archaeology at coastal excavation trenches have documented how ceramic shard assemblages shape broader conclusions. By the time the survey results were published in the spring, the research team ______ the same neighborhoods for nearly a decade, returning each year to record incremental changes. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice.', 'passage', '[{"id":"A","text":"had studied","is_correct":true,"explanation":"Correct: \"had studied\" satisfies Standard English conventions for this blank."},{"id":"B","text":"have studied","is_correct":false,"explanation":"[Tense Shift] present perfect plural cannot express an action completed before a past anchor event."},{"id":"C","text":"has studied","is_correct":false,"explanation":"[Dangling Modifier] present perfect agrees with a nearby plural noun but not the past-before-past timeline required here."},{"id":"D","text":"was studied","is_correct":false,"explanation":"[Proximity Decoy] passive past breaks the active timeline anchored by \"were published.\""}]'::jsonb, 'A', 'Step 1 — Establish the timeline
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
VALUES ('f7a90022-92f2-4f51-8e14-f8a33f7c3ba7', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. A strong documentary should inform its audience, challenge their assumptions, and ______ viewers to reconsider a familiar subject from an unexpected angle. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical.', 'passage', '[{"id":"A","text":"inviting","is_correct":false,"explanation":"[Dangling Modifier] present participle agrees with a nearby noun but breaks the parallel verb series after \"should.\""},{"id":"B","text":"invite","is_correct":true,"explanation":"Correct: \"invite\" satisfies Standard English conventions for this blank."},{"id":"C","text":"invites","is_correct":false,"explanation":"[Proximity Decoy] third-person singular form breaks the established base-form verb series."},{"id":"D","text":"invited","is_correct":false,"explanation":"[Tense Shift] past participle disrupts the parallel base verbs \"inform\" and \"challenge\" after \"should.\""}]'::jsonb, 'B', 'Step 1 — Spot the series
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
VALUES ('2b971114-9911-47a7-8552-d1cf60449e11', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying ecology at mangrove restoration plots have documented how seedling survival rates shape broader conclusions. The lead researcher, along with several junior analysts who reviewed the raw telemetry, ______ prepared a revised manuscript before the funding deadline arrived. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids.', 'passage', '[{"id":"A","text":"have","is_correct":false,"explanation":"[Dangling Modifier] plural \"have\" agrees with \"analysts\" near the blank, not the singular subject \"researcher.\""},{"id":"B","text":"had","is_correct":false,"explanation":"[Proximity Decoy] past perfect breaks the present-perfect timeline implied by the ongoing manuscript preparation."},{"id":"C","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"D","text":"are","is_correct":false,"explanation":"[Tense Shift] \"are\" is a linking verb that leaves the participial phrase \"prepared\" dangling without a finite main verb."}]'::jsonb, 'C', 'Step 1 — Find the true subject
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
VALUES ('508e178d-a202-4572-b110-5a79781b592d', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. By the time the survey results were published in the spring, the research team ______ the same neighborhoods for nearly a decade, returning each year to record incremental changes. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage.', 'passage', '[{"id":"A","text":"have studied","is_correct":false,"explanation":"[Tense Shift] present perfect plural cannot express an action completed before a past anchor event."},{"id":"B","text":"has studied","is_correct":false,"explanation":"[Dangling Modifier] present perfect agrees with a nearby plural noun but not the past-before-past timeline required here."},{"id":"C","text":"was studied","is_correct":false,"explanation":"[Proximity Decoy] passive past breaks the active timeline anchored by \"were published.\""},{"id":"D","text":"had studied","is_correct":true,"explanation":"Correct: \"had studied\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Establish the timeline
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
VALUES ('8b35370c-e204-481b-9e27-1e688056af4b', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying ecology at mangrove restoration plots have documented how seedling survival rates shape broader conclusions. A strong documentary should inform its audience, challenge their assumptions, and ______ viewers to reconsider a familiar subject from an unexpected angle. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids.', 'passage', '[{"id":"A","text":"invite","is_correct":true,"explanation":"Correct: \"invite\" satisfies Standard English conventions for this blank."},{"id":"B","text":"inviting","is_correct":false,"explanation":"[Dangling Modifier] present participle agrees with a nearby noun but breaks the parallel verb series after \"should.\""},{"id":"C","text":"invites","is_correct":false,"explanation":"[Proximity Decoy] third-person singular form breaks the established base-form verb series."},{"id":"D","text":"invited","is_correct":false,"explanation":"[Tense Shift] past participle disrupts the parallel base verbs \"inform\" and \"challenge\" after \"should.\""}]'::jsonb, 'A', 'Step 1 — Spot the series
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
VALUES ('170d4dc6-4d35-4e80-a149-20434c93cf0c', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. The lead researcher, along with several junior analysts who reviewed the raw telemetry, ______ prepared a revised manuscript before the funding deadline arrived. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice.', 'passage', '[{"id":"A","text":"have","is_correct":false,"explanation":"[Dangling Modifier] plural \"have\" agrees with \"analysts\" near the blank, not the singular subject \"researcher.\""},{"id":"B","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"C","text":"had","is_correct":false,"explanation":"[Proximity Decoy] past perfect breaks the present-perfect timeline implied by the ongoing manuscript preparation."},{"id":"D","text":"are","is_correct":false,"explanation":"[Tense Shift] \"are\" is a linking verb that leaves the participial phrase \"prepared\" dangling without a finite main verb."}]'::jsonb, 'B', 'Step 1 — Find the true subject
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
VALUES ('1d347157-3b64-4b37-abd2-2309c799ddd4', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying ecology at mangrove restoration plots have documented how seedling survival rates shape broader conclusions. By the time the survey results were published in the spring, the research team ______ the same neighborhoods for nearly a decade, returning each year to record incremental changes. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids.', 'passage', '[{"id":"A","text":"have studied","is_correct":false,"explanation":"[Tense Shift] present perfect plural cannot express an action completed before a past anchor event."},{"id":"B","text":"has studied","is_correct":false,"explanation":"[Dangling Modifier] present perfect agrees with a nearby plural noun but not the past-before-past timeline required here."},{"id":"C","text":"had studied","is_correct":true,"explanation":"Correct: \"had studied\" satisfies Standard English conventions for this blank."},{"id":"D","text":"was studied","is_correct":false,"explanation":"[Proximity Decoy] passive past breaks the active timeline anchored by \"were published.\""}]'::jsonb, 'C', 'Step 1 — Establish the timeline
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
VALUES ('7b21fff3-962d-4692-a0ef-92094a08e705', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. A strong documentary should inform its audience, challenge their assumptions, and ______ viewers to reconsider a familiar subject from an unexpected angle. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice.', 'passage', '[{"id":"A","text":"inviting","is_correct":false,"explanation":"[Dangling Modifier] present participle agrees with a nearby noun but breaks the parallel verb series after \"should.\""},{"id":"B","text":"invites","is_correct":false,"explanation":"[Proximity Decoy] third-person singular form breaks the established base-form verb series."},{"id":"C","text":"invited","is_correct":false,"explanation":"[Tense Shift] past participle disrupts the parallel base verbs \"inform\" and \"challenge\" after \"should.\""},{"id":"D","text":"invite","is_correct":true,"explanation":"Correct: \"invite\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Spot the series
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
VALUES ('c33049ed-0b99-4d21-9df6-282a7eae4b6a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying paleoclimatology at Antarctic ice-core laboratories have documented how sulfate spike layers shape broader conclusions. The lead researcher, along with several junior analysts who reviewed the raw telemetry, ______ prepared a revised manuscript before the funding deadline arrived. Stakeholders should weigh the evidence against limitations the researchers document throughout the study. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage.', 'passage', '[{"id":"A","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"B","text":"have","is_correct":false,"explanation":"[Dangling Modifier] plural \"have\" agrees with \"analysts\" near the blank, not the singular subject \"researcher.\""},{"id":"C","text":"had","is_correct":false,"explanation":"[Proximity Decoy] past perfect breaks the present-perfect timeline implied by the ongoing manuscript preparation."},{"id":"D","text":"are","is_correct":false,"explanation":"[Tense Shift] \"are\" is a linking verb that leaves the participial phrase \"prepared\" dangling without a finite main verb."}]'::jsonb, 'A', 'Step 1 — Find the true subject
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
VALUES ('7ff6112d-3fe9-49d0-8fbe-078ce0fd38f3', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. By the time the survey results were published in the spring, the research team ______ the same neighborhoods for nearly a decade, returning each year to record incremental changes. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled.', 'passage', '[{"id":"A","text":"have studied","is_correct":false,"explanation":"[Tense Shift] present perfect plural cannot express an action completed before a past anchor event."},{"id":"B","text":"had studied","is_correct":true,"explanation":"Correct: \"had studied\" satisfies Standard English conventions for this blank."},{"id":"C","text":"has studied","is_correct":false,"explanation":"[Dangling Modifier] present perfect agrees with a nearby plural noun but not the past-before-past timeline required here."},{"id":"D","text":"was studied","is_correct":false,"explanation":"[Proximity Decoy] passive past breaks the active timeline anchored by \"were published.\""}]'::jsonb, 'B', 'Step 1 — Establish the timeline
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
VALUES ('e14f72f9-418c-4199-a83a-ee0501433b02', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying paleoclimatology at Antarctic ice-core laboratories have documented how sulfate spike layers shape broader conclusions. A strong documentary should inform its audience, challenge their assumptions, and ______ viewers to reconsider a familiar subject from an unexpected angle. Stakeholders should weigh the evidence against limitations the researchers document throughout the study. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage.', 'passage', '[{"id":"A","text":"inviting","is_correct":false,"explanation":"[Dangling Modifier] present participle agrees with a nearby noun but breaks the parallel verb series after \"should.\""},{"id":"B","text":"invites","is_correct":false,"explanation":"[Proximity Decoy] third-person singular form breaks the established base-form verb series."},{"id":"C","text":"invite","is_correct":true,"explanation":"Correct: \"invite\" satisfies Standard English conventions for this blank."},{"id":"D","text":"invited","is_correct":false,"explanation":"[Tense Shift] past participle disrupts the parallel base verbs \"inform\" and \"challenge\" after \"should.\""}]'::jsonb, 'C', 'Step 1 — Spot the series
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
VALUES ('c07883d1-961c-49fe-925d-91f128c19617', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. The lead researcher, along with several junior analysts who reviewed the raw telemetry, ______ prepared a revised manuscript before the funding deadline arrived. Policy implications depend on whether the observed effect persists when practical constraints such as access vary. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them.', 'passage', '[{"id":"A","text":"have","is_correct":false,"explanation":"[Dangling Modifier] plural \"have\" agrees with \"analysts\" near the blank, not the singular subject \"researcher.\""},{"id":"B","text":"had","is_correct":false,"explanation":"[Proximity Decoy] past perfect breaks the present-perfect timeline implied by the ongoing manuscript preparation."},{"id":"C","text":"are","is_correct":false,"explanation":"[Tense Shift] \"are\" is a linking verb that leaves the participial phrase \"prepared\" dangling without a finite main verb."},{"id":"D","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Find the true subject
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
VALUES ('3056f120-9457-4873-b37b-b4aa41573067', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying paleoclimatology at Antarctic ice-core laboratories have documented how sulfate spike layers shape broader conclusions. By the time the survey results were published in the spring, the research team ______ the same neighborhoods for nearly a decade, returning each year to record incremental changes. Stakeholders should weigh the evidence against limitations the researchers document throughout the study. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage.', 'passage', '[{"id":"A","text":"had studied","is_correct":true,"explanation":"Correct: \"had studied\" satisfies Standard English conventions for this blank."},{"id":"B","text":"have studied","is_correct":false,"explanation":"[Tense Shift] present perfect plural cannot express an action completed before a past anchor event."},{"id":"C","text":"has studied","is_correct":false,"explanation":"[Dangling Modifier] present perfect agrees with a nearby plural noun but not the past-before-past timeline required here."},{"id":"D","text":"was studied","is_correct":false,"explanation":"[Proximity Decoy] passive past breaks the active timeline anchored by \"were published.\""}]'::jsonb, 'A', 'Step 1 — Establish the timeline
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
VALUES ('6b79df06-01a8-4130-b124-e2486404960d', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. A strong documentary should inform its audience, challenge their assumptions, and ______ viewers to reconsider a familiar subject from an unexpected angle. Policy implications depend on whether the observed effect persists when practical constraints such as access vary. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them.', 'passage', '[{"id":"A","text":"inviting","is_correct":false,"explanation":"[Dangling Modifier] present participle agrees with a nearby noun but breaks the parallel verb series after \"should.\""},{"id":"B","text":"invite","is_correct":true,"explanation":"Correct: \"invite\" satisfies Standard English conventions for this blank."},{"id":"C","text":"invites","is_correct":false,"explanation":"[Proximity Decoy] third-person singular form breaks the established base-form verb series."},{"id":"D","text":"invited","is_correct":false,"explanation":"[Tense Shift] past participle disrupts the parallel base verbs \"inform\" and \"challenge\" after \"should.\""}]'::jsonb, 'B', 'Step 1 — Spot the series
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
VALUES ('c90751ac-b383-4894-9921-c59c55d9fe25', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying economics at regional labor market surveys have documented how wage adjustment estimates shape broader conclusions. The lead researcher, along with several junior analysts who reviewed the raw telemetry, ______ prepared a revised manuscript before the funding deadline arrived. Classroom textbooks may still compress the result, though the original study qualifies every major claim. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled.', 'passage', '[{"id":"A","text":"have","is_correct":false,"explanation":"[Dangling Modifier] plural \"have\" agrees with \"analysts\" near the blank, not the singular subject \"researcher.\""},{"id":"B","text":"had","is_correct":false,"explanation":"[Proximity Decoy] past perfect breaks the present-perfect timeline implied by the ongoing manuscript preparation."},{"id":"C","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"D","text":"are","is_correct":false,"explanation":"[Tense Shift] \"are\" is a linking verb that leaves the participial phrase \"prepared\" dangling without a finite main verb."}]'::jsonb, 'C', 'Step 1 — Find the true subject
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
VALUES ('8c077c67-cd88-4e8d-be6f-910351e5460b', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. By the time the survey results were published in the spring, the research team ______ the same neighborhoods for nearly a decade, returning each year to record incremental changes. Policy implications depend on whether the observed effect persists when practical constraints such as access vary.', 'passage', '[{"id":"A","text":"have studied","is_correct":false,"explanation":"[Tense Shift] present perfect plural cannot express an action completed before a past anchor event."},{"id":"B","text":"has studied","is_correct":false,"explanation":"[Dangling Modifier] present perfect agrees with a nearby plural noun but not the past-before-past timeline required here."},{"id":"C","text":"was studied","is_correct":false,"explanation":"[Proximity Decoy] passive past breaks the active timeline anchored by \"were published.\""},{"id":"D","text":"had studied","is_correct":true,"explanation":"Correct: \"had studied\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Establish the timeline
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
VALUES ('f05d76a3-34fc-48a6-ba97-ad81575269b3', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying economics at regional labor market surveys have documented how wage adjustment estimates shape broader conclusions. A strong documentary should inform its audience, challenge their assumptions, and ______ viewers to reconsider a familiar subject from an unexpected angle. Classroom textbooks may still compress the result, though the original study qualifies every major claim. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled.', 'passage', '[{"id":"A","text":"invite","is_correct":true,"explanation":"Correct: \"invite\" satisfies Standard English conventions for this blank."},{"id":"B","text":"inviting","is_correct":false,"explanation":"[Dangling Modifier] present participle agrees with a nearby noun but breaks the parallel verb series after \"should.\""},{"id":"C","text":"invites","is_correct":false,"explanation":"[Proximity Decoy] third-person singular form breaks the established base-form verb series."},{"id":"D","text":"invited","is_correct":false,"explanation":"[Tense Shift] past participle disrupts the parallel base verbs \"inform\" and \"challenge\" after \"should.\""}]'::jsonb, 'A', 'Step 1 — Spot the series
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
VALUES ('51a8de7a-3ae0-452c-8323-c5b20da3b7ff', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. The lead researcher, along with several junior analysts who reviewed the raw telemetry, ______ prepared a revised manuscript before the funding deadline arrived. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges. Stakeholders should weigh the evidence against limitations the researchers document throughout the study.', 'passage', '[{"id":"A","text":"have","is_correct":false,"explanation":"[Dangling Modifier] plural \"have\" agrees with \"analysts\" near the blank, not the singular subject \"researcher.\""},{"id":"B","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"C","text":"had","is_correct":false,"explanation":"[Proximity Decoy] past perfect breaks the present-perfect timeline implied by the ongoing manuscript preparation."},{"id":"D","text":"are","is_correct":false,"explanation":"[Tense Shift] \"are\" is a linking verb that leaves the participial phrase \"prepared\" dangling without a finite main verb."}]'::jsonb, 'B', 'Step 1 — Find the true subject
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
VALUES ('ecc36c59-72bd-4fb2-8969-cceb626105ec', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying economics at regional labor market surveys have documented how wage adjustment estimates shape broader conclusions. By the time the survey results were published in the spring, the research team ______ the same neighborhoods for nearly a decade, returning each year to record incremental changes. Classroom textbooks may still compress the result, though the original study qualifies every major claim.', 'passage', '[{"id":"A","text":"have studied","is_correct":false,"explanation":"[Tense Shift] present perfect plural cannot express an action completed before a past anchor event."},{"id":"B","text":"has studied","is_correct":false,"explanation":"[Dangling Modifier] present perfect agrees with a nearby plural noun but not the past-before-past timeline required here."},{"id":"C","text":"had studied","is_correct":true,"explanation":"Correct: \"had studied\" satisfies Standard English conventions for this blank."},{"id":"D","text":"was studied","is_correct":false,"explanation":"[Proximity Decoy] passive past breaks the active timeline anchored by \"were published.\""}]'::jsonb, 'C', 'Step 1 — Establish the timeline
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
VALUES ('10976ce0-ae9f-4099-8aa7-8acc5708f0f4', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. A strong documentary should inform its audience, challenge their assumptions, and ______ viewers to reconsider a familiar subject from an unexpected angle. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges. Stakeholders should weigh the evidence against limitations the researchers document throughout the study.', 'passage', '[{"id":"A","text":"inviting","is_correct":false,"explanation":"[Dangling Modifier] present participle agrees with a nearby noun but breaks the parallel verb series after \"should.\""},{"id":"B","text":"invites","is_correct":false,"explanation":"[Proximity Decoy] third-person singular form breaks the established base-form verb series."},{"id":"C","text":"invited","is_correct":false,"explanation":"[Tense Shift] past participle disrupts the parallel base verbs \"inform\" and \"challenge\" after \"should.\""},{"id":"D","text":"invite","is_correct":true,"explanation":"Correct: \"invite\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Spot the series
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
VALUES ('dc02d9da-5258-4393-a3e6-c28443a703d0', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying archaeology at coastal excavation trenches have documented how ceramic shard assemblages shape broader conclusions. The lead researcher, along with several junior analysts who reviewed the raw telemetry, ______ prepared a revised manuscript before the funding deadline arrived. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical. Policy implications depend on whether the observed effect persists when practical constraints such as access vary.', 'passage', '[{"id":"A","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"B","text":"have","is_correct":false,"explanation":"[Dangling Modifier] plural \"have\" agrees with \"analysts\" near the blank, not the singular subject \"researcher.\""},{"id":"C","text":"had","is_correct":false,"explanation":"[Proximity Decoy] past perfect breaks the present-perfect timeline implied by the ongoing manuscript preparation."},{"id":"D","text":"are","is_correct":false,"explanation":"[Tense Shift] \"are\" is a linking verb that leaves the participial phrase \"prepared\" dangling without a finite main verb."}]'::jsonb, 'A', 'Step 1 — Find the true subject
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
VALUES ('f60dc12b-77cd-443b-b1e9-289b355c61b7', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. By the time the survey results were published in the spring, the research team ______ the same neighborhoods for nearly a decade, returning each year to record incremental changes. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges.', 'passage', '[{"id":"A","text":"have studied","is_correct":false,"explanation":"[Tense Shift] present perfect plural cannot express an action completed before a past anchor event."},{"id":"B","text":"had studied","is_correct":true,"explanation":"Correct: \"had studied\" satisfies Standard English conventions for this blank."},{"id":"C","text":"has studied","is_correct":false,"explanation":"[Dangling Modifier] present perfect agrees with a nearby plural noun but not the past-before-past timeline required here."},{"id":"D","text":"was studied","is_correct":false,"explanation":"[Proximity Decoy] passive past breaks the active timeline anchored by \"were published.\""}]'::jsonb, 'B', 'Step 1 — Establish the timeline
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
VALUES ('18de0cdc-8452-4426-8991-76ab5638a8c5', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying archaeology at coastal excavation trenches have documented how ceramic shard assemblages shape broader conclusions. A strong documentary should inform its audience, challenge their assumptions, and ______ viewers to reconsider a familiar subject from an unexpected angle. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical. Policy implications depend on whether the observed effect persists when practical constraints such as access vary.', 'passage', '[{"id":"A","text":"inviting","is_correct":false,"explanation":"[Dangling Modifier] present participle agrees with a nearby noun but breaks the parallel verb series after \"should.\""},{"id":"B","text":"invites","is_correct":false,"explanation":"[Proximity Decoy] third-person singular form breaks the established base-form verb series."},{"id":"C","text":"invite","is_correct":true,"explanation":"Correct: \"invite\" satisfies Standard English conventions for this blank."},{"id":"D","text":"invited","is_correct":false,"explanation":"[Tense Shift] past participle disrupts the parallel base verbs \"inform\" and \"challenge\" after \"should.\""}]'::jsonb, 'C', 'Step 1 — Spot the series
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
VALUES ('af6216de-a3ff-4084-b821-f3f381504aaf', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. The lead researcher, along with several junior analysts who reviewed the raw telemetry, ______ prepared a revised manuscript before the funding deadline arrived. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids. Classroom textbooks may still compress the result, though the original study qualifies every major claim.', 'passage', '[{"id":"A","text":"have","is_correct":false,"explanation":"[Dangling Modifier] plural \"have\" agrees with \"analysts\" near the blank, not the singular subject \"researcher.\""},{"id":"B","text":"had","is_correct":false,"explanation":"[Proximity Decoy] past perfect breaks the present-perfect timeline implied by the ongoing manuscript preparation."},{"id":"C","text":"are","is_correct":false,"explanation":"[Tense Shift] \"are\" is a linking verb that leaves the participial phrase \"prepared\" dangling without a finite main verb."},{"id":"D","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Find the true subject
With {{yellow:The lead researcher, along with several junior analysts}}, the verb agrees with the main subject, not the phrase introduced by ''along with.''

Step 2 — Match tense and number
Singular ''researcher'' requires a singular auxiliary compatible with the completed preparation.

Step 3 — Select the grammatical option
Choice D (has) is grammatically correct.

Distractor analysis:
- A: [Dangling Modifier] plural "have" agrees with "analysts" near the blank, not the singular subject "researcher."
- B: [Proximity Decoy] past perfect breaks the present-perfect timeline implied by the ongoing manuscript preparation.
- C: [Tense Shift] "are" is a linking verb that leaves the participial phrase "prepared" dangling without a finite main verb.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
COMMIT;
