BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e2a67f7d-11d2-49b6-86dc-da46f2339e67', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. The collection of manuscripts that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Correct: \"is\" satisfies Standard English conventions for this blank."},{"id":"B","text":"were","is_correct":false,"explanation":"[Tense Shift] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"C","text":"are","is_correct":false,"explanation":"[Dangling Modifier] agrees with \"manuscripts\" near the blank rather than the true subject \"collection\"."},{"id":"D","text":"was","is_correct":false,"explanation":"[Proximity Decoy] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'A', 'Step 1 — Locate the true subject
The subject is {{yellow:The collection of manuscripts}}; "collection" is singular despite the intervening phrase.

Step 2 — Match agreement
Ignore the prepositional phrase between subject and verb; match number and tense to the schedule context.

Step 3 — Select the grammatical option
Choice A (is) is grammatically correct.

Distractor analysis:
- B: [Tense Shift] creates a non-finite or mismatched form that cannot complete the independent clause.
- C: [Dangling Modifier] agrees with "manuscripts" near the blank rather than the true subject "collection".
- D: [Proximity Decoy] breaks the present-timeline established by "next month" and surrounding context.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('14acd766-caee-4017-ad9b-5a6b4d731fbf', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. When a songbird hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Dangling Modifier] \"their\" is plural while the antecedent \"songbird\" is singular."},{"id":"B","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."},{"id":"C","text":"it''s","is_correct":false,"explanation":"[Tense Shift] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"D","text":"it","is_correct":false,"explanation":"[Proximity Decoy] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""}]'::jsonb, 'B', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a songbird}}, which is singular.

Step 2 — Choose the possessive
The singular possessive without an apostrophe modifies ''wings.''

Step 3 — Select the grammatical option
Choice B (its) is grammatically correct.

Distractor analysis:
- A: [Dangling Modifier] "their" is plural while the antecedent "songbird" is singular.
- C: [Tense Shift] "it''s" is the contraction for "it is," not a possessive form.
- D: [Proximity Decoy] "it" is a subject pronoun, not a possessive modifier for "wings."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bde73f89-31c8-4073-92cc-959bd1919572', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. Each of the volunteers that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges. Stakeholders should weigh the evidence against limitations the researchers document throughout the study.', 'passage', '[{"id":"A","text":"were","is_correct":false,"explanation":"[Tense Shift] agrees with \"volunteers\" near the blank rather than the true subject \"Each\"."},{"id":"B","text":"are","is_correct":false,"explanation":"[Dangling Modifier] breaks the present-timeline established by \"next month\" and surrounding context."},{"id":"C","text":"was","is_correct":true,"explanation":"Correct: \"was\" satisfies Standard English conventions for this blank."},{"id":"D","text":"is","is_correct":false,"explanation":"[Proximity Decoy] creates a non-finite or mismatched form that cannot complete the independent clause."}]'::jsonb, 'C', 'Step 1 — Locate the true subject
The subject is {{yellow:Each of the volunteers}}; "Each" is singular despite the intervening phrase.

Step 2 — Match agreement
Ignore the prepositional phrase between subject and verb; match number and tense to the schedule context.

Step 3 — Select the grammatical option
Choice C (was) is grammatically correct.

Distractor analysis:
- A: [Tense Shift] agrees with "volunteers" near the blank rather than the true subject "Each".
- B: [Dangling Modifier] breaks the present-timeline established by "next month" and surrounding context.
- D: [Proximity Decoy] creates a non-finite or mismatched form that cannot complete the independent clause.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c756adb0-4835-4189-92d3-2bdc5796742c', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. When a monarch butterfly hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Policy implications depend on whether the observed effect persists when practical constraints such as access vary. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Tense Shift] \"their\" is plural while the antecedent \"monarch butterfly\" is singular."},{"id":"B","text":"it''s","is_correct":false,"explanation":"[Proximity Decoy] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"C","text":"it","is_correct":false,"explanation":"[Dangling Modifier] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""},{"id":"D","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a monarch butterfly}}, which is singular.

Step 2 — Choose the possessive
The singular possessive without an apostrophe modifies ''wings.''

Step 3 — Select the grammatical option
Choice D (its) is grammatically correct.

Distractor analysis:
- A: [Tense Shift] "their" is plural while the antecedent "monarch butterfly" is singular.
- B: [Proximity Decoy] "it''s" is the contraction for "it is," not a possessive form.
- C: [Dangling Modifier] "it" is a subject pronoun, not a possessive modifier for "wings."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bccda380-46a2-4823-9901-68db2c0c8ef6', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. A series of lectures that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Correct: \"is\" satisfies Standard English conventions for this blank."},{"id":"B","text":"were","is_correct":false,"explanation":"[Dangling Modifier] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"C","text":"are","is_correct":false,"explanation":"[Proximity Decoy] agrees with \"lectures\" near the blank rather than the true subject \"series\"."},{"id":"D","text":"was","is_correct":false,"explanation":"[Tense Shift] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'A', 'Step 1 — Locate the true subject
The subject is {{yellow:A series of lectures}}; "series" is singular despite the intervening phrase.

Step 2 — Match agreement
Ignore the prepositional phrase between subject and verb; match number and tense to the schedule context.

Step 3 — Select the grammatical option
Choice A (is) is grammatically correct.

Distractor analysis:
- B: [Dangling Modifier] creates a non-finite or mismatched form that cannot complete the independent clause.
- C: [Proximity Decoy] agrees with "lectures" near the blank rather than the true subject "series".
- D: [Tense Shift] breaks the present-timeline established by "next month" and surrounding context.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('34e655d4-2b9b-40b3-88c9-204c8280ee1b', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. When a hummingbird hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids. Classroom textbooks may still compress the result, though the original study qualifies every major claim.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Proximity Decoy] \"their\" is plural while the antecedent \"hummingbird\" is singular."},{"id":"B","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."},{"id":"C","text":"it''s","is_correct":false,"explanation":"[Dangling Modifier] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"D","text":"it","is_correct":false,"explanation":"[Tense Shift] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""}]'::jsonb, 'B', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a hummingbird}}, which is singular.

Step 2 — Choose the possessive
The singular possessive without an apostrophe modifies ''wings.''

Step 3 — Select the grammatical option
Choice B (its) is grammatically correct.

