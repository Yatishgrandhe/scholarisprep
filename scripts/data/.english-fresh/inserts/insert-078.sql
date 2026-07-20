BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c4cc45d8-41ee-49b9-a6ce-99242977f309', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. The collection of manuscripts that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Correct: \"is\" satisfies Standard English conventions for this blank."},{"id":"B","text":"were","is_correct":false,"explanation":"[Proximity Decoy] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"C","text":"are","is_correct":false,"explanation":"[Tense Shift] agrees with \"manuscripts\" near the blank rather than the true subject \"collection\"."},{"id":"D","text":"was","is_correct":false,"explanation":"[Dangling Modifier] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'A', 'Step 1 — Locate the true subject
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
VALUES ('5d72fb8c-0ad6-449f-9342-1c6dbaf15d9f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. When a songbird hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Tense Shift] \"their\" is plural while the antecedent \"songbird\" is singular."},{"id":"B","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."},{"id":"C","text":"it''s","is_correct":false,"explanation":"[Proximity Decoy] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"D","text":"it","is_correct":false,"explanation":"[Dangling Modifier] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""}]'::jsonb, 'B', 'Step 1 — Identify the antecedent
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
VALUES ('30917e12-eabc-473e-b9f6-8b12efb96765', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. Each of the volunteers that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges. Stakeholders should weigh the evidence against limitations the researchers document throughout the study.', 'passage', '[{"id":"A","text":"were","is_correct":false,"explanation":"[Proximity Decoy] agrees with \"volunteers\" near the blank rather than the true subject \"Each\"."},{"id":"B","text":"are","is_correct":false,"explanation":"[Tense Shift] breaks the present-timeline established by \"next month\" and surrounding context."},{"id":"C","text":"was","is_correct":true,"explanation":"Correct: \"was\" satisfies Standard English conventions for this blank."},{"id":"D","text":"is","is_correct":false,"explanation":"[Dangling Modifier] creates a non-finite or mismatched form that cannot complete the independent clause."}]'::jsonb, 'C', 'Step 1 — Locate the true subject
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
VALUES ('49c470a2-8dce-4cf2-8219-369a82f5d4ff', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. When a monarch butterfly hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Policy implications depend on whether the observed effect persists when practical constraints such as access vary. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Proximity Decoy] \"their\" is plural while the antecedent \"monarch butterfly\" is singular."},{"id":"B","text":"it''s","is_correct":false,"explanation":"[Dangling Modifier] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"C","text":"it","is_correct":false,"explanation":"[Tense Shift] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""},{"id":"D","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Identify the antecedent
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
VALUES ('6ea29073-f08b-4c6f-a196-760a74939e41', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. A series of lectures that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Correct: \"is\" satisfies Standard English conventions for this blank."},{"id":"B","text":"were","is_correct":false,"explanation":"[Tense Shift] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"C","text":"are","is_correct":false,"explanation":"[Dangling Modifier] agrees with \"lectures\" near the blank rather than the true subject \"series\"."},{"id":"D","text":"was","is_correct":false,"explanation":"[Proximity Decoy] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'A', 'Step 1 — Locate the true subject
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
VALUES ('ae37d0ef-37a8-404a-84ec-6d2246bef69d', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. When a hummingbird hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids. Classroom textbooks may still compress the result, though the original study qualifies every major claim.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Dangling Modifier] \"their\" is plural while the antecedent \"hummingbird\" is singular."},{"id":"B","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."},{"id":"C","text":"it''s","is_correct":false,"explanation":"[Tense Shift] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"D","text":"it","is_correct":false,"explanation":"[Proximity Decoy] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""}]'::jsonb, 'B', 'Step 1 — Identify the antecedent
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
VALUES ('63c133ae-918f-4ab4-8574-d82eb40048dd', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. The panel of experts that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Policy implications depend on whether the observed effect persists when practical constraints such as access vary. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them.', 'passage', '[{"id":"A","text":"have","is_correct":false,"explanation":"[Tense Shift] agrees with \"experts\" near the blank rather than the true subject \"panel\"."},{"id":"B","text":"does","is_correct":false,"explanation":"[Proximity Decoy] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"C","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"D","text":"had","is_correct":false,"explanation":"[Dangling Modifier] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'C', 'Step 1 — Locate the true subject
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
VALUES ('e64572ee-df14-4c1f-be79-326b177a423a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. When a sea turtle hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Tense Shift] \"their\" is plural while the antecedent \"sea turtle\" is singular."},{"id":"B","text":"it''s","is_correct":false,"explanation":"[Proximity Decoy] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"C","text":"it","is_correct":false,"explanation":"[Dangling Modifier] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""},{"id":"D","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Identify the antecedent
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
VALUES ('38ac2f11-05d7-48b5-af80-5b48f1169b09', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. The number of applicants that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids. Classroom textbooks may still compress the result, though the original study qualifies every major claim.', 'passage', '[{"id":"A","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"B","text":"have","is_correct":false,"explanation":"[Proximity Decoy] agrees with \"applicants\" near the blank rather than the true subject \"number\"."},{"id":"C","text":"does","is_correct":false,"explanation":"[Dangling Modifier] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"D","text":"had","is_correct":false,"explanation":"[Tense Shift] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'A', 'Step 1 — Locate the true subject
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
VALUES ('38ebccfc-ef28-4efe-9c0c-2339c37eaaf6', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. When a gray wolf hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges. Stakeholders should weigh the evidence against limitations the researchers document throughout the study.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Proximity Decoy] \"their\" is plural while the antecedent \"gray wolf\" is singular."},{"id":"B","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."},{"id":"C","text":"it''s","is_correct":false,"explanation":"[Dangling Modifier] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"D","text":"it","is_correct":false,"explanation":"[Tense Shift] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""}]'::jsonb, 'B', 'Step 1 — Identify the antecedent
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
VALUES ('15486473-1618-467a-8397-79a250af9d1a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. The collection of manuscripts that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice.', 'passage', '[{"id":"A","text":"were","is_correct":false,"explanation":"[Tense Shift] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"B","text":"are","is_correct":false,"explanation":"[Dangling Modifier] agrees with \"manuscripts\" near the blank rather than the true subject \"collection\"."},{"id":"C","text":"is","is_correct":true,"explanation":"Correct: \"is\" satisfies Standard English conventions for this blank."},{"id":"D","text":"was","is_correct":false,"explanation":"[Proximity Decoy] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'C', 'Step 1 — Locate the true subject
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
VALUES ('3132c9fd-d97e-4538-8d93-ccaf00c0e68c', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. When a songbird hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Dangling Modifier] \"their\" is plural while the antecedent \"songbird\" is singular."},{"id":"B","text":"it''s","is_correct":false,"explanation":"[Tense Shift] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"C","text":"it","is_correct":false,"explanation":"[Proximity Decoy] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""},{"id":"D","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Identify the antecedent
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
VALUES ('22794224-69ba-45fa-81d4-785a08af40fb', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. Each of the volunteers that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges. Stakeholders should weigh the evidence against limitations the researchers document throughout the study.', 'passage', '[{"id":"A","text":"was","is_correct":true,"explanation":"Correct: \"was\" satisfies Standard English conventions for this blank."},{"id":"B","text":"were","is_correct":false,"explanation":"[Tense Shift] agrees with \"volunteers\" near the blank rather than the true subject \"Each\"."},{"id":"C","text":"are","is_correct":false,"explanation":"[Dangling Modifier] breaks the present-timeline established by \"next month\" and surrounding context."},{"id":"D","text":"is","is_correct":false,"explanation":"[Proximity Decoy] creates a non-finite or mismatched form that cannot complete the independent clause."}]'::jsonb, 'A', 'Step 1 — Locate the true subject
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
VALUES ('01c4f836-e684-4117-a72e-fa7e9d2b2224', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. When a monarch butterfly hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Policy implications depend on whether the observed effect persists when practical constraints such as access vary. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Tense Shift] \"their\" is plural while the antecedent \"monarch butterfly\" is singular."},{"id":"B","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."},{"id":"C","text":"it''s","is_correct":false,"explanation":"[Proximity Decoy] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"D","text":"it","is_correct":false,"explanation":"[Dangling Modifier] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""}]'::jsonb, 'B', 'Step 1 — Identify the antecedent
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
VALUES ('b2e915f0-467b-4150-b445-81a2df57cddb', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. A series of lectures that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical.', 'passage', '[{"id":"A","text":"were","is_correct":false,"explanation":"[Dangling Modifier] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"B","text":"are","is_correct":false,"explanation":"[Proximity Decoy] agrees with \"lectures\" near the blank rather than the true subject \"series\"."},{"id":"C","text":"is","is_correct":true,"explanation":"Correct: \"is\" satisfies Standard English conventions for this blank."},{"id":"D","text":"was","is_correct":false,"explanation":"[Tense Shift] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'C', 'Step 1 — Locate the true subject
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
VALUES ('ca66a947-933f-4b74-b6a2-dd1be2e5f198', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. When a hummingbird hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids. Classroom textbooks may still compress the result, though the original study qualifies every major claim.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Proximity Decoy] \"their\" is plural while the antecedent \"hummingbird\" is singular."},{"id":"B","text":"it''s","is_correct":false,"explanation":"[Dangling Modifier] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"C","text":"it","is_correct":false,"explanation":"[Tense Shift] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""},{"id":"D","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Identify the antecedent
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
VALUES ('1c973ad1-82df-4ab5-bea1-dfd8791db37d', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. The panel of experts that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Policy implications depend on whether the observed effect persists when practical constraints such as access vary. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them.', 'passage', '[{"id":"A","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"B","text":"have","is_correct":false,"explanation":"[Dangling Modifier] agrees with \"experts\" near the blank rather than the true subject \"panel\"."},{"id":"C","text":"does","is_correct":false,"explanation":"[Tense Shift] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"D","text":"had","is_correct":false,"explanation":"[Proximity Decoy] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'A', 'Step 1 — Locate the true subject
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
VALUES ('a088bde9-81f7-4ae4-9535-d44468e1f85c', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. When a sea turtle hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Dangling Modifier] \"their\" is plural while the antecedent \"sea turtle\" is singular."},{"id":"B","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."},{"id":"C","text":"it''s","is_correct":false,"explanation":"[Tense Shift] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"D","text":"it","is_correct":false,"explanation":"[Proximity Decoy] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""}]'::jsonb, 'B', 'Step 1 — Identify the antecedent
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
VALUES ('ba0829e5-fa26-4fab-bad4-b341ac5ee4be', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. The number of applicants that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids. Classroom textbooks may still compress the result, though the original study qualifies every major claim.', 'passage', '[{"id":"A","text":"have","is_correct":false,"explanation":"[Tense Shift] agrees with \"applicants\" near the blank rather than the true subject \"number\"."},{"id":"B","text":"does","is_correct":false,"explanation":"[Proximity Decoy] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"C","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"D","text":"had","is_correct":false,"explanation":"[Dangling Modifier] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'C', 'Step 1 — Locate the true subject
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
VALUES ('a9005460-c465-45dd-9de3-d5f9ec91e42e', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. When a gray wolf hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges. Stakeholders should weigh the evidence against limitations the researchers document throughout the study.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Tense Shift] \"their\" is plural while the antecedent \"gray wolf\" is singular."},{"id":"B","text":"it''s","is_correct":false,"explanation":"[Proximity Decoy] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"C","text":"it","is_correct":false,"explanation":"[Dangling Modifier] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""},{"id":"D","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Identify the antecedent
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
VALUES ('05512982-454f-44d5-b807-6713cd23cd12', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. The collection of manuscripts that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Correct: \"is\" satisfies Standard English conventions for this blank."},{"id":"B","text":"were","is_correct":false,"explanation":"[Dangling Modifier] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"C","text":"are","is_correct":false,"explanation":"[Proximity Decoy] agrees with \"manuscripts\" near the blank rather than the true subject \"collection\"."},{"id":"D","text":"was","is_correct":false,"explanation":"[Tense Shift] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'A', 'Step 1 — Locate the true subject
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
VALUES ('9a6beea8-b7e3-45e9-b602-43f1a16a5dbd', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. When a songbird hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Proximity Decoy] \"their\" is plural while the antecedent \"songbird\" is singular."},{"id":"B","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."},{"id":"C","text":"it''s","is_correct":false,"explanation":"[Dangling Modifier] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"D","text":"it","is_correct":false,"explanation":"[Tense Shift] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""}]'::jsonb, 'B', 'Step 1 — Identify the antecedent
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
VALUES ('4a515564-b422-4c48-ad27-6df2e9801d43', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. Each of the volunteers that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges. Stakeholders should weigh the evidence against limitations the researchers document throughout the study.', 'passage', '[{"id":"A","text":"were","is_correct":false,"explanation":"[Dangling Modifier] agrees with \"volunteers\" near the blank rather than the true subject \"Each\"."},{"id":"B","text":"are","is_correct":false,"explanation":"[Proximity Decoy] breaks the present-timeline established by \"next month\" and surrounding context."},{"id":"C","text":"was","is_correct":true,"explanation":"Correct: \"was\" satisfies Standard English conventions for this blank."},{"id":"D","text":"is","is_correct":false,"explanation":"[Tense Shift] creates a non-finite or mismatched form that cannot complete the independent clause."}]'::jsonb, 'C', 'Step 1 — Locate the true subject
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
VALUES ('7b172732-f6d3-418c-ac44-d57a6ad2b8d0', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. When a monarch butterfly hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Policy implications depend on whether the observed effect persists when practical constraints such as access vary. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Dangling Modifier] \"their\" is plural while the antecedent \"monarch butterfly\" is singular."},{"id":"B","text":"it''s","is_correct":false,"explanation":"[Tense Shift] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"C","text":"it","is_correct":false,"explanation":"[Proximity Decoy] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""},{"id":"D","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Identify the antecedent
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
VALUES ('8702acee-7165-4abd-9336-fe21af99ca43', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. A series of lectures that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Correct: \"is\" satisfies Standard English conventions for this blank."},{"id":"B","text":"were","is_correct":false,"explanation":"[Proximity Decoy] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"C","text":"are","is_correct":false,"explanation":"[Tense Shift] agrees with \"lectures\" near the blank rather than the true subject \"series\"."},{"id":"D","text":"was","is_correct":false,"explanation":"[Dangling Modifier] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'A', 'Step 1 — Locate the true subject
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
VALUES ('2786561d-185a-4642-af90-c100650f11f5', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. When a hummingbird hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids. Classroom textbooks may still compress the result, though the original study qualifies every major claim.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Tense Shift] \"their\" is plural while the antecedent \"hummingbird\" is singular."},{"id":"B","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."},{"id":"C","text":"it''s","is_correct":false,"explanation":"[Proximity Decoy] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"D","text":"it","is_correct":false,"explanation":"[Dangling Modifier] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""}]'::jsonb, 'B', 'Step 1 — Identify the antecedent
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
VALUES ('a66daae2-344e-42e3-bbd3-1ca8e659428f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. The panel of experts that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Policy implications depend on whether the observed effect persists when practical constraints such as access vary. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them.', 'passage', '[{"id":"A","text":"have","is_correct":false,"explanation":"[Proximity Decoy] agrees with \"experts\" near the blank rather than the true subject \"panel\"."},{"id":"B","text":"does","is_correct":false,"explanation":"[Dangling Modifier] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"C","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"D","text":"had","is_correct":false,"explanation":"[Tense Shift] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'C', 'Step 1 — Locate the true subject
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
VALUES ('a4e7b497-489f-43b0-acde-de80a8de05f4', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. When a sea turtle hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Proximity Decoy] \"their\" is plural while the antecedent \"sea turtle\" is singular."},{"id":"B","text":"it''s","is_correct":false,"explanation":"[Dangling Modifier] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"C","text":"it","is_correct":false,"explanation":"[Tense Shift] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""},{"id":"D","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Identify the antecedent
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
VALUES ('0c43774f-e310-4e91-8636-f0d681353bd4', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. The number of applicants that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids. Classroom textbooks may still compress the result, though the original study qualifies every major claim.', 'passage', '[{"id":"A","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"B","text":"have","is_correct":false,"explanation":"[Dangling Modifier] agrees with \"applicants\" near the blank rather than the true subject \"number\"."},{"id":"C","text":"does","is_correct":false,"explanation":"[Tense Shift] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"D","text":"had","is_correct":false,"explanation":"[Proximity Decoy] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'A', 'Step 1 — Locate the true subject
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
VALUES ('01bbd80a-7a22-4483-ad95-ada5eb6e6dfd', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. When a gray wolf hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges. Stakeholders should weigh the evidence against limitations the researchers document throughout the study.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Dangling Modifier] \"their\" is plural while the antecedent \"gray wolf\" is singular."},{"id":"B","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."},{"id":"C","text":"it''s","is_correct":false,"explanation":"[Tense Shift] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"D","text":"it","is_correct":false,"explanation":"[Proximity Decoy] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""}]'::jsonb, 'B', 'Step 1 — Identify the antecedent
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
VALUES ('dbcdb5d6-1129-47df-9295-2b5d58ebba49', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. The collection of manuscripts that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice.', 'passage', '[{"id":"A","text":"were","is_correct":false,"explanation":"[Proximity Decoy] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"B","text":"are","is_correct":false,"explanation":"[Tense Shift] agrees with \"manuscripts\" near the blank rather than the true subject \"collection\"."},{"id":"C","text":"is","is_correct":true,"explanation":"Correct: \"is\" satisfies Standard English conventions for this blank."},{"id":"D","text":"was","is_correct":false,"explanation":"[Dangling Modifier] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'C', 'Step 1 — Locate the true subject
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
VALUES ('9af214be-5157-4c01-a923-51e6a6b010f0', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. When a songbird hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Tense Shift] \"their\" is plural while the antecedent \"songbird\" is singular."},{"id":"B","text":"it''s","is_correct":false,"explanation":"[Proximity Decoy] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"C","text":"it","is_correct":false,"explanation":"[Dangling Modifier] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""},{"id":"D","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Identify the antecedent
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
VALUES ('2d1d294d-6d93-4c7d-83a9-3a86647d78c7', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. Each of the volunteers that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges. Stakeholders should weigh the evidence against limitations the researchers document throughout the study.', 'passage', '[{"id":"A","text":"was","is_correct":true,"explanation":"Correct: \"was\" satisfies Standard English conventions for this blank."},{"id":"B","text":"were","is_correct":false,"explanation":"[Proximity Decoy] agrees with \"volunteers\" near the blank rather than the true subject \"Each\"."},{"id":"C","text":"are","is_correct":false,"explanation":"[Tense Shift] breaks the present-timeline established by \"next month\" and surrounding context."},{"id":"D","text":"is","is_correct":false,"explanation":"[Dangling Modifier] creates a non-finite or mismatched form that cannot complete the independent clause."}]'::jsonb, 'A', 'Step 1 — Locate the true subject
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
VALUES ('134f320f-2a79-4bcd-abc3-70aa113efb0a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. When a monarch butterfly hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Policy implications depend on whether the observed effect persists when practical constraints such as access vary. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Proximity Decoy] \"their\" is plural while the antecedent \"monarch butterfly\" is singular."},{"id":"B","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."},{"id":"C","text":"it''s","is_correct":false,"explanation":"[Dangling Modifier] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"D","text":"it","is_correct":false,"explanation":"[Tense Shift] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""}]'::jsonb, 'B', 'Step 1 — Identify the antecedent
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
VALUES ('d503a3e7-bbe7-4fb9-bbec-e211ee150f2e', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. A series of lectures that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical.', 'passage', '[{"id":"A","text":"were","is_correct":false,"explanation":"[Tense Shift] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"B","text":"are","is_correct":false,"explanation":"[Dangling Modifier] agrees with \"lectures\" near the blank rather than the true subject \"series\"."},{"id":"C","text":"is","is_correct":true,"explanation":"Correct: \"is\" satisfies Standard English conventions for this blank."},{"id":"D","text":"was","is_correct":false,"explanation":"[Proximity Decoy] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'C', 'Step 1 — Locate the true subject
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
VALUES ('fe8cfd5e-b455-4705-93a1-5382cd009a8c', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. When a hummingbird hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids. Classroom textbooks may still compress the result, though the original study qualifies every major claim.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Dangling Modifier] \"their\" is plural while the antecedent \"hummingbird\" is singular."},{"id":"B","text":"it''s","is_correct":false,"explanation":"[Tense Shift] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"C","text":"it","is_correct":false,"explanation":"[Proximity Decoy] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""},{"id":"D","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Identify the antecedent
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
VALUES ('2a5d0739-3827-492e-8946-55ca57a4a0f7', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. The panel of experts that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Policy implications depend on whether the observed effect persists when practical constraints such as access vary. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them.', 'passage', '[{"id":"A","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"B","text":"have","is_correct":false,"explanation":"[Tense Shift] agrees with \"experts\" near the blank rather than the true subject \"panel\"."},{"id":"C","text":"does","is_correct":false,"explanation":"[Proximity Decoy] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"D","text":"had","is_correct":false,"explanation":"[Dangling Modifier] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'A', 'Step 1 — Locate the true subject
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
VALUES ('2a126b22-6a76-4f70-843c-f82dbe07a7a5', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. When a sea turtle hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Tense Shift] \"their\" is plural while the antecedent \"sea turtle\" is singular."},{"id":"B","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."},{"id":"C","text":"it''s","is_correct":false,"explanation":"[Proximity Decoy] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"D","text":"it","is_correct":false,"explanation":"[Dangling Modifier] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""}]'::jsonb, 'B', 'Step 1 — Identify the antecedent
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
VALUES ('1d4d08fd-c286-4964-aa08-dbdf36c4948a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. The number of applicants that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids. Classroom textbooks may still compress the result, though the original study qualifies every major claim.', 'passage', '[{"id":"A","text":"have","is_correct":false,"explanation":"[Proximity Decoy] agrees with \"applicants\" near the blank rather than the true subject \"number\"."},{"id":"B","text":"does","is_correct":false,"explanation":"[Dangling Modifier] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"C","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"D","text":"had","is_correct":false,"explanation":"[Tense Shift] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'C', 'Step 1 — Locate the true subject
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
VALUES ('028e6ad2-8248-430c-8f3d-099a0161140b', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. When a gray wolf hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges. Stakeholders should weigh the evidence against limitations the researchers document throughout the study.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Proximity Decoy] \"their\" is plural while the antecedent \"gray wolf\" is singular."},{"id":"B","text":"it''s","is_correct":false,"explanation":"[Dangling Modifier] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"C","text":"it","is_correct":false,"explanation":"[Tense Shift] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""},{"id":"D","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a gray wolf}}, which is singular.

Step 2 — Choose the possessive
The singular possessive without an apostrophe modifies ''wings.''

Step 3 — Select the grammatical option
Choice D (its) is grammatically correct.

Distractor analysis:
- A: [Proximity Decoy] "their" is plural while the antecedent "gray wolf" is singular.
- B: [Dangling Modifier] "it''s" is the contraction for "it is," not a possessive form.
- C: [Tense Shift] "it" is a subject pronoun, not a possessive modifier for "wings."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0077a81f-4d66-47bc-88eb-1c10b2e60fc5', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. The collection of manuscripts that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Correct: \"is\" satisfies Standard English conventions for this blank."},{"id":"B","text":"were","is_correct":false,"explanation":"[Tense Shift] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"C","text":"are","is_correct":false,"explanation":"[Dangling Modifier] agrees with \"manuscripts\" near the blank rather than the true subject \"collection\"."},{"id":"D","text":"was","is_correct":false,"explanation":"[Proximity Decoy] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'A', 'Step 1 — Locate the true subject
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
VALUES ('44be9852-3c5d-49b9-ab12-f3788b58e7e0', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. When a songbird hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Dangling Modifier] \"their\" is plural while the antecedent \"songbird\" is singular."},{"id":"B","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."},{"id":"C","text":"it''s","is_correct":false,"explanation":"[Tense Shift] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"D","text":"it","is_correct":false,"explanation":"[Proximity Decoy] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""}]'::jsonb, 'B', 'Step 1 — Identify the antecedent
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
VALUES ('096563ba-1f55-40c9-87d2-3b62876515a0', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. Each of the volunteers that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges. Stakeholders should weigh the evidence against limitations the researchers document throughout the study.', 'passage', '[{"id":"A","text":"were","is_correct":false,"explanation":"[Tense Shift] agrees with \"volunteers\" near the blank rather than the true subject \"Each\"."},{"id":"B","text":"are","is_correct":false,"explanation":"[Dangling Modifier] breaks the present-timeline established by \"next month\" and surrounding context."},{"id":"C","text":"was","is_correct":true,"explanation":"Correct: \"was\" satisfies Standard English conventions for this blank."},{"id":"D","text":"is","is_correct":false,"explanation":"[Proximity Decoy] creates a non-finite or mismatched form that cannot complete the independent clause."}]'::jsonb, 'C', 'Step 1 — Locate the true subject
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
VALUES ('a834176b-f485-4090-972b-1a8cb7a595ee', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. When a monarch butterfly hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Policy implications depend on whether the observed effect persists when practical constraints such as access vary. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Tense Shift] \"their\" is plural while the antecedent \"monarch butterfly\" is singular."},{"id":"B","text":"it''s","is_correct":false,"explanation":"[Proximity Decoy] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"C","text":"it","is_correct":false,"explanation":"[Dangling Modifier] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""},{"id":"D","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Identify the antecedent
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
VALUES ('72891019-be29-4c58-a8fb-311d90714cb3', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. A series of lectures that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage. Until complementary samples arrive, the team''s conclusion remains provisional rather than categorical.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Correct: \"is\" satisfies Standard English conventions for this blank."},{"id":"B","text":"were","is_correct":false,"explanation":"[Dangling Modifier] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"C","text":"are","is_correct":false,"explanation":"[Proximity Decoy] agrees with \"lectures\" near the blank rather than the true subject \"series\"."},{"id":"D","text":"was","is_correct":false,"explanation":"[Tense Shift] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'A', 'Step 1 — Locate the true subject
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
VALUES ('de4285c7-579b-46b9-b203-b18cb00bd009', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. When a hummingbird hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids. Classroom textbooks may still compress the result, though the original study qualifies every major claim.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Proximity Decoy] \"their\" is plural while the antecedent \"hummingbird\" is singular."},{"id":"B","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."},{"id":"C","text":"it''s","is_correct":false,"explanation":"[Dangling Modifier] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"D","text":"it","is_correct":false,"explanation":"[Tense Shift] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""}]'::jsonb, 'B', 'Step 1 — Identify the antecedent
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
VALUES ('e9d56cd0-c7d3-4b5c-b46d-0d6afcb842ca', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying linguistics at bilingual classroom cohorts have documented how code-switching frequencies shape broader conclusions. The panel of experts that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Policy implications depend on whether the observed effect persists when practical constraints such as access vary. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them.', 'passage', '[{"id":"A","text":"have","is_correct":false,"explanation":"[Dangling Modifier] agrees with \"experts\" near the blank rather than the true subject \"panel\"."},{"id":"B","text":"does","is_correct":false,"explanation":"[Tense Shift] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"C","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"D","text":"had","is_correct":false,"explanation":"[Proximity Decoy] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'C', 'Step 1 — Locate the true subject
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
VALUES ('3f99bb39-62c6-4888-9898-076d021d2f10', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying neuroscience at auditory cortex imaging suites have documented how dendritic branching patterns shape broader conclusions. When a sea turtle hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled. The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Dangling Modifier] \"their\" is plural while the antecedent \"sea turtle\" is singular."},{"id":"B","text":"it''s","is_correct":false,"explanation":"[Tense Shift] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"C","text":"it","is_correct":false,"explanation":"[Proximity Decoy] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""},{"id":"D","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."}]'::jsonb, 'D', 'Step 1 — Identify the antecedent
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
VALUES ('64db76ea-66a5-480f-9666-10a6ae9896ea', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying marine biology at coral reef monitoring stations have documented how parrotfish populations shape broader conclusions. The number of applicants that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month. Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids. Classroom textbooks may still compress the result, though the original study qualifies every major claim.', 'passage', '[{"id":"A","text":"has","is_correct":true,"explanation":"Correct: \"has\" satisfies Standard English conventions for this blank."},{"id":"B","text":"have","is_correct":false,"explanation":"[Tense Shift] agrees with \"applicants\" near the blank rather than the true subject \"number\"."},{"id":"C","text":"does","is_correct":false,"explanation":"[Proximity Decoy] creates a non-finite or mismatched form that cannot complete the independent clause."},{"id":"D","text":"had","is_correct":false,"explanation":"[Dangling Modifier] breaks the present-timeline established by \"next month\" and surrounding context."}]'::jsonb, 'A', 'Step 1 — Locate the true subject
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
VALUES ('3031ed37-50a0-4b95-9f1a-62e4c1eb9514', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Researchers studying materials science at electromagnetic coating facilities have documented how quasicrystal growth trials shape broader conclusions. When a gray wolf hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy. Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges. Stakeholders should weigh the evidence against limitations the researchers document throughout the study.', 'passage', '[{"id":"A","text":"their","is_correct":false,"explanation":"[Tense Shift] \"their\" is plural while the antecedent \"gray wolf\" is singular."},{"id":"B","text":"its","is_correct":true,"explanation":"Correct: \"its\" satisfies Standard English conventions for this blank."},{"id":"C","text":"it''s","is_correct":false,"explanation":"[Proximity Decoy] \"it''s\" is the contraction for \"it is,\" not a possessive form."},{"id":"D","text":"it","is_correct":false,"explanation":"[Dangling Modifier] \"it\" is a subject pronoun, not a possessive modifier for \"wings.\""}]'::jsonb, 'B', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a gray wolf}}, which is singular.

Step 2 — Choose the possessive
The singular possessive without an apostrophe modifies ''wings.''

Step 3 — Select the grammatical option
Choice B (its) is grammatically correct.

Distractor analysis:
- A: [Tense Shift] "their" is plural while the antecedent "gray wolf" is singular.
- C: [Proximity Decoy] "it''s" is the contraction for "it is," not a possessive form.
- D: [Dangling Modifier] "it" is a subject pronoun, not a possessive modifier for "wings."', NULL, 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
COMMIT;
