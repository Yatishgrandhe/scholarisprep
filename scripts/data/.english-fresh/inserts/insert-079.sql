BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b07e778e-bcdf-4b77-a5b2-9e96d86cf84d', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. The collection of manuscripts that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice.', 'passage', '[{"id":"A","text":"were","is_correct":false,"explanation":"[Dangling Modifier] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"B","text":"are","is_correct":false,"explanation":"[Proximity Decoy] agrees with \"manuscripts\" near the blank rather than the true subject \"collection\"."},{"id":"C","text":"is","is_correct":true,"explanation":"Correct: \"is\" satisfies Standard English conventions for this blank."},{"id":"D","text":"was","is_correct":false,"explanation":"[Tense Shift] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'C', 'Step 1 — Locate the true subject
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
VALUES ('39db0a98-d70f-47af-8383-28cb0a990847', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. When a songbird hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Proximity Decoy] \"their\" is plural while the antecedent \"songbird\" is singular."},{"id":"B","text":"it''s","is_correct":false,"explanation":"[Dangling Modifier] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"C","text":"it","is_correct":false,"explanation":"[Tense Shift] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""},{"id":"D","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Identify the antecedent
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
VALUES ('a6c3ddb2-b143-4882-b1e9-114f13a9a7e0', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. Each of the volunteers that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges. Stakeholders should weigh the evidence against limitations the researchers document throughout the study.', 'passage', '[{"id":"A","text":"was","is_correct":true,"explanation":"Correct: \"was\" satisfies Standard English conventions for this blank."},{"id":"B","text":"were","is_correct":false,"explanation":"[Dangling Modifier] agrees with \"volunteers\" near the blank rather than the true subject \"Each\"."},{"id":"C","text":"are","is_correct":false,"explanation":"[Proximity Decoy] breaks the present-timeline established by \"next month\" and surrounding context."},{"id":"D","text":"is","is_correct":false,"explanation":"[Tense Shift] creates a non-finite or mismatched form that cannot complete the independent clause."}]'::jsonb, 'A', 'Step 1 — Locate the true subject
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
VALUES ('32a80999-2dd3-4581-9e70-6ac9dfe430a0', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. When a monarch butterfly hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Policy implications depend on whether the observed effect persists when practical constraints such as access vary. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Dangling Modifier] \"their\" is plural while the antecedent \"monarch butterfly\" is singular."},{"id":"B","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."},{"id":"C","text":"it''s","is_correct":false,"explanation":"[Tense Shift] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"D","text":"it","is_correct":false,"explanation":"[Proximity Decoy] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""}]'::jsonb, 'B', 'Step 1 — Identify the antecedent
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
VALUES ('83fbe04c-4d4a-4546-a866-b651f8eab51d', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. A series of lectures that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical.', 'passage', '[{"id":"A","text":"were","is_correct":false,"explanation":"[Proximity Decoy] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"B","text":"are","is_correct":false,"explanation":"[Tense Shift] agrees with \"lectures\" near the blank rather than the true subject \"series\"."},{"id":"C","text":"is","is_correct":true,"explanation":"Correct: \"is\" satisfies Standard English conventions for this blank."},{"id":"D","text":"was","is_correct":false,"explanation":"[Dangling Modifier] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'C', 'Step 1 — Locate the true subject
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
VALUES ('8aae8657-2846-46e3-8ac9-4552a104cf64', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. When a hummingbird hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids. Classroom textbooks may still compress the result, though the original study qualifies every major claim.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Tense Shift] \"their\" is plural while the antecedent \"hummingbird\" is singular."},{"id":"B","text":"it''s","is_correct":false,"explanation":"[Proximity Decoy] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"C","text":"it","is_correct":false,"explanation":"[Dangling Modifier] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""},{"id":"D","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Identify the antecedent
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
VALUES ('0cc53a1b-51db-471b-89a7-de65514888f2', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. The panel of experts that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Policy implications depend on whether the observed effect persists when practical constraints such as access vary. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them.', 'passage', '[{"id":"A","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"B","text":"have","is_correct":false,"explanation":"[Proximity Decoy] agrees with \"experts\" near the blank rather than the true subject \"panel\"."},{"id":"C","text":"does","is_correct":false,"explanation":"[Dangling Modifier] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"D","text":"had","is_correct":false,"explanation":"[Tense Shift] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'A', 'Step 1 — Locate the true subject
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
VALUES ('bdc8ffba-76fa-439f-b4d8-c4d2fa0358e0', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. When a sea turtle hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Proximity Decoy] \"their\" is plural while the antecedent \"sea turtle\" is singular."},{"id":"B","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."},{"id":"C","text":"it''s","is_correct":false,"explanation":"[Dangling Modifier] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"D","text":"it","is_correct":false,"explanation":"[Tense Shift] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""}]'::jsonb, 'B', 'Step 1 — Identify the antecedent
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
VALUES ('ff5d7cb9-0a9b-48cd-b89f-dbf5d222a7b5', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. The number of applicants that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids. Classroom textbooks may still compress the result, though the original study qualifies every major claim.', 'passage', '[{"id":"A","text":"have","is_correct":false,"explanation":"[Dangling Modifier] agrees with \"applicants\" near the blank rather than the true subject \"number\"."},{"id":"B","text":"does","is_correct":false,"explanation":"[Tense Shift] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"C","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"D","text":"had","is_correct":false,"explanation":"[Proximity Decoy] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'C', 'Step 1 — Locate the true subject
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
VALUES ('d69fd5b0-9aed-43c1-bc70-a7d3d8f6c600', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. When a gray wolf hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges. Stakeholders should weigh the evidence against limitations the researchers document throughout the study.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Dangling Modifier] \"their\" is plural while the antecedent \"gray wolf\" is singular."},{"id":"B","text":"it''s","is_correct":false,"explanation":"[Tense Shift] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"C","text":"it","is_correct":false,"explanation":"[Proximity Decoy] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""},{"id":"D","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Identify the antecedent
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
VALUES ('c078adaa-e66c-45d7-bb81-7f6a92f62150', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. The collection of manuscripts that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Correct: \"is\" satisfies Standard English conventions for this blank."},{"id":"B","text":"were","is_correct":false,"explanation":"[Proximity Decoy] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"C","text":"are","is_correct":false,"explanation":"[Tense Shift] agrees with \"manuscripts\" near the blank rather than the true subject \"collection\"."},{"id":"D","text":"was","is_correct":false,"explanation":"[Dangling Modifier] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'A', 'Step 1 — Locate the true subject
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
VALUES ('4ab00054-4db5-4a17-9ba7-e43a5be7cfc1', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. When a songbird hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Tense Shift] \"their\" is plural while the antecedent \"songbird\" is singular."},{"id":"B","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."},{"id":"C","text":"it''s","is_correct":false,"explanation":"[Proximity Decoy] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"D","text":"it","is_correct":false,"explanation":"[Dangling Modifier] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""}]'::jsonb, 'B', 'Step 1 — Identify the antecedent
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
VALUES ('84b1516f-c6b7-4168-bd52-a313151fd9e7', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. Each of the volunteers that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges. Stakeholders should weigh the evidence against limitations the researchers document throughout the study.', 'passage', '[{"id":"A","text":"were","is_correct":false,"explanation":"[Proximity Decoy] agrees with \"volunteers\" near the blank rather than the true subject \"Each\"."},{"id":"B","text":"are","is_correct":false,"explanation":"[Tense Shift] breaks the present-timeline established by \"next month\" and surrounding context."},{"id":"C","text":"was","is_correct":true,"explanation":"Correct: \"was\" satisfies Standard English conventions for this blank."},{"id":"D","text":"is","is_correct":false,"explanation":"[Dangling Modifier] creates a non-finite or mismatched form that cannot complete the independent clause."}]'::jsonb, 'C', 'Step 1 — Locate the true subject
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
VALUES ('d91a928c-772e-4687-8157-12697ff384ea', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. When a monarch butterfly hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Policy implications depend on whether the observed effect persists when practical constraints such as access vary. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Proximity Decoy] \"their\" is plural while the antecedent \"monarch butterfly\" is singular."},{"id":"B","text":"it''s","is_correct":false,"explanation":"[Dangling Modifier] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"C","text":"it","is_correct":false,"explanation":"[Tense Shift] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""},{"id":"D","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Identify the antecedent
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
VALUES ('0fd14262-8009-4cfd-be48-1a8e86af2571', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. A series of lectures that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Correct: \"is\" satisfies Standard English conventions for this blank."},{"id":"B","text":"were","is_correct":false,"explanation":"[Tense Shift] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"C","text":"are","is_correct":false,"explanation":"[Dangling Modifier] agrees with \"lectures\" near the blank rather than the true subject \"series\"."},{"id":"D","text":"was","is_correct":false,"explanation":"[Proximity Decoy] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'A', 'Step 1 — Locate the true subject
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
VALUES ('3087c200-fdf3-4389-8b66-9164ce6644e1', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. When a hummingbird hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids. Classroom textbooks may still compress the result, though the original study qualifies every major claim.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Dangling Modifier] \"their\" is plural while the antecedent \"hummingbird\" is singular."},{"id":"B","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."},{"id":"C","text":"it''s","is_correct":false,"explanation":"[Tense Shift] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"D","text":"it","is_correct":false,"explanation":"[Proximity Decoy] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""}]'::jsonb, 'B', 'Step 1 — Identify the antecedent
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
VALUES ('fbcf21ff-2680-48e3-a139-631dd766af77', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. The panel of experts that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Policy implications depend on whether the observed effect persists when practical constraints such as access vary. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them.', 'passage', '[{"id":"A","text":"have","is_correct":false,"explanation":"[Tense Shift] agrees with \"experts\" near the blank rather than the true subject \"panel\"."},{"id":"B","text":"does","is_correct":false,"explanation":"[Proximity Decoy] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"C","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"D","text":"had","is_correct":false,"explanation":"[Dangling Modifier] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'C', 'Step 1 — Locate the true subject
The subject is {{yellow:The panel of experts}}; "panel" is singular despite the intervening phrase.

Step 2 — Match agreement
Ignore the prepositional phrase between subject and verb; match number and tense to the schedule context.

Step 3 — Select the grammatical option
Choice C (has) is grammatically correct.

Distractor analysis:
- A: [Tense Shift] agrees with "experts" near the blank rather than the true subject "panel".
- B: [Proximity Decoy] creates a non-finite or mismatched form that cannot complete the independent clause.
- D: [Dangling Modifier] breaks the present-timeline established by "next month" and surrounding context.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bd79ec62-25a2-4fe7-a105-8ee476e544a8', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. When a sea turtle hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Tense Shift] \"their\" is plural while the antecedent \"sea turtle\" is singular."},{"id":"B","text":"it''s","is_correct":false,"explanation":"[Proximity Decoy] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"C","text":"it","is_correct":false,"explanation":"[Dangling Modifier] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""},{"id":"D","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a sea turtle}}, which is singular.

Step 2 — Choose the possessive
The singular possessive without an apostrophe modifies ''wings.''

Step 3 — Select the grammatical option
Choice D (its) is grammatically correct.

Distractor analysis:
- A: [Tense Shift] "their" is plural while the antecedent "sea turtle" is singular.
- B: [Proximity Decoy] "it''s" is the contraction for "it is," not a possessive form.
- C: [Dangling Modifier] "it" is a subject pronoun, not a possessive modifier for "wings."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('699710f0-fb5b-4dcc-b8d5-3c34a922bcbb', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. The number of applicants that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids. Classroom textbooks may still compress the result, though the original study qualifies every major claim.', 'passage', '[{"id":"A","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"B","text":"have","is_correct":false,"explanation":"[Proximity Decoy] agrees with \"applicants\" near the blank rather than the true subject \"number\"."},{"id":"C","text":"does","is_correct":false,"explanation":"[Dangling Modifier] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"D","text":"had","is_correct":false,"explanation":"[Tense Shift] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'A', 'Step 1 — Locate the true subject
The subject is {{yellow:The number of applicants}}; "number" is singular despite the intervening phrase.

Step 2 — Match agreement
Ignore the prepositional phrase between subject and verb; match number and tense to the schedule context.

Step 3 — Select the grammatical option
Choice A (has) is grammatically correct.

Distractor analysis:
- B: [Proximity Decoy] agrees with "applicants" near the blank rather than the true subject "number".
- C: [Dangling Modifier] creates a non-finite or mismatched form that cannot complete the independent clause.
- D: [Tense Shift] breaks the present-timeline established by "next month" and surrounding context.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('69dbe7e2-a078-4c17-a1e3-91a8aaa6282e', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. When a gray wolf hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges. Stakeholders should weigh the evidence against limitations the researchers document throughout the study.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Proximity Decoy] \"their\" is plural while the antecedent \"gray wolf\" is singular."},{"id":"B","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."},{"id":"C","text":"it''s","is_correct":false,"explanation":"[Dangling Modifier] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"D","text":"it","is_correct":false,"explanation":"[Tense Shift] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""}]'::jsonb, 'B', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a gray wolf}}, which is singular.

Step 2 — Choose the possessive
The singular possessive without an apostrophe modifies ''wings.''

Step 3 — Select the grammatical option
Choice B (its) is grammatically correct.

Distractor analysis:
- A: [Proximity Decoy] "their" is plural while the antecedent "gray wolf" is singular.
- C: [Dangling Modifier] "it''s" is the contraction for "it is," not a possessive form.
- D: [Tense Shift] "it" is a subject pronoun, not a possessive modifier for "wings."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6ed2d567-56cd-4c7c-a2d9-ddb763232660', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. The collection of manuscripts that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice.', 'passage', '[{"id":"A","text":"were","is_correct":false,"explanation":"[Tense Shift] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"B","text":"are","is_correct":false,"explanation":"[Dangling Modifier] agrees with \"manuscripts\" near the blank rather than the true subject \"collection\"."},{"id":"C","text":"is","is_correct":true,"explanation":"Correct: \"is\" satisfies Standard English conventions for this blank."},{"id":"D","text":"was","is_correct":false,"explanation":"[Proximity Decoy] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'C', 'Step 1 — Locate the true subject
The subject is {{yellow:The collection of manuscripts}}; "collection" is singular despite the intervening phrase.

Step 2 — Match agreement
Ignore the prepositional phrase between subject and verb; match number and tense to the schedule context.

Step 3 — Select the grammatical option
Choice C (is) is grammatically correct.

Distractor analysis:
- A: [Tense Shift] creates a non-finite or mismatched form that cannot complete the independent clause.
- B: [Dangling Modifier] agrees with "manuscripts" near the blank rather than the true subject "collection".
- D: [Proximity Decoy] breaks the present-timeline established by "next month" and surrounding context.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bb25fb38-e9ab-427d-a7e8-e2b2e4e37178', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. When a songbird hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Dangling Modifier] \"their\" is plural while the antecedent \"songbird\" is singular."},{"id":"B","text":"it''s","is_correct":false,"explanation":"[Tense Shift] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"C","text":"it","is_correct":false,"explanation":"[Proximity Decoy] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""},{"id":"D","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a songbird}}, which is singular.

Step 2 — Choose the possessive
The singular possessive without an apostrophe modifies ''wings.''

Step 3 — Select the grammatical option
Choice D (its) is grammatically correct.

Distractor analysis:
- A: [Dangling Modifier] "their" is plural while the antecedent "songbird" is singular.
- B: [Tense Shift] "it''s" is the contraction for "it is," not a possessive form.
- C: [Proximity Decoy] "it" is a subject pronoun, not a possessive modifier for "wings."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8d32e424-be5d-4ad0-a371-59dbfa3c6f8e', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. Each of the volunteers that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges. Stakeholders should weigh the evidence against limitations the researchers document throughout the study.', 'passage', '[{"id":"A","text":"was","is_correct":true,"explanation":"Correct: \"was\" satisfies Standard English conventions for this blank."},{"id":"B","text":"were","is_correct":false,"explanation":"[Tense Shift] agrees with \"volunteers\" near the blank rather than the true subject \"Each\"."},{"id":"C","text":"are","is_correct":false,"explanation":"[Dangling Modifier] breaks the present-timeline established by \"next month\" and surrounding context."},{"id":"D","text":"is","is_correct":false,"explanation":"[Proximity Decoy] creates a non-finite or mismatched form that cannot complete the independent clause."}]'::jsonb, 'A', 'Step 1 — Locate the true subject
The subject is {{yellow:Each of the volunteers}}; "Each" is singular despite the intervening phrase.

Step 2 — Match agreement
Ignore the prepositional phrase between subject and verb; match number and tense to the schedule context.

Step 3 — Select the grammatical option
Choice A (was) is grammatically correct.

Distractor analysis:
- B: [Tense Shift] agrees with "volunteers" near the blank rather than the true subject "Each".
- C: [Dangling Modifier] breaks the present-timeline established by "next month" and surrounding context.
- D: [Proximity Decoy] creates a non-finite or mismatched form that cannot complete the independent clause.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('04406f58-731a-4d05-9499-10f7a6bdfa12', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. When a monarch butterfly hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Policy implications depend on whether the observed effect persists when practical constraints such as access vary. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Tense Shift] \"their\" is plural while the antecedent \"monarch butterfly\" is singular."},{"id":"B","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."},{"id":"C","text":"it''s","is_correct":false,"explanation":"[Proximity Decoy] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"D","text":"it","is_correct":false,"explanation":"[Dangling Modifier] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""}]'::jsonb, 'B', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a monarch butterfly}}, which is singular.

Step 2 — Choose the possessive
The singular possessive without an apostrophe modifies ''wings.''

Step 3 — Select the grammatical option
Choice B (its) is grammatically correct.

Distractor analysis:
- A: [Tense Shift] "their" is plural while the antecedent "monarch butterfly" is singular.
- C: [Proximity Decoy] "it''s" is the contraction for "it is," not a possessive form.
- D: [Dangling Modifier] "it" is a subject pronoun, not a possessive modifier for "wings."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7c758fd5-768e-4915-90ac-6e988e1e140f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. A series of lectures that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical.', 'passage', '[{"id":"A","text":"were","is_correct":false,"explanation":"[Dangling Modifier] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"B","text":"are","is_correct":false,"explanation":"[Proximity Decoy] agrees with \"lectures\" near the blank rather than the true subject \"series\"."},{"id":"C","text":"is","is_correct":true,"explanation":"Correct: \"is\" satisfies Standard English conventions for this blank."},{"id":"D","text":"was","is_correct":false,"explanation":"[Tense Shift] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'C', 'Step 1 — Locate the true subject
The subject is {{yellow:A series of lectures}}; "series" is singular despite the intervening phrase.

Step 2 — Match agreement
Ignore the prepositional phrase between subject and verb; match number and tense to the schedule context.

Step 3 — Select the grammatical option
Choice C (is) is grammatically correct.

Distractor analysis:
- A: [Dangling Modifier] creates a non-finite or mismatched form that cannot complete the independent clause.
- B: [Proximity Decoy] agrees with "lectures" near the blank rather than the true subject "series".
- D: [Tense Shift] breaks the present-timeline established by "next month" and surrounding context.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('47ae5450-ebba-476a-b6d0-03b56195589c', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. When a hummingbird hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids. Classroom textbooks may still compress the result, though the original study qualifies every major claim.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Proximity Decoy] \"their\" is plural while the antecedent \"hummingbird\" is singular."},{"id":"B","text":"it''s","is_correct":false,"explanation":"[Dangling Modifier] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"C","text":"it","is_correct":false,"explanation":"[Tense Shift] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""},{"id":"D","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a hummingbird}}, which is singular.

Step 2 — Choose the possessive
The singular possessive without an apostrophe modifies ''wings.''

Step 3 — Select the grammatical option
Choice D (its) is grammatically correct.

Distractor analysis:
- A: [Proximity Decoy] "their" is plural while the antecedent "hummingbird" is singular.
- B: [Dangling Modifier] "it''s" is the contraction for "it is," not a possessive form.
- C: [Tense Shift] "it" is a subject pronoun, not a possessive modifier for "wings."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('db5a6559-8be1-4f3a-adb1-ab623aa8ad38', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. The panel of experts that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Policy implications depend on whether the observed effect persists when practical constraints such as access vary. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them.', 'passage', '[{"id":"A","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"B","text":"have","is_correct":false,"explanation":"[Dangling Modifier] agrees with \"experts\" near the blank rather than the true subject \"panel\"."},{"id":"C","text":"does","is_correct":false,"explanation":"[Tense Shift] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"D","text":"had","is_correct":false,"explanation":"[Proximity Decoy] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'A', 'Step 1 — Locate the true subject
The subject is {{yellow:The panel of experts}}; "panel" is singular despite the intervening phrase.

Step 2 — Match agreement
Ignore the prepositional phrase between subject and verb; match number and tense to the schedule context.

Step 3 — Select the grammatical option
Choice A (has) is grammatically correct.

Distractor analysis:
- B: [Dangling Modifier] agrees with "experts" near the blank rather than the true subject "panel".
- C: [Tense Shift] creates a non-finite or mismatched form that cannot complete the independent clause.
- D: [Proximity Decoy] breaks the present-timeline established by "next month" and surrounding context.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('76638ca7-c083-4c41-93d6-90f9a1289ce7', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. When a sea turtle hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Dangling Modifier] \"their\" is plural while the antecedent \"sea turtle\" is singular."},{"id":"B","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."},{"id":"C","text":"it''s","is_correct":false,"explanation":"[Tense Shift] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"D","text":"it","is_correct":false,"explanation":"[Proximity Decoy] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""}]'::jsonb, 'B', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a sea turtle}}, which is singular.

Step 2 — Choose the possessive
The singular possessive without an apostrophe modifies ''wings.''

Step 3 — Select the grammatical option
Choice B (its) is grammatically correct.

Distractor analysis:
- A: [Dangling Modifier] "their" is plural while the antecedent "sea turtle" is singular.
- C: [Tense Shift] "it''s" is the contraction for "it is," not a possessive form.
- D: [Proximity Decoy] "it" is a subject pronoun, not a possessive modifier for "wings."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e9e015bd-e97d-4a19-abaa-131c747d8cd2', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. The number of applicants that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids. Classroom textbooks may still compress the result, though the original study qualifies every major claim.', 'passage', '[{"id":"A","text":"have","is_correct":false,"explanation":"[Tense Shift] agrees with \"applicants\" near the blank rather than the true subject \"number\"."},{"id":"B","text":"does","is_correct":false,"explanation":"[Proximity Decoy] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"C","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"D","text":"had","is_correct":false,"explanation":"[Dangling Modifier] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'C', 'Step 1 — Locate the true subject
The subject is {{yellow:The number of applicants}}; "number" is singular despite the intervening phrase.

Step 2 — Match agreement
Ignore the prepositional phrase between subject and verb; match number and tense to the schedule context.

Step 3 — Select the grammatical option
Choice C (has) is grammatically correct.

Distractor analysis:
- A: [Tense Shift] agrees with "applicants" near the blank rather than the true subject "number".
- B: [Proximity Decoy] creates a non-finite or mismatched form that cannot complete the independent clause.
- D: [Dangling Modifier] breaks the present-timeline established by "next month" and surrounding context.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('04d7946b-dd02-4f2a-98cc-90e73d96fdb8', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. When a gray wolf hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges. Stakeholders should weigh the evidence against limitations the researchers document throughout the study.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Tense Shift] \"their\" is plural while the antecedent \"gray wolf\" is singular."},{"id":"B","text":"it''s","is_correct":false,"explanation":"[Proximity Decoy] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"C","text":"it","is_correct":false,"explanation":"[Dangling Modifier] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""},{"id":"D","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a gray wolf}}, which is singular.

Step 2 — Choose the possessive
The singular possessive without an apostrophe modifies ''wings.''

Step 3 — Select the grammatical option
Choice D (its) is grammatically correct.

Distractor analysis:
- A: [Tense Shift] "their" is plural while the antecedent "gray wolf" is singular.
- B: [Proximity Decoy] "it''s" is the contraction for "it is," not a possessive form.
- C: [Dangling Modifier] "it" is a subject pronoun, not a possessive modifier for "wings."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c571a3bf-5772-4a92-b606-80f1233ce2c9', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. The collection of manuscripts that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Correct: \"is\" satisfies Standard English conventions for this blank."},{"id":"B","text":"were","is_correct":false,"explanation":"[Dangling Modifier] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"C","text":"are","is_correct":false,"explanation":"[Proximity Decoy] agrees with \"manuscripts\" near the blank rather than the true subject \"collection\"."},{"id":"D","text":"was","is_correct":false,"explanation":"[Tense Shift] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'A', 'Step 1 — Locate the true subject
The subject is {{yellow:The collection of manuscripts}}; "collection" is singular despite the intervening phrase.

Step 2 — Match agreement
Ignore the prepositional phrase between subject and verb; match number and tense to the schedule context.

Step 3 — Select the grammatical option
Choice A (is) is grammatically correct.

Distractor analysis:
- B: [Dangling Modifier] creates a non-finite or mismatched form that cannot complete the independent clause.
- C: [Proximity Decoy] agrees with "manuscripts" near the blank rather than the true subject "collection".
- D: [Tense Shift] breaks the present-timeline established by "next month" and surrounding context.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7cb698c9-1187-479b-9523-846cf6bca524', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. When a songbird hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Proximity Decoy] \"their\" is plural while the antecedent \"songbird\" is singular."},{"id":"B","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."},{"id":"C","text":"it''s","is_correct":false,"explanation":"[Dangling Modifier] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"D","text":"it","is_correct":false,"explanation":"[Tense Shift] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""}]'::jsonb, 'B', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a songbird}}, which is singular.

Step 2 — Choose the possessive
The singular possessive without an apostrophe modifies ''wings.''

Step 3 — Select the grammatical option
Choice B (its) is grammatically correct.

Distractor analysis:
- A: [Proximity Decoy] "their" is plural while the antecedent "songbird" is singular.
- C: [Dangling Modifier] "it''s" is the contraction for "it is," not a possessive form.
- D: [Tense Shift] "it" is a subject pronoun, not a possessive modifier for "wings."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('62e97368-51f6-4a4b-908c-91281d6fd5b4', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. Each of the volunteers that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges. Stakeholders should weigh the evidence against limitations the researchers document throughout the study.', 'passage', '[{"id":"A","text":"were","is_correct":false,"explanation":"[Dangling Modifier] agrees with \"volunteers\" near the blank rather than the true subject \"Each\"."},{"id":"B","text":"are","is_correct":false,"explanation":"[Proximity Decoy] breaks the present-timeline established by \"next month\" and surrounding context."},{"id":"C","text":"was","is_correct":true,"explanation":"Correct: \"was\" satisfies Standard English conventions for this blank."},{"id":"D","text":"is","is_correct":false,"explanation":"[Tense Shift] creates a non-finite or mismatched form that cannot complete the independent clause."}]'::jsonb, 'C', 'Step 1 — Locate the true subject
The subject is {{yellow:Each of the volunteers}}; "Each" is singular despite the intervening phrase.

Step 2 — Match agreement
Ignore the prepositional phrase between subject and verb; match number and tense to the schedule context.

Step 3 — Select the grammatical option
Choice C (was) is grammatically correct.

Distractor analysis:
- A: [Dangling Modifier] agrees with "volunteers" near the blank rather than the true subject "Each".
- B: [Proximity Decoy] breaks the present-timeline established by "next month" and surrounding context.
- D: [Tense Shift] creates a non-finite or mismatched form that cannot complete the independent clause.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d16e7ba2-5914-4c6b-8c22-2ec5e5be1b53', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. When a monarch butterfly hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Policy implications depend on whether the observed effect persists when practical constraints such as access vary. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Dangling Modifier] \"their\" is plural while the antecedent \"monarch butterfly\" is singular."},{"id":"B","text":"it''s","is_correct":false,"explanation":"[Tense Shift] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"C","text":"it","is_correct":false,"explanation":"[Proximity Decoy] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""},{"id":"D","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a monarch butterfly}}, which is singular.

Step 2 — Choose the possessive
The singular possessive without an apostrophe modifies ''wings.''

Step 3 — Select the grammatical option
Choice D (its) is grammatically correct.

Distractor analysis:
- A: [Dangling Modifier] "their" is plural while the antecedent "monarch butterfly" is singular.
- B: [Tense Shift] "it''s" is the contraction for "it is," not a possessive form.
- C: [Proximity Decoy] "it" is a subject pronoun, not a possessive modifier for "wings."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('322979ec-c6cc-4f4c-997d-cc33a4f9fbdb', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. A series of lectures that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Correct: \"is\" satisfies Standard English conventions for this blank."},{"id":"B","text":"were","is_correct":false,"explanation":"[Proximity Decoy] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"C","text":"are","is_correct":false,"explanation":"[Tense Shift] agrees with \"lectures\" near the blank rather than the true subject \"series\"."},{"id":"D","text":"was","is_correct":false,"explanation":"[Dangling Modifier] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'A', 'Step 1 — Locate the true subject
The subject is {{yellow:A series of lectures}}; "series" is singular despite the intervening phrase.

Step 2 — Match agreement
Ignore the prepositional phrase between subject and verb; match number and tense to the schedule context.

Step 3 — Select the grammatical option
Choice A (is) is grammatically correct.

Distractor analysis:
- B: [Proximity Decoy] creates a non-finite or mismatched form that cannot complete the independent clause.
- C: [Tense Shift] agrees with "lectures" near the blank rather than the true subject "series".
- D: [Dangling Modifier] breaks the present-timeline established by "next month" and surrounding context.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6acd0f96-21da-42f6-ae6e-3e5d5c782fa5', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. When a hummingbird hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids. Classroom textbooks may still compress the result, though the original study qualifies every major claim.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Tense Shift] \"their\" is plural while the antecedent \"hummingbird\" is singular."},{"id":"B","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."},{"id":"C","text":"it''s","is_correct":false,"explanation":"[Proximity Decoy] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"D","text":"it","is_correct":false,"explanation":"[Dangling Modifier] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""}]'::jsonb, 'B', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a hummingbird}}, which is singular.

Step 2 — Choose the possessive
The singular possessive without an apostrophe modifies ''wings.''

Step 3 — Select the grammatical option
Choice B (its) is grammatically correct.

Distractor analysis:
- A: [Tense Shift] "their" is plural while the antecedent "hummingbird" is singular.
- C: [Proximity Decoy] "it''s" is the contraction for "it is," not a possessive form.
- D: [Dangling Modifier] "it" is a subject pronoun, not a possessive modifier for "wings."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4d05da28-3b86-4ee8-ba9e-e6f78f837a9d', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. The panel of experts that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Policy implications depend on whether the observed effect persists when practical constraints such as access vary. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them.', 'passage', '[{"id":"A","text":"have","is_correct":false,"explanation":"[Proximity Decoy] agrees with \"experts\" near the blank rather than the true subject \"panel\"."},{"id":"B","text":"does","is_correct":false,"explanation":"[Dangling Modifier] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"C","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"D","text":"had","is_correct":false,"explanation":"[Tense Shift] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'C', 'Step 1 — Locate the true subject
The subject is {{yellow:The panel of experts}}; "panel" is singular despite the intervening phrase.

Step 2 — Match agreement
Ignore the prepositional phrase between subject and verb; match number and tense to the schedule context.

Step 3 — Select the grammatical option
Choice C (has) is grammatically correct.

Distractor analysis:
- A: [Proximity Decoy] agrees with "experts" near the blank rather than the true subject "panel".
- B: [Dangling Modifier] creates a non-finite or mismatched form that cannot complete the independent clause.
- D: [Tense Shift] breaks the present-timeline established by "next month" and surrounding context.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5b2b1140-617a-4656-9aaf-9f4981f3b1ce', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. When a sea turtle hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Proximity Decoy] \"their\" is plural while the antecedent \"sea turtle\" is singular."},{"id":"B","text":"it''s","is_correct":false,"explanation":"[Dangling Modifier] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"C","text":"it","is_correct":false,"explanation":"[Tense Shift] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""},{"id":"D","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a sea turtle}}, which is singular.

Step 2 — Choose the possessive
The singular possessive without an apostrophe modifies ''wings.''

Step 3 — Select the grammatical option
Choice D (its) is grammatically correct.

Distractor analysis:
- A: [Proximity Decoy] "their" is plural while the antecedent "sea turtle" is singular.
- B: [Dangling Modifier] "it''s" is the contraction for "it is," not a possessive form.
- C: [Tense Shift] "it" is a subject pronoun, not a possessive modifier for "wings."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8cc68742-4b7a-4774-b019-017bd2d1fc4c', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. The number of applicants that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids. Classroom textbooks may still compress the result, though the original study qualifies every major claim.', 'passage', '[{"id":"A","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"B","text":"have","is_correct":false,"explanation":"[Dangling Modifier] agrees with \"applicants\" near the blank rather than the true subject \"number\"."},{"id":"C","text":"does","is_correct":false,"explanation":"[Tense Shift] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"D","text":"had","is_correct":false,"explanation":"[Proximity Decoy] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'A', 'Step 1 — Locate the true subject
The subject is {{yellow:The number of applicants}}; "number" is singular despite the intervening phrase.

Step 2 — Match agreement
Ignore the prepositional phrase between subject and verb; match number and tense to the schedule context.

Step 3 — Select the grammatical option
Choice A (has) is grammatically correct.

Distractor analysis:
- B: [Dangling Modifier] agrees with "applicants" near the blank rather than the true subject "number".
- C: [Tense Shift] creates a non-finite or mismatched form that cannot complete the independent clause.
- D: [Proximity Decoy] breaks the present-timeline established by "next month" and surrounding context.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('565138a7-9fd3-4b51-858c-b3b82e9ec377', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. When a gray wolf hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges. Stakeholders should weigh the evidence against limitations the researchers document throughout the study.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Dangling Modifier] \"their\" is plural while the antecedent \"gray wolf\" is singular."},{"id":"B","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."},{"id":"C","text":"it''s","is_correct":false,"explanation":"[Tense Shift] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"D","text":"it","is_correct":false,"explanation":"[Proximity Decoy] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""}]'::jsonb, 'B', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a gray wolf}}, which is singular.

Step 2 — Choose the possessive
The singular possessive without an apostrophe modifies ''wings.''

Step 3 — Select the grammatical option
Choice B (its) is grammatically correct.

Distractor analysis:
- A: [Dangling Modifier] "their" is plural while the antecedent "gray wolf" is singular.
- C: [Tense Shift] "it''s" is the contraction for "it is," not a possessive form.
- D: [Proximity Decoy] "it" is a subject pronoun, not a possessive modifier for "wings."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('570dcce9-497e-4be6-9a21-324b6e4b78a2', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. The collection of manuscripts that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice.', 'passage', '[{"id":"A","text":"were","is_correct":false,"explanation":"[Proximity Decoy] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"B","text":"are","is_correct":false,"explanation":"[Tense Shift] agrees with \"manuscripts\" near the blank rather than the true subject \"collection\"."},{"id":"C","text":"is","is_correct":true,"explanation":"Correct: \"is\" satisfies Standard English conventions for this blank."},{"id":"D","text":"was","is_correct":false,"explanation":"[Dangling Modifier] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'C', 'Step 1 — Locate the true subject
The subject is {{yellow:The collection of manuscripts}}; "collection" is singular despite the intervening phrase.

Step 2 — Match agreement
Ignore the prepositional phrase between subject and verb; match number and tense to the schedule context.

Step 3 — Select the grammatical option
Choice C (is) is grammatically correct.

Distractor analysis:
- A: [Proximity Decoy] creates a non-finite or mismatched form that cannot complete the independent clause.
- B: [Tense Shift] agrees with "manuscripts" near the blank rather than the true subject "collection".
- D: [Dangling Modifier] breaks the present-timeline established by "next month" and surrounding context.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('08cc475b-8bc9-46be-b3e8-3dce32ae2e74', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. When a songbird hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Tense Shift] \"their\" is plural while the antecedent \"songbird\" is singular."},{"id":"B","text":"it''s","is_correct":false,"explanation":"[Proximity Decoy] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"C","text":"it","is_correct":false,"explanation":"[Dangling Modifier] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""},{"id":"D","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a songbird}}, which is singular.

Step 2 — Choose the possessive
The singular possessive without an apostrophe modifies ''wings.''

Step 3 — Select the grammatical option
Choice D (its) is grammatically correct.

Distractor analysis:
- A: [Tense Shift] "their" is plural while the antecedent "songbird" is singular.
- B: [Proximity Decoy] "it''s" is the contraction for "it is," not a possessive form.
- C: [Dangling Modifier] "it" is a subject pronoun, not a possessive modifier for "wings."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('11e71c80-5f53-4552-b0e2-2c70eae9d9ad', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. Each of the volunteers that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges. Stakeholders should weigh the evidence against limitations the researchers document throughout the study.', 'passage', '[{"id":"A","text":"was","is_correct":true,"explanation":"Correct: \"was\" satisfies Standard English conventions for this blank."},{"id":"B","text":"were","is_correct":false,"explanation":"[Proximity Decoy] agrees with \"volunteers\" near the blank rather than the true subject \"Each\"."},{"id":"C","text":"are","is_correct":false,"explanation":"[Tense Shift] breaks the present-timeline established by \"next month\" and surrounding context."},{"id":"D","text":"is","is_correct":false,"explanation":"[Dangling Modifier] creates a non-finite or mismatched form that cannot complete the independent clause."}]'::jsonb, 'A', 'Step 1 — Locate the true subject
The subject is {{yellow:Each of the volunteers}}; "Each" is singular despite the intervening phrase.

Step 2 — Match agreement
Ignore the prepositional phrase between subject and verb; match number and tense to the schedule context.

Step 3 — Select the grammatical option
Choice A (was) is grammatically correct.

Distractor analysis:
- B: [Proximity Decoy] agrees with "volunteers" near the blank rather than the true subject "Each".
- C: [Tense Shift] breaks the present-timeline established by "next month" and surrounding context.
- D: [Dangling Modifier] creates a non-finite or mismatched form that cannot complete the independent clause.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3cf537cd-0a56-4a7f-a3a7-341be6a60f7e', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. When a monarch butterfly hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Policy implications depend on whether the observed effect persists when practical constraints such as access vary. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Proximity Decoy] \"their\" is plural while the antecedent \"monarch butterfly\" is singular."},{"id":"B","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."},{"id":"C","text":"it''s","is_correct":false,"explanation":"[Dangling Modifier] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"D","text":"it","is_correct":false,"explanation":"[Tense Shift] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""}]'::jsonb, 'B', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a monarch butterfly}}, which is singular.

Step 2 — Choose the possessive
The singular possessive without an apostrophe modifies ''wings.''

Step 3 — Select the grammatical option
Choice B (its) is grammatically correct.

Distractor analysis:
- A: [Proximity Decoy] "their" is plural while the antecedent "monarch butterfly" is singular.
- C: [Dangling Modifier] "it''s" is the contraction for "it is," not a possessive form.
- D: [Tense Shift] "it" is a subject pronoun, not a possessive modifier for "wings."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1cff4e06-f228-458a-9071-90bc3a19aedf', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. A series of lectures that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical.', 'passage', '[{"id":"A","text":"were","is_correct":false,"explanation":"[Tense Shift] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"B","text":"are","is_correct":false,"explanation":"[Dangling Modifier] agrees with \"lectures\" near the blank rather than the true subject \"series\"."},{"id":"C","text":"is","is_correct":true,"explanation":"Correct: \"is\" satisfies Standard English conventions for this blank."},{"id":"D","text":"was","is_correct":false,"explanation":"[Proximity Decoy] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'C', 'Step 1 — Locate the true subject
The subject is {{yellow:A series of lectures}}; "series" is singular despite the intervening phrase.

Step 2 — Match agreement
Ignore the prepositional phrase between subject and verb; match number and tense to the schedule context.

Step 3 — Select the grammatical option
Choice C (is) is grammatically correct.

Distractor analysis:
- A: [Tense Shift] creates a non-finite or mismatched form that cannot complete the independent clause.
- B: [Dangling Modifier] agrees with "lectures" near the blank rather than the true subject "series".
- D: [Proximity Decoy] breaks the present-timeline established by "next month" and surrounding context.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f6fa314b-4842-4d21-ae5f-ea60573d5db8', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. When a hummingbird hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids. Classroom textbooks may still compress the result, though the original study qualifies every major claim.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Dangling Modifier] \"their\" is plural while the antecedent \"hummingbird\" is singular."},{"id":"B","text":"it''s","is_correct":false,"explanation":"[Tense Shift] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"C","text":"it","is_correct":false,"explanation":"[Proximity Decoy] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""},{"id":"D","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a hummingbird}}, which is singular.

Step 2 — Choose the possessive
The singular possessive without an apostrophe modifies ''wings.''

Step 3 — Select the grammatical option
Choice D (its) is grammatically correct.

Distractor analysis:
- A: [Dangling Modifier] "their" is plural while the antecedent "hummingbird" is singular.
- B: [Tense Shift] "it''s" is the contraction for "it is," not a possessive form.
- C: [Proximity Decoy] "it" is a subject pronoun, not a possessive modifier for "wings."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a7e0814b-641d-4032-9ee9-cc02fce3cdc6', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. The panel of experts that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Policy implications depend on whether the observed effect persists when practical constraints such as access vary. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them.', 'passage', '[{"id":"A","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"B","text":"have","is_correct":false,"explanation":"[Tense Shift] agrees with \"experts\" near the blank rather than the true subject \"panel\"."},{"id":"C","text":"does","is_correct":false,"explanation":"[Proximity Decoy] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"D","text":"had","is_correct":false,"explanation":"[Dangling Modifier] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'A', 'Step 1 — Locate the true subject
The subject is {{yellow:The panel of experts}}; "panel" is singular despite the intervening phrase.

Step 2 — Match agreement
Ignore the prepositional phrase between subject and verb; match number and tense to the schedule context.

Step 3 — Select the grammatical option
Choice A (has) is grammatically correct.

Distractor analysis:
- B: [Tense Shift] agrees with "experts" near the blank rather than the true subject "panel".
- C: [Proximity Decoy] creates a non-finite or mismatched form that cannot complete the independent clause.
- D: [Dangling Modifier] breaks the present-timeline established by "next month" and surrounding context.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a230f237-ec0c-4c8f-8e01-a87d18ebb798', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. When a sea turtle hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Tense Shift] \"their\" is plural while the antecedent \"sea turtle\" is singular."},{"id":"B","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."},{"id":"C","text":"it''s","is_correct":false,"explanation":"[Proximity Decoy] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"D","text":"it","is_correct":false,"explanation":"[Dangling Modifier] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""}]'::jsonb, 'B', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a sea turtle}}, which is singular.

Step 2 — Choose the possessive
The singular possessive without an apostrophe modifies ''wings.''

Step 3 — Select the grammatical option
Choice B (its) is grammatically correct.

Distractor analysis:
- A: [Tense Shift] "their" is plural while the antecedent "sea turtle" is singular.
- C: [Proximity Decoy] "it''s" is the contraction for "it is," not a possessive form.
- D: [Dangling Modifier] "it" is a subject pronoun, not a possessive modifier for "wings."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d7d3b761-aec0-4699-97da-da8ac9be716f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. The number of applicants that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids. Classroom textbooks may still compress the result, though the original study qualifies every major claim.', 'passage', '[{"id":"A","text":"have","is_correct":false,"explanation":"[Proximity Decoy] agrees with \"applicants\" near the blank rather than the true subject \"number\"."},{"id":"B","text":"does","is_correct":false,"explanation":"[Dangling Modifier] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"C","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"D","text":"had","is_correct":false,"explanation":"[Tense Shift] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'C', 'Step 1 — Locate the true subject
The subject is {{yellow:The number of applicants}}; "number" is singular despite the intervening phrase.

Step 2 — Match agreement
Ignore the prepositional phrase between subject and verb; match number and tense to the schedule context.

Step 3 — Select the grammatical option
Choice C (has) is grammatically correct.

Distractor analysis:
- A: [Proximity Decoy] agrees with "applicants" near the blank rather than the true subject "number".
- B: [Dangling Modifier] creates a non-finite or mismatched form that cannot complete the independent clause.
- D: [Tense Shift] breaks the present-timeline established by "next month" and surrounding context.', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cba55c6e-ed9e-4fa3-90c1-2d371ed5f895', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. When a gray wolf hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges. Stakeholders should weigh the evidence against limitations the researchers document throughout the study.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Proximity Decoy] \"their\" is plural while the antecedent \"gray wolf\" is singular."},{"id":"B","text":"it''s","is_correct":false,"explanation":"[Dangling Modifier] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"C","text":"it","is_correct":false,"explanation":"[Tense Shift] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""},{"id":"D","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a gray wolf}}, which is singular.

Step 2 — Choose the possessive
The singular possessive without an apostrophe modifies ''wings.''

Step 3 — Select the grammatical option
Choice D (its) is grammatically correct.

Distractor analysis:
- A: [Proximity Decoy] "their" is plural while the antecedent "gray wolf" is singular.
- B: [Dangling Modifier] "it''s" is the contraction for "it is," not a possessive form.
- C: [Tense Shift] "it" is a subject pronoun, not a possessive modifier for "wings."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
COMMIT;