Distractor analysis:
- A: [Proximity Decoy] "their" is plural while the antecedent "hummingbird" is singular.
- C: [Dangling Modifier] "it''s" is the contraction for "it is," not a possessive form.
- D: [Tense Shift] "it" is a subject pronoun, not a possessive modifier for "wings."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('236dd576-e7af-4b4d-84a6-b721dd704549', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. The panel of experts that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Policy implications depend on whether the observed effect persists when practical constraints such as access vary. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them.', 'passage', '[{"id":"A","text":"have","is_correct":false,"explanation":"[Dangling Modifier] agrees with \"experts\" near the blank rather than the true subject \"panel\"."},{"id":"B","text":"does","is_correct":false,"explanation":"[Tense Shift] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"C","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"D","text":"had","is_correct":false,"explanation":"[Proximity Decoy] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'C', 'Step 1 — Locate the true subject
The subject is {{yellow:The panel of experts}}; "panel" is singular despite the intervening phrase.

Step 2 — Match agreement
Ignore the prepositional phrase between subject and verb; match number and tense to the schedule context.

Step 3 — Select the grammatical option
Choice C (has) is grammatically correct.

Distractor analysis:
- A: [Dangling Modifier] agrees with "experts" near the blank rather than the true subject "panel".
- B: [Tense Shift] creates a non-finite or mismatched form that cannot complete the independent clause.
- D: [Proximity Decoy] breaks the present-timeline established by "next month" and surrounding context.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fe5e3ff3-e2c1-4446-b0a7-e13f82116563', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. When a sea turtle hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Dangling Modifier] \"their\" is plural while the antecedent \"sea turtle\" is singular."},{"id":"B","text":"it''s","is_correct":false,"explanation":"[Tense Shift] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"C","text":"it","is_correct":false,"explanation":"[Proximity Decoy] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""},{"id":"D","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a sea turtle}}, which is singular.

Step 2 — Choose the possessive
The singular possessive without an apostrophe modifies ''wings.''

Step 3 — Select the grammatical option
Choice D (its) is grammatically correct.

Distractor analysis:
- A: [Dangling Modifier] "their" is plural while the antecedent "sea turtle" is singular.
- B: [Tense Shift] "it''s" is the contraction for "it is," not a possessive form.
- C: [Proximity Decoy] "it" is a subject pronoun, not a possessive modifier for "wings."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7ea7e7c5-edbb-4da5-8cff-bd0ca0567a98', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. The number of applicants that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids. Classroom textbooks may still compress the result, though the original study qualifies every major claim.', 'passage', '[{"id":"A","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"B","text":"have","is_correct":false,"explanation":"[Tense Shift] agrees with \"applicants\" near the blank rather than the true subject \"number\"."},{"id":"C","text":"does","is_correct":false,"explanation":"[Proximity Decoy] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"D","text":"had","is_correct":false,"explanation":"[Dangling Modifier] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'A', 'Step 1 — Locate the true subject
The subject is {{yellow:The number of applicants}}; "number" is singular despite the intervening phrase.

Step 2 — Match agreement
Ignore the prepositional phrase between subject and verb; match number and tense to the schedule context.

Step 3 — Select the grammatical option
Choice A (has) is grammatically correct.

Distractor analysis:
- B: [Tense Shift] agrees with "applicants" near the blank rather than the true subject "number".
- C: [Proximity Decoy] creates a non-finite or mismatched form that cannot complete the independent clause.
- D: [Dangling Modifier] breaks the present-timeline established by "next month" and surrounding context.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('123d97f4-6bcb-4989-b3f7-1f12c9dedb8e', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. When a gray wolf hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges. Stakeholders should weigh the evidence against limitations the researchers document throughout the study.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Tense Shift] \"their\" is plural while the antecedent \"gray wolf\" is singular."},{"id":"B","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."},{"id":"C","text":"it''s","is_correct":false,"explanation":"[Proximity Decoy] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"D","text":"it","is_correct":false,"explanation":"[Dangling Modifier] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""}]'::jsonb, 'B', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a gray wolf}}, which is singular.

Step 2 — Choose the possessive
The singular possessive without an apostrophe modifies ''wings.''

Step 3 — Select the grammatical option
Choice B (its) is grammatically correct.

Distractor analysis:
- A: [Tense Shift] "their" is plural while the antecedent "gray wolf" is singular.
- C: [Proximity Decoy] "it''s" is the contraction for "it is," not a possessive form.
- D: [Dangling Modifier] "it" is a subject pronoun, not a possessive modifier for "wings."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5714c9fd-a8e7-44c6-9770-5b792c87efea', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. The collection of manuscripts that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice.', 'passage', '[{"id":"A","text":"were","is_correct":false,"explanation":"[Dangling Modifier] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"B","text":"are","is_correct":false,"explanation":"[Proximity Decoy] agrees with \"manuscripts\" near the blank rather than the true subject \"collection\"."},{"id":"C","text":"is","is_correct":true,"explanation":"Correct: \"is\" satisfies Standard English conventions for this blank."},{"id":"D","text":"was","is_correct":false,"explanation":"[Tense Shift] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'C', 'Step 1 — Locate the true subject
The subject is {{yellow:The collection of manuscripts}}; "collection" is singular despite the intervening phrase.

Step 2 — Match agreement
Ignore the prepositional phrase between subject and verb; match number and tense to the schedule context.

Step 3 — Select the grammatical option
Choice C (is) is grammatically correct.

Distractor analysis:
- A: [Dangling Modifier] creates a non-finite or mismatched form that cannot complete the independent clause.
- B: [Proximity Decoy] agrees with "manuscripts" near the blank rather than the true subject "collection".
- D: [Tense Shift] breaks the present-timeline established by "next month" and surrounding context.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0662cbe5-be43-4291-a1c4-7e2a1ed7ed50', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. When a songbird hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Proximity Decoy] \"their\" is plural while the antecedent \"songbird\" is singular."},{"id":"B","text":"it''s","is_correct":false,"explanation":"[Dangling Modifier] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"C","text":"it","is_correct":false,"explanation":"[Tense Shift] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""},{"id":"D","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a songbird}}, which is singular.

Step 2 — Choose the possessive
The singular possessive without an apostrophe modifies ''wings.''

Step 3 — Select the grammatical option
Choice D (its) is grammatically correct.

Distractor analysis:
- A: [Proximity Decoy] "their" is plural while the antecedent "songbird" is singular.
- B: [Dangling Modifier] "it''s" is the contraction for "it is," not a possessive form.
- C: [Tense Shift] "it" is a subject pronoun, not a possessive modifier for "wings."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1b293021-414c-47f8-aab7-a54a8f3f7840', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. Each of the volunteers that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges. Stakeholders should weigh the evidence against limitations the researchers document throughout the study.', 'passage', '[{"id":"A","text":"was","is_correct":true,"explanation":"Correct: \"was\" satisfies Standard English conventions for this blank."},{"id":"B","text":"were","is_correct":false,"explanation":"[Dangling Modifier] agrees with \"volunteers\" near the blank rather than the true subject \"Each\"."},{"id":"C","text":"are","is_correct":false,"explanation":"[Proximity Decoy] breaks the present-timeline established by \"next month\" and surrounding context."},{"id":"D","text":"is","is_correct":false,"explanation":"[Tense Shift] creates a non-finite or mismatched form that cannot complete the independent clause."}]'::jsonb, 'A', 'Step 1 — Locate the true subject
The subject is {{yellow:Each of the volunteers}}; "Each" is singular despite the intervening phrase.

Step 2 — Match agreement
Ignore the prepositional phrase between subject and verb; match number and tense to the schedule context.

Step 3 — Select the grammatical option
Choice A (was) is grammatically correct.

Distractor analysis:
- B: [Dangling Modifier] agrees with "volunteers" near the blank rather than the true subject "Each".
- C: [Proximity Decoy] breaks the present-timeline established by "next month" and surrounding context.
- D: [Tense Shift] creates a non-finite or mismatched form that cannot complete the independent clause.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('006bca7e-b99d-4e18-9d47-6994f380fbc3', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. When a monarch butterfly hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Policy implications depend on whether the observed effect persists when practical constraints such as access vary. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Dangling Modifier] \"their\" is plural while the antecedent \"monarch butterfly\" is singular."},{"id":"B","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."},{"id":"C","text":"it''s","is_correct":false,"explanation":"[Tense Shift] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"D","text":"it","is_correct":false,"explanation":"[Proximity Decoy] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""}]'::jsonb, 'B', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a monarch butterfly}}, which is singular.

Step 2 — Choose the possessive
The singular possessive without an apostrophe modifies ''wings.''

Step 3 — Select the grammatical option
Choice B (its) is grammatically correct.

Distractor analysis:
- A: [Dangling Modifier] "their" is plural while the antecedent "monarch butterfly" is singular.
- C: [Tense Shift] "it''s" is the contraction for "it is," not a possessive form.
- D: [Proximity Decoy] "it" is a subject pronoun, not a possessive modifier for "wings."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4a4781c0-83cd-4763-80b3-d5caac762143', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. A series of lectures that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical.', 'passage', '[{"id":"A","text":"were","is_correct":false,"explanation":"[Proximity Decoy] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"B","text":"are","is_correct":false,"explanation":"[Tense Shift] agrees with \"lectures\" near the blank rather than the true subject \"series\"."},{"id":"C","text":"is","is_correct":true,"explanation":"Correct: \"is\" satisfies Standard English conventions for this blank."},{"id":"D","text":"was","is_correct":false,"explanation":"[Dangling Modifier] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'C', 'Step 1 — Locate the true subject
The subject is {{yellow:A series of lectures}}; "series" is singular despite the intervening phrase.

Step 2 — Match agreement
Ignore the prepositional phrase between subject and verb; match number and tense to the schedule context.

Step 3 — Select the grammatical option
Choice C (is) is grammatically correct.

Distractor analysis:
- A: [Proximity Decoy] creates a non-finite or mismatched form that cannot complete the independent clause.
- B: [Tense Shift] agrees with "lectures" near the blank rather than the true subject "series".
- D: [Dangling Modifier] breaks the present-timeline established by "next month" and surrounding context.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2fa76716-175c-450a-8725-0e92d1f588a5', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. When a hummingbird hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids. Classroom textbooks may still compress the result, though the original study qualifies every major claim.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Tense Shift] \"their\" is plural while the antecedent \"hummingbird\" is singular."},{"id":"B","text":"it''s","is_correct":false,"explanation":"[Proximity Decoy] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"C","text":"it","is_correct":false,"explanation":"[Dangling Modifier] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""},{"id":"D","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a hummingbird}}, which is singular.

Step 2 — Choose the possessive
The singular possessive without an apostrophe modifies ''wings.''

Step 3 — Select the grammatical option
Choice D (its) is grammatically correct.

Distractor analysis:
- A: [Tense Shift] "their" is plural while the antecedent "hummingbird" is singular.
- B: [Proximity Decoy] "it''s" is the contraction for "it is," not a possessive form.
- C: [Dangling Modifier] "it" is a subject pronoun, not a possessive modifier for "wings."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4082744a-2882-4d68-93c1-9b46917256bd', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. The panel of experts that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Policy implications depend on whether the observed effect persists when practical constraints such as access vary. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them.', 'passage', '[{"id":"A","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"B","text":"have","is_correct":false,"explanation":"[Proximity Decoy] agrees with \"experts\" near the blank rather than the true subject \"panel\"."},{"id":"C","text":"does","is_correct":false,"explanation":"[Dangling Modifier] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"D","text":"had","is_correct":false,"explanation":"[Tense Shift] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'A', 'Step 1 — Locate the true subject
The subject is {{yellow:The panel of experts}}; "panel" is singular despite the intervening phrase.

Step 2 — Match agreement
Ignore the prepositional phrase between subject and verb; match number and tense to the schedule context.

Step 3 — Select the grammatical option
Choice A (has) is grammatically correct.

Distractor analysis:
- B: [Proximity Decoy] agrees with "experts" near the blank rather than the true subject "panel".
- C: [Dangling Modifier] creates a non-finite or mismatched form that cannot complete the independent clause.
- D: [Tense Shift] breaks the present-timeline established by "next month" and surrounding context.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('561ad9d3-0f6d-4581-bb0b-bada226dfa3f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. When a sea turtle hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Proximity Decoy] \"their\" is plural while the antecedent \"sea turtle\" is singular."},{"id":"B","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."},{"id":"C","text":"it''s","is_correct":false,"explanation":"[Dangling Modifier] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"D","text":"it","is_correct":false,"explanation":"[Tense Shift] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""}]'::jsonb, 'B', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a sea turtle}}, which is singular.

Step 2 — Choose the possessive
The singular possessive without an apostrophe modifies ''wings.''

Step 3 — Select the grammatical option
Choice B (its) is grammatically correct.

Distractor analysis:
- A: [Proximity Decoy] "their" is plural while the antecedent "sea turtle" is singular.
- C: [Dangling Modifier] "it''s" is the contraction for "it is," not a possessive form.
- D: [Tense Shift] "it" is a subject pronoun, not a possessive modifier for "wings."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('773715b6-2ac0-49f5-aec7-1c66b7c29d5a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. The number of applicants that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids. Classroom textbooks may still compress the result, though the original study qualifies every major claim.', 'passage', '[{"id":"A","text":"have","is_correct":false,"explanation":"[Dangling Modifier] agrees with \"applicants\" near the blank rather than the true subject \"number\"."},{"id":"B","text":"does","is_correct":false,"explanation":"[Tense Shift] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"C","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"D","text":"had","is_correct":false,"explanation":"[Proximity Decoy] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'C', 'Step 1 — Locate the true subject
The subject is {{yellow:The number of applicants}}; "number" is singular despite the intervening phrase.

Step 2 — Match agreement
Ignore the prepositional phrase between subject and verb; match number and tense to the schedule context.

Step 3 — Select the grammatical option
Choice C (has) is grammatically correct.

Distractor analysis:
- A: [Dangling Modifier] agrees with "applicants" near the blank rather than the true subject "number".
- B: [Tense Shift] creates a non-finite or mismatched form that cannot complete the independent clause.
- D: [Proximity Decoy] breaks the present-timeline established by "next month" and surrounding context.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8e4b1995-ae37-447a-967e-389e22886be8', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. When a gray wolf hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges. Stakeholders should weigh the evidence against limitations the researchers document throughout the study.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Dangling Modifier] \"their\" is plural while the antecedent \"gray wolf\" is singular."},{"id":"B","text":"it''s","is_correct":false,"explanation":"[Tense Shift] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"C","text":"it","is_correct":false,"explanation":"[Proximity Decoy] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""},{"id":"D","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a gray wolf}}, which is singular.

Step 2 — Choose the possessive
The singular possessive without an apostrophe modifies ''wings.''

Step 3 — Select the grammatical option
Choice D (its) is grammatically correct.

Distractor analysis:
- A: [Dangling Modifier] "their" is plural while the antecedent "gray wolf" is singular.
- B: [Tense Shift] "it''s" is the contraction for "it is," not a possessive form.
- C: [Proximity Decoy] "it" is a subject pronoun, not a possessive modifier for "wings."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('01443148-15cb-44c7-9c95-ccfcf5242fa1', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. The collection of manuscripts that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Correct: \"is\" satisfies Standard English conventions for this blank."},{"id":"B","text":"were","is_correct":false,"explanation":"[Proximity Decoy] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"C","text":"are","is_correct":false,"explanation":"[Tense Shift] agrees with \"manuscripts\" near the blank rather than the true subject \"collection\"."},{"id":"D","text":"was","is_correct":false,"explanation":"[Dangling Modifier] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'A', 'Step 1 — Locate the true subject
The subject is {{yellow:The collection of manuscripts}}; "collection" is singular despite the intervening phrase.

Step 2 — Match agreement
Ignore the prepositional phrase between subject and verb; match number and tense to the schedule context.

Step 3 — Select the grammatical option
Choice A (is) is grammatically correct.

Distractor analysis:
- B: [Proximity Decoy] creates a non-finite or mismatched form that cannot complete the independent clause.
- C: [Tense Shift] agrees with "manuscripts" near the blank rather than the true subject "collection".
- D: [Dangling Modifier] breaks the present-timeline established by "next month" and surrounding context.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d44e2904-818d-473e-97f6-8e79059572f7', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. When a songbird hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Tense Shift] \"their\" is plural while the antecedent \"songbird\" is singular."},{"id":"B","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."},{"id":"C","text":"it''s","is_correct":false,"explanation":"[Proximity Decoy] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"D","text":"it","is_correct":false,"explanation":"[Dangling Modifier] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""}]'::jsonb, 'B', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a songbird}}, which is singular.

Step 2 — Choose the possessive
The singular possessive without an apostrophe modifies ''wings.''

Step 3 — Select the grammatical option
Choice B (its) is grammatically correct.

Distractor analysis:
- A: [Tense Shift] "their" is plural while the antecedent "songbird" is singular.
- C: [Proximity Decoy] "it''s" is the contraction for "it is," not a possessive form.
- D: [Dangling Modifier] "it" is a subject pronoun, not a possessive modifier for "wings."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('50c285f9-af94-4456-95e1-0c7922447ca8', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. Each of the volunteers that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges. Stakeholders should weigh the evidence against limitations the researchers document throughout the study.', 'passage', '[{"id":"A","text":"were","is_correct":false,"explanation":"[Proximity Decoy] agrees with \"volunteers\" near the blank rather than the true subject \"Each\"."},{"id":"B","text":"are","is_correct":false,"explanation":"[Tense Shift] breaks the present-timeline established by \"next month\" and surrounding context."},{"id":"C","text":"was","is_correct":true,"explanation":"Correct: \"was\" satisfies Standard English conventions for this blank."},{"id":"D","text":"is","is_correct":false,"explanation":"[Dangling Modifier] creates a non-finite or mismatched form that cannot complete the independent clause."}]'::jsonb, 'C', 'Step 1 — Locate the true subject
The subject is {{yellow:Each of the volunteers}}; "Each" is singular despite the intervening phrase.

Step 2 — Match agreement
Ignore the prepositional phrase between subject and verb; match number and tense to the schedule context.

Step 3 — Select the grammatical option
Choice C (was) is grammatically correct.

Distractor analysis:
- A: [Proximity Decoy] agrees with "volunteers" near the blank rather than the true subject "Each".
- B: [Tense Shift] breaks the present-timeline established by "next month" and surrounding context.
- D: [Dangling Modifier] creates a non-finite or mismatched form that cannot complete the independent clause.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d3c65e73-2138-44b7-bea8-c48850a1fb25', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. When a monarch butterfly hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Policy implications depend on whether the observed effect persists when practical constraints such as access vary. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Proximity Decoy] \"their\" is plural while the antecedent \"monarch butterfly\" is singular."},{"id":"B","text":"it''s","is_correct":false,"explanation":"[Dangling Modifier] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"C","text":"it","is_correct":false,"explanation":"[Tense Shift] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""},{"id":"D","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a monarch butterfly}}, which is singular.

Step 2 — Choose the possessive
The singular possessive without an apostrophe modifies ''wings.''

Step 3 — Select the grammatical option
Choice D (its) is grammatically correct.

Distractor analysis:
- A: [Proximity Decoy] "their" is plural while the antecedent "monarch butterfly" is singular.
- B: [Dangling Modifier] "it''s" is the contraction for "it is," not a possessive form.
- C: [Tense Shift] "it" is a subject pronoun, not a possessive modifier for "wings."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('251ca974-bcfb-4747-b96a-6e8b94c598ab', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. A series of lectures that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Correct: \"is\" satisfies Standard English conventions for this blank."},{"id":"B","text":"were","is_correct":false,"explanation":"[Tense Shift] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"C","text":"are","is_correct":false,"explanation":"[Dangling Modifier] agrees with \"lectures\" near the blank rather than the true subject \"series\"."},{"id":"D","text":"was","is_correct":false,"explanation":"[Proximity Decoy] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'A', 'Step 1 — Locate the true subject
The subject is {{yellow:A series of lectures}}; "series" is singular despite the intervening phrase.

Step 2 — Match agreement
Ignore the prepositional phrase between subject and verb; match number and tense to the schedule context.

Step 3 — Select the grammatical option
Choice A (is) is grammatically correct.

Distractor analysis:
- B: [Tense Shift] creates a non-finite or mismatched form that cannot complete the independent clause.
- C: [Dangling Modifier] agrees with "lectures" near the blank rather than the true subject "series".
- D: [Proximity Decoy] breaks the present-timeline established by "next month" and surrounding context.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('668d13f8-5f38-4e70-9ac6-1828114d77d0', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. When a hummingbird hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids. Classroom textbooks may still compress the result, though the original study qualifies every major claim.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Dangling Modifier] \"their\" is plural while the antecedent \"hummingbird\" is singular."},{"id":"B","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."},{"id":"C","text":"it''s","is_correct":false,"explanation":"[Tense Shift] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"D","text":"it","is_correct":false,"explanation":"[Proximity Decoy] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""}]'::jsonb, 'B', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a hummingbird}}, which is singular.

Step 2 — Choose the possessive
The singular possessive without an apostrophe modifies ''wings.''

Step 3 — Select the grammatical option
Choice B (its) is grammatically correct.

Distractor analysis:
- A: [Dangling Modifier] "their" is plural while the antecedent "hummingbird" is singular.
- C: [Tense Shift] "it''s" is the contraction for "it is," not a possessive form.
- D: [Proximity Decoy] "it" is a subject pronoun, not a possessive modifier for "wings."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3771a0b3-0b55-4c94-bc65-6c7e07358ea1', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying archaeology at coastal excavation trenches have documented how ceramic shard assemblages shape broader conclusions. A strong documentary should inform its audience, challenge their assumptions, and ______ viewers to reconsider a familiar subject from an unexpected angle. Stakeholders should weigh the evidence against limitations the researchers document throughout the study. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage.', 'passage', '[{"id":"A","text":"inviting","is_correct":false,"explanation":"[Dangling Modifier] present participle agrees with a nearby noun but breaks the parallel verb series after \"should.\""},{"id":"B","text":"invites","is_correct":false,"explanation":"[Proximity Decoy] third-person singular form breaks the established base-form verb series."},{"id":"C","text":"invite","is_correct":true,"explanation":"Correct: \"invite\" satisfies Standard English conventions for this blank."},{"id":"D","text":"invited","is_correct":false,"explanation":"[Tense Shift] past participle disrupts the parallel base verbs \"inform\" and \"challenge\" after \"should.\""}]'::jsonb, 'C', 'Step 1 — Spot the series
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
VALUES ('b95aa258-577e-43b1-a290-262cbe7e999b', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. The lead researcher, along with several junior analysts who reviewed the raw telemetry, ______ prepared a revised manuscript before the funding deadline arrived. Policy implications depend on whether the observed effect persists when practical constraints such as access vary. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them.', 'passage', '[{"id":"A","text":"have","is_correct":false,"explanation":"[Dangling Modifier] plural \"have\" agrees with \"analysts\" near the blank, not the singular subject \"researcher.\""},{"id":"B","text":"had","is_correct":false,"explanation":"[Proximity Decoy] past perfect breaks the present-perfect timeline implied by the ongoing manuscript preparation."},{"id":"C","text":"are","is_correct":false,"explanation":"[Tense Shift] \"are\" is a linking verb that leaves the participial phrase \"prepared\" dangling without a finite main verb."},{"id":"D","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Find the true subject
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
VALUES ('f5b9ed37-7422-46c7-bce7-e45341f61744', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying archaeology at coastal excavation trenches have documented how ceramic shard assemblages shape broader conclusions. By the time the survey results were published in the spring, the research team ______ the same neighborhoods for nearly a decade, returning each year to record incremental changes. Stakeholders should weigh the evidence against limitations the researchers document throughout the study. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage.', 'passage', '[{"id":"A","text":"had studied","is_correct":true,"explanation":"Correct: \"had studied\" satisfies Standard English conventions for this blank."},{"id":"B","text":"have studied","is_correct":false,"explanation":"[Tense Shift] present perfect plural cannot express an action completed before a past anchor event."},{"id":"C","text":"has studied","is_correct":false,"explanation":"[Dangling Modifier] present perfect agrees with a nearby plural noun but not the past-before-past timeline required here."},{"id":"D","text":"was studied","is_correct":false,"explanation":"[Proximity Decoy] passive past breaks the active timeline anchored by \"were published.\""}]'::jsonb, 'A', 'Step 1 — Establish the timeline
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
VALUES ('647dd37c-3e1f-4779-bd28-97dd9c6fa04e', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. A strong documentary should inform its audience, challenge their assumptions, and ______ viewers to reconsider a familiar subject from an unexpected angle. Policy implications depend on whether the observed effect persists when practical constraints such as access vary. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them.', 'passage', '[{"id":"A","text":"inviting","is_correct":false,"explanation":"[Dangling Modifier] present participle agrees with a nearby noun but breaks the parallel verb series after \"should.\""},{"id":"B","text":"invite","is_correct":true,"explanation":"Correct: \"invite\" satisfies Standard English conventions for this blank."},{"id":"C","text":"invites","is_correct":false,"explanation":"[Proximity Decoy] third-person singular form breaks the established base-form verb series."},{"id":"D","text":"invited","is_correct":false,"explanation":"[Tense Shift] past participle disrupts the parallel base verbs \"inform\" and \"challenge\" after \"should.\""}]'::jsonb, 'B', 'Step 1 — Spot the series
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
VALUES ('df71d0d3-ba24-42cf-9379-ab7a00f805f4', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying ecology at mangrove restoration plots have documented how seedling survival rates shape broader conclusions. The lead researcher, along with several junior analysts who reviewed the raw telemetry, ______ prepared a revised manuscript before the funding deadline arrived. Classroom textbooks may still compress the result, though the original study qualifies every major claim. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled.', 'passage', '[{"id":"A","text":"have","is_correct":false,"explanation":"[Dangling Modifier] plural \"have\" agrees with \"analysts\" near the blank, not the singular subject \"researcher.\""},{"id":"B","text":"had","is_correct":false,"explanation":"[Proximity Decoy] past perfect breaks the present-perfect timeline implied by the ongoing manuscript preparation."},{"id":"C","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"D","text":"are","is_correct":false,"explanation":"[Tense Shift] \"are\" is a linking verb that leaves the participial phrase \"prepared\" dangling without a finite main verb."}]'::jsonb, 'C', 'Step 1 — Find the true subject
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
VALUES ('749bb021-f699-49d0-a155-d41cddd69a89', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. By the time the survey results were published in the spring, the research team ______ the same neighborhoods for nearly a decade, returning each year to record incremental changes. Policy implications depend on whether the observed effect persists when practical constraints such as access vary.', 'passage', '[{"id":"A","text":"have studied","is_correct":false,"explanation":"[Tense Shift] present perfect plural cannot express an action completed before a past anchor event."},{"id":"B","text":"has studied","is_correct":false,"explanation":"[Dangling Modifier] present perfect agrees with a nearby plural noun but not the past-before-past timeline required here."},{"id":"C","text":"was studied","is_correct":false,"explanation":"[Proximity Decoy] passive past breaks the active timeline anchored by \"were published.\""},{"id":"D","text":"had studied","is_correct":true,"explanation":"Correct: \"had studied\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Establish the timeline
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
VALUES ('734964e7-1594-4a55-8022-9db6f2f46151', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying ecology at mangrove restoration plots have documented how seedling survival rates shape broader conclusions. A strong documentary should inform its audience, challenge their assumptions, and ______ viewers to reconsider a familiar subject from an unexpected angle. Classroom textbooks may still compress the result, though the original study qualifies every major claim. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled.', 'passage', '[{"id":"A","text":"invite","is_correct":true,"explanation":"Correct: \"invite\" satisfies Standard English conventions for this blank."},{"id":"B","text":"inviting","is_correct":false,"explanation":"[Dangling Modifier] present participle agrees with a nearby noun but breaks the parallel verb series after \"should.\""},{"id":"C","text":"invites","is_correct":false,"explanation":"[Proximity Decoy] third-person singular form breaks the established base-form verb series."},{"id":"D","text":"invited","is_correct":false,"explanation":"[Tense Shift] past participle disrupts the parallel base verbs \"inform\" and \"challenge\" after \"should.\""}]'::jsonb, 'A', 'Step 1 — Spot the series
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
VALUES ('72b58541-2271-4e0f-9d64-8060701c6054', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. The lead researcher, along with several junior analysts who reviewed the raw telemetry, ______ prepared a revised manuscript before the funding deadline arrived. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges. Stakeholders should weigh the evidence against limitations the researchers document throughout the study.', 'passage', '[{"id":"A","text":"have","is_correct":false,"explanation":"[Dangling Modifier] plural \"have\" agrees with \"analysts\" near the blank, not the singular subject \"researcher.\""},{"id":"B","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"C","text":"had","is_correct":false,"explanation":"[Proximity Decoy] past perfect breaks the present-perfect timeline implied by the ongoing manuscript preparation."},{"id":"D","text":"are","is_correct":false,"explanation":"[Tense Shift] \"are\" is a linking verb that leaves the participial phrase \"prepared\" dangling without a finite main verb."}]'::jsonb, 'B', 'Step 1 — Find the true subject
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
VALUES ('f2c303a8-15e5-4d9e-a8d5-971cb17fb29e', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying ecology at mangrove restoration plots have documented how seedling survival rates shape broader conclusions. By the time the survey results were published in the spring, the research team ______ the same neighborhoods for nearly a decade, returning each year to record incremental changes. Classroom textbooks may still compress the result, though the original study qualifies every major claim.', 'passage', '[{"id":"A","text":"have studied","is_correct":false,"explanation":"[Tense Shift] present perfect plural cannot express an action completed before a past anchor event."},{"id":"B","text":"has studied","is_correct":false,"explanation":"[Dangling Modifier] present perfect agrees with a nearby plural noun but not the past-before-past timeline required here."},{"id":"C","text":"had studied","is_correct":true,"explanation":"Correct: \"had studied\" satisfies Standard English conventions for this blank."},{"id":"D","text":"was studied","is_correct":false,"explanation":"[Proximity Decoy] passive past breaks the active timeline anchored by \"were published.\""}]'::jsonb, 'C', 'Step 1 — Establish the timeline
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
VALUES ('72bdcb49-409d-4db9-849d-e155716605a0', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. A strong documentary should inform its audience, challenge their assumptions, and ______ viewers to reconsider a familiar subject from an unexpected angle. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges. Stakeholders should weigh the evidence against limitations the researchers document throughout the study.', 'passage', '[{"id":"A","text":"inviting","is_correct":false,"explanation":"[Dangling Modifier] present participle agrees with a nearby noun but breaks the parallel verb series after \"should.\""},{"id":"B","text":"invites","is_correct":false,"explanation":"[Proximity Decoy] third-person singular form breaks the established base-form verb series."},{"id":"C","text":"invited","is_correct":false,"explanation":"[Tense Shift] past participle disrupts the parallel base verbs \"inform\" and \"challenge\" after \"should.\""},{"id":"D","text":"invite","is_correct":true,"explanation":"Correct: \"invite\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Spot the series
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
VALUES ('fc6196c4-6ec2-4d08-bb46-83857e73fab7', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying paleoclimatology at Antarctic ice-core laboratories have documented how sulfate spike layers shape broader conclusions. The lead researcher, along with several junior analysts who reviewed the raw telemetry, ______ prepared a revised manuscript before the funding deadline arrived. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical. Policy implications depend on whether the observed effect persists when practical constraints such as access vary.', 'passage', '[{"id":"A","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"B","text":"have","is_correct":false,"explanation":"[Dangling Modifier] plural \"have\" agrees with \"analysts\" near the blank, not the singular subject \"researcher.\""},{"id":"C","text":"had","is_correct":false,"explanation":"[Proximity Decoy] past perfect breaks the present-perfect timeline implied by the ongoing manuscript preparation."},{"id":"D","text":"are","is_correct":false,"explanation":"[Tense Shift] \"are\" is a linking verb that leaves the participial phrase \"prepared\" dangling without a finite main verb."}]'::jsonb, 'A', 'Step 1 — Find the true subject
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
VALUES ('216dc618-c608-4fef-b765-e15bb66fc8b7', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. By the time the survey results were published in the spring, the research team ______ the same neighborhoods for nearly a decade, returning each year to record incremental changes. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges. Stakeholders should weigh the evidence against limitations the researchers document throughout the study.', 'passage', '[{"id":"A","text":"have studied","is_correct":false,"explanation":"[Tense Shift] present perfect plural cannot express an action completed before a past anchor event."},{"id":"B","text":"had studied","is_correct":true,"explanation":"Correct: \"had studied\" satisfies Standard English conventions for this blank."},{"id":"C","text":"has studied","is_correct":false,"explanation":"[Dangling Modifier] present perfect agrees with a nearby plural noun but not the past-before-past timeline required here."},{"id":"D","text":"was studied","is_correct":false,"explanation":"[Proximity Decoy] passive past breaks the active timeline anchored by \"were published.\""}]'::jsonb, 'B', 'Step 1 — Establish the timeline
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
VALUES ('af4f11bd-b20f-4264-8447-8dd73d6ab8af', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying paleoclimatology at Antarctic ice-core laboratories have documented how sulfate spike layers shape broader conclusions. A strong documentary should inform its audience, challenge their assumptions, and ______ viewers to reconsider a familiar subject from an unexpected angle. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical. Policy implications depend on whether the observed effect persists when practical constraints such as access vary.', 'passage', '[{"id":"A","text":"inviting","is_correct":false,"explanation":"[Dangling Modifier] present participle agrees with a nearby noun but breaks the parallel verb series after \"should.\""},{"id":"B","text":"invites","is_correct":false,"explanation":"[Proximity Decoy] third-person singular form breaks the established base-form verb series."},{"id":"C","text":"invite","is_correct":true,"explanation":"Correct: \"invite\" satisfies Standard English conventions for this blank."},{"id":"D","text":"invited","is_correct":false,"explanation":"[Tense Shift] past participle disrupts the parallel base verbs \"inform\" and \"challenge\" after \"should.\""}]'::jsonb, 'C', 'Step 1 — Spot the series
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
VALUES ('a857e4ae-70c4-4acd-8e4d-e7130cc7088e', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. The lead researcher, along with several junior analysts who reviewed the raw telemetry, ______ prepared a revised manuscript before the funding deadline arrived. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids. Classroom textbooks may still compress the result, though the original study qualifies every major claim.', 'passage', '[{"id":"A","text":"have","is_correct":false,"explanation":"[Dangling Modifier] plural \"have\" agrees with \"analysts\" near the blank, not the singular subject \"researcher.\""},{"id":"B","text":"had","is_correct":false,"explanation":"[Proximity Decoy] past perfect breaks the present-perfect timeline implied by the ongoing manuscript preparation."},{"id":"C","text":"are","is_correct":false,"explanation":"[Tense Shift] \"are\" is a linking verb that leaves the participial phrase \"prepared\" dangling without a finite main verb."},{"id":"D","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Find the true subject
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
VALUES ('4dd59ff2-0ff2-458a-9925-825d0b4708d9', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying paleoclimatology at Antarctic ice-core laboratories have documented how sulfate spike layers shape broader conclusions. By the time the survey results were published in the spring, the research team ______ the same neighborhoods for nearly a decade, returning each year to record incremental changes. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical. Policy implications depend on whether the observed effect persists when practical constraints such as access vary.', 'passage', '[{"id":"A","text":"had studied","is_correct":true,"explanation":"Correct: \"had studied\" satisfies Standard English conventions for this blank."},{"id":"B","text":"have studied","is_correct":false,"explanation":"[Tense Shift] present perfect plural cannot express an action completed before a past anchor event."},{"id":"C","text":"has studied","is_correct":false,"explanation":"[Dangling Modifier] present perfect agrees with a nearby plural noun but not the past-before-past timeline required here."},{"id":"D","text":"was studied","is_correct":false,"explanation":"[Proximity Decoy] passive past breaks the active timeline anchored by \"were published.\""}]'::jsonb, 'A', 'Step 1 — Establish the timeline
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
VALUES ('486bdd7b-f370-4dfe-8e6d-6f670cc7abe0', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. A strong documentary should inform its audience, challenge their assumptions, and ______ viewers to reconsider a familiar subject from an unexpected angle. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids. Classroom textbooks may still compress the result, though the original study qualifies every major claim.', 'passage', '[{"id":"A","text":"inviting","is_correct":false,"explanation":"[Dangling Modifier] present participle agrees with a nearby noun but breaks the parallel verb series after \"should.\""},{"id":"B","text":"invite","is_correct":true,"explanation":"Correct: \"invite\" satisfies Standard English conventions for this blank."},{"id":"C","text":"invites","is_correct":false,"explanation":"[Proximity Decoy] third-person singular form breaks the established base-form verb series."},{"id":"D","text":"invited","is_correct":false,"explanation":"[Tense Shift] past participle disrupts the parallel base verbs \"inform\" and \"challenge\" after \"should.\""}]'::jsonb, 'B', 'Step 1 — Spot the series
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
VALUES ('ad2a395c-7db4-486e-844a-2c9e665a4f7d', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying economics at regional labor market surveys have documented how wage adjustment estimates shape broader conclusions. The lead researcher, along with several junior analysts who reviewed the raw telemetry, ______ prepared a revised manuscript before the funding deadline arrived. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges.', 'passage', '[{"id":"A","text":"have","is_correct":false,"explanation":"[Dangling Modifier] plural \"have\" agrees with \"analysts\" near the blank, not the singular subject \"researcher.\""},{"id":"B","text":"had","is_correct":false,"explanation":"[Proximity Decoy] past perfect breaks the present-perfect timeline implied by the ongoing manuscript preparation."},{"id":"C","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"D","text":"are","is_correct":false,"explanation":"[Tense Shift] \"are\" is a linking verb that leaves the participial phrase \"prepared\" dangling without a finite main verb."}]'::jsonb, 'C', 'Step 1 — Find the true subject
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
VALUES ('483ce363-193d-44de-88df-01dcc709d7bb', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. By the time the survey results were published in the spring, the research team ______ the same neighborhoods for nearly a decade, returning each year to record incremental changes. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids.', 'passage', '[{"id":"A","text":"have studied","is_correct":false,"explanation":"[Tense Shift] present perfect plural cannot express an action completed before a past anchor event."},{"id":"B","text":"has studied","is_correct":false,"explanation":"[Dangling Modifier] present perfect agrees with a nearby plural noun but not the past-before-past timeline required here."},{"id":"C","text":"was studied","is_correct":false,"explanation":"[Proximity Decoy] passive past breaks the active timeline anchored by \"were published.\""},{"id":"D","text":"had studied","is_correct":true,"explanation":"Correct: \"had studied\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Establish the timeline
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
VALUES ('08348327-03ff-4d7a-81c5-1264437d8b98', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying economics at regional labor market surveys have documented how wage adjustment estimates shape broader conclusions. A strong documentary should inform its audience, challenge their assumptions, and ______ viewers to reconsider a familiar subject from an unexpected angle. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges.', 'passage', '[{"id":"A","text":"invite","is_correct":true,"explanation":"Correct: \"invite\" satisfies Standard English conventions for this blank."},{"id":"B","text":"inviting","is_correct":false,"explanation":"[Dangling Modifier] present participle agrees with a nearby noun but breaks the parallel verb series after \"should.\""},{"id":"C","text":"invites","is_correct":false,"explanation":"[Proximity Decoy] third-person singular form breaks the established base-form verb series."},{"id":"D","text":"invited","is_correct":false,"explanation":"[Tense Shift] past participle disrupts the parallel base verbs \"inform\" and \"challenge\" after \"should.\""}]'::jsonb, 'A', 'Step 1 — Spot the series
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
VALUES ('5713c1f6-3716-46e4-b5d6-fbb1ecf8af7d', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. The lead researcher, along with several junior analysts who reviewed the raw telemetry, ______ prepared a revised manuscript before the funding deadline arrived. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical.', 'passage', '[{"id":"A","text":"have","is_correct":false,"explanation":"[Dangling Modifier] plural \"have\" agrees with \"analysts\" near the blank, not the singular subject \"researcher.\""},{"id":"B","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"C","text":"had","is_correct":false,"explanation":"[Proximity Decoy] past perfect breaks the present-perfect timeline implied by the ongoing manuscript preparation."},{"id":"D","text":"are","is_correct":false,"explanation":"[Tense Shift] \"are\" is a linking verb that leaves the participial phrase \"prepared\" dangling without a finite main verb."}]'::jsonb, 'B', 'Step 1 — Find the true subject
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
VALUES ('eb83a5d6-743b-4434-b814-8e0ec8e09c28', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying economics at regional labor market surveys have documented how wage adjustment estimates shape broader conclusions. By the time the survey results were published in the spring, the research team ______ the same neighborhoods for nearly a decade, returning each year to record incremental changes. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice.', 'passage', '[{"id":"A","text":"have studied","is_correct":false,"explanation":"[Tense Shift] present perfect plural cannot express an action completed before a past anchor event."},{"id":"B","text":"has studied","is_correct":false,"explanation":"[Dangling Modifier] present perfect agrees with a nearby plural noun but not the past-before-past timeline required here."},{"id":"C","text":"had studied","is_correct":true,"explanation":"Correct: \"had studied\" satisfies Standard English conventions for this blank."},{"id":"D","text":"was studied","is_correct":false,"explanation":"[Proximity Decoy] passive past breaks the active timeline anchored by \"were published.\""}]'::jsonb, 'C', 'Step 1 — Establish the timeline
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
VALUES ('c01c501a-cc02-4836-8ba2-9e104207c90c', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. A strong documentary should inform its audience, challenge their assumptions, and ______ viewers to reconsider a familiar subject from an unexpected angle. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical.', 'passage', '[{"id":"A","text":"inviting","is_correct":false,"explanation":"[Dangling Modifier] present participle agrees with a nearby noun but breaks the parallel verb series after \"should.\""},{"id":"B","text":"invites","is_correct":false,"explanation":"[Proximity Decoy] third-person singular form breaks the established base-form verb series."},{"id":"C","text":"invited","is_correct":false,"explanation":"[Tense Shift] past participle disrupts the parallel base verbs \"inform\" and \"challenge\" after \"should.\""},{"id":"D","text":"invite","is_correct":true,"explanation":"Correct: \"invite\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Spot the series
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
VALUES ('515e759c-7d43-48ff-b782-50ee75d3eff1', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying archaeology at coastal excavation trenches have documented how ceramic shard assemblages shape broader conclusions. The lead researcher, along with several junior analysts who reviewed the raw telemetry, ______ prepared a revised manuscript before the funding deadline arrived. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids.', 'passage', '[{"id":"A","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"B","text":"have","is_correct":false,"explanation":"[Dangling Modifier] plural \"have\" agrees with \"analysts\" near the blank, not the singular subject \"researcher.\""},{"id":"C","text":"had","is_correct":false,"explanation":"[Proximity Decoy] past perfect breaks the present-perfect timeline implied by the ongoing manuscript preparation."},{"id":"D","text":"are","is_correct":false,"explanation":"[Tense Shift] \"are\" is a linking verb that leaves the participial phrase \"prepared\" dangling without a finite main verb."}]'::jsonb, 'A', 'Step 1 — Find the true subject
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
VALUES ('0f2a0c89-03fb-4188-a416-260cc8f0e09e', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. By the time the survey results were published in the spring, the research team ______ the same neighborhoods for nearly a decade, returning each year to record incremental changes. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage.', 'passage', '[{"id":"A","text":"have studied","is_correct":false,"explanation":"[Tense Shift] present perfect plural cannot express an action completed before a past anchor event."},{"id":"B","text":"had studied","is_correct":true,"explanation":"Correct: \"had studied\" satisfies Standard English conventions for this blank."},{"id":"C","text":"has studied","is_correct":false,"explanation":"[Dangling Modifier] present perfect agrees with a nearby plural noun but not the past-before-past timeline required here."},{"id":"D","text":"was studied","is_correct":false,"explanation":"[Proximity Decoy] passive past breaks the active timeline anchored by \"were published.\""}]'::jsonb, 'B', 'Step 1 — Establish the timeline
The anchor event is past: {{yellow:By the time the survey results were published}}.

Step 2 — Show the earlier action
Studying happened before that past moment, requiring past perfect.

Step 3 — Select the grammatical option
Choice B (had studied) is grammatically correct.

Distractor analysis:
- A: [Tense Shift] present perfect plural cannot express an action completed before a past anchor event.
- C: [Dangling Modifier] present perfect agrees with a nearby plural noun but not the past-before-past timeline required here.
- D: [Proximity Decoy] passive past breaks the active timeline anchored by "were published."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
COMMIT;
