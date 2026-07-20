BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7ba0b9ee-6ad6-44f2-bd03-65c9f483a305', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest library reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored reading room.', NULL, '[{"id":"A","text":", and","is_correct":true,"explanation":"A comma plus the coordinating conjunction ''and'' correctly joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone between two independent clauses creates a comma splice."},{"id":"C","text":"","is_correct":false,"explanation":"Running the two independent clauses together with no punctuation is a run-on (fused) sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without a preceding comma is incorrect when joining two independent clauses of this length."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
Both sides are independent: {{yellow:The city''s oldest library reopened last spring}} and ''thousands of visitors lined up.''
Step 2 — Join them correctly
Two independent clauses are joined with a comma plus a coordinating conjunction, so '', and'' is correct.
Distractor analysis:
- B: a lone comma makes a comma splice.
- C: no punctuation makes a run-on.
- D: ''and'' without the comma is nonstandard for clauses of this length.', 'Both halves could stand alone as sentences — how do you join two complete sentences?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c6311b74-4459-43bb-aa98-806381fcfd05', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The recipe calls for three uncommon ingredients ______ saffron, tamarind, and smoked paprika.', NULL, '[{"id":"A","text":":","is_correct":true,"explanation":"A colon correctly follows an independent clause to introduce a list."},{"id":"B","text":";","is_correct":false,"explanation":"A semicolon joins two independent clauses, but a list fragment follows, not a clause."},{"id":"C","text":",","is_correct":false,"explanation":"A comma is too weak to formally introduce the list after a complete clause."},{"id":"D","text":"","is_correct":false,"explanation":"Omitting punctuation leaves the list awkwardly fused to the clause."}]'::jsonb, 'A', 'Step 1 — Check what precedes the blank
The words before the blank, {{yellow:The recipe calls for three uncommon ingredients}}, form a complete independent clause.
Step 2 — Introduce the list
A colon after a complete clause properly introduces a list, so '':'' is correct.
Distractor analysis:
- B: a semicolon needs a second independent clause, not a list.
- C: a comma is too weak to introduce the list here.
- D: no punctuation fuses the list to the clause.', 'What punctuation introduces a list after a complete sentence?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b3ab618e-e2ca-44d4-aaff-a77a681de8e0', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', NULL, '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"A matched pair of em dashes correctly sets off the nonessential modifier."},{"id":"B","text":", ... —","is_correct":false,"explanation":"Mixing a comma with an em dash leaves the parenthetical punctuation unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"Opening with an em dash but closing with a comma is unmatched and incorrect."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"An opening parenthesis must close with a parenthesis, not a comma."}]'::jsonb, 'A', 'Step 1 — Find the inserted phrase
The phrase {{yellow:once dismissed by some colleagues as mere guesswork}} is a nonessential aside interrupting the main sentence.
Step 2 — Match the punctuation
Parenthetical asides must be enclosed by matching marks, so an em dash on each side is correct.
Distractor analysis:
- B: a comma paired with a dash is unmatched.
- C: a dash paired with a comma is unmatched.
- D: a parenthesis must be closed by a parenthesis.', 'Whatever mark opens the interruption must also close it.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ff330d8f-ac7a-4587-83d3-2de70a3585ba', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The telescope captured the faint galaxy after hours of exposure ______ the resulting image revealed structures no one had expected.', NULL, '[{"id":"A","text":";","is_correct":true,"explanation":"A semicolon correctly links two closely related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone between two independent clauses is a comma splice."},{"id":"C","text":":","is_correct":false,"explanation":"A colon implies the second clause explains or lists, but here the clauses are simply related events."},{"id":"D","text":" and, ","is_correct":false,"explanation":"Misplaced punctuation around ''and'' produces an ungrammatical join."}]'::jsonb, 'A', 'Step 1 — Test each side
Both parts stand alone: {{yellow:The telescope captured the faint galaxy after hours of exposure}} and ''the resulting image revealed structures.''
Step 2 — Choose the join
Two related independent clauses with no conjunction are correctly linked by a semicolon.
Distractor analysis:
- B: a comma alone is a splice.
- C: a colon signals explanation or a list, not two parallel events.
- D: the misplaced comma after ''and'' is ungrammatical.', 'Two complete clauses with no ''and'' — which single mark links them?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('dd815627-3948-4f08-aec1-1ce6d3f13aef', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', NULL, '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the appositive renaming ''one of the three proposals'' while preserving the main clause."},{"id":"B","text":": ... :","is_correct":false,"explanation":"Colons cannot wrap an interrupting appositive in the middle of a clause."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"A comma opening and a semicolon closing are unmatched and break the clause."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"An em dash opening with a comma closing leaves the interruption unmatched."}]'::jsonb, 'A', 'Step 1 — Locate the appositive
The phrase {{yellow:the one that promised measurable results within a single fiscal year}} renames ''one of the three proposals'' and interrupts the verb phrase ''approved ... and rejected.''
Step 2 — Wrap it symmetrically
An interrupting appositive must be bracketed by matching marks, so an em dash on both sides keeps ''approved ... and rejected the rest'' intact.
Distractor analysis:
- B: paired colons cannot enclose a mid-clause appositive.
- C: a comma and a semicolon are unmatched and sever the clause.
- D: a dash and a comma are unmatched.', 'The bracketed phrase renames the proposal; the marks on each side must match.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5027156b-cb8e-46a7-b1d1-51a6adcbe685', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Pollinator populations are shaped by a single overriding factor ______ the availability of diverse flowering plants across the entire growing season.', NULL, '[{"id":"A","text":":","is_correct":true,"explanation":"A colon after a complete clause correctly introduces the noun phrase that specifies the ''single overriding factor.''"},{"id":"B","text":";","is_correct":false,"explanation":"A semicolon requires a second independent clause, but a noun phrase follows."},{"id":"C","text":",","is_correct":false,"explanation":"A comma is too weak to mark the formal specification the sentence sets up."},{"id":"D","text":" — namely,","is_correct":false,"explanation":"Adding ''namely'' after the dash is redundant with the colon''s function and creates a wordy, nonstandard construction here."}]'::jsonb, 'A', 'Step 1 — Read the setup
The clause {{yellow:Pollinator populations are shaped by a single overriding factor}} is complete and promises a specification.
Step 2 — Deliver the specification
A colon after a complete clause introduces the phrase that identifies that factor, so '':'' is correct.
Distractor analysis:
- B: a semicolon needs a full clause after it.
- C: a comma is too weak for this formal pointing-forward.
- D: ''— namely,'' is redundant and nonstandard for a simple specification.', 'A complete clause promises one factor, then names it — which mark points forward to it?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1a36e693-bf25-47e4-b563-bee7c1d3a465', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The collection of rare coins that the museum acquired last year ______ now on display in the east wing.', NULL, '[{"id":"A","text":"is","is_correct":true,"explanation":"The singular subject ''collection'' takes the singular verb ''is.''"},{"id":"B","text":"are","is_correct":false,"explanation":"''are'' agrees with ''coins,'' but the true subject is the singular ''collection.''"},{"id":"C","text":"were","is_correct":false,"explanation":"''were'' is both plural and past tense, conflicting with the singular subject and the present ''now.''"},{"id":"D","text":"have been","is_correct":false,"explanation":"''have been'' is plural and does not agree with the singular subject ''collection.''"}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The collection of rare coins}}; ''of rare coins'' is a prepositional phrase, and ''collection'' is singular.
Step 2 — Match the verb
A singular subject takes the singular verb ''is,'' which also fits the present-tense cue ''now.''
Distractor analysis:
- B: ''are'' wrongly agrees with ''coins.''
- C: ''were'' is plural and past tense.
- D: ''have been'' is plural.', 'Ignore ''of rare coins'' — what is the actual subject, and is it singular or plural?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fd3d499f-171a-4d3a-89a9-e80937f84d08', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'When a hummingbird hovers, it beats ______ wings up to fifty times per second, a feat that demands enormous energy.', NULL, '[{"id":"A","text":"its","is_correct":true,"explanation":"''its'' is the singular possessive agreeing with the singular antecedent ''a hummingbird.''"},{"id":"B","text":"it''s","is_correct":false,"explanation":"''it''s'' means ''it is'' and cannot show possession."},{"id":"C","text":"their","is_correct":false,"explanation":"''their'' is plural and does not agree with the singular ''a hummingbird.''"},{"id":"D","text":"it","is_correct":false,"explanation":"''it'' is a subject/object pronoun, not the possessive needed before ''wings.''"}]'::jsonb, 'A', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a hummingbird}}, which is singular.
Step 2 — Choose the possessive
The singular possessive ''its'' correctly modifies ''wings.''
Distractor analysis:
- B: ''it''s'' is the contraction ''it is.''
- C: ''their'' is plural.
- D: ''it'' is not possessive.', 'Singular animal + possession of its wings — which form shows ownership?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('108ac2ac-b314-425b-b47a-f62aa757d8c9', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'By the time the survey results were published, the research team ______ the same neighborhoods for nearly a decade, returning each spring to record changes.', NULL, '[{"id":"A","text":"had studied","is_correct":true,"explanation":"The past perfect ''had studied'' shows the study was completed before the past ''were published.''"},{"id":"B","text":"studies","is_correct":false,"explanation":"''studies'' is present tense and clashes with the past-tense narrative."},{"id":"C","text":"will study","is_correct":false,"explanation":"''will study'' is future tense, inconsistent with the past context."},{"id":"D","text":"is studying","is_correct":false,"explanation":"''is studying'' is present progressive and breaks the past timeline."}]'::jsonb, 'A', 'Step 1 — Establish the timeline
The anchor event is past: {{yellow:By the time the survey results were published}}.
Step 2 — Show the earlier action
The team''s studying happened before that past moment, so the past perfect ''had studied'' is required.
Distractor analysis:
- B: ''studies'' is present tense.
- C: ''will study'' is future.
- D: ''is studying'' is present progressive.', 'One past action finished before another past action — which tense shows ''earlier than the past''?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0401e55a-1eba-404c-9f7a-ed3644b286ac', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'A good documentary should inform its audience, challenge their assumptions, and ______ them to look at a familiar subject in a new way.', NULL, '[{"id":"A","text":"invite","is_correct":true,"explanation":"''invite'' is the base form, parallel with ''inform'' and ''challenge'' in the series."},{"id":"B","text":"inviting","is_correct":false,"explanation":"''inviting'' is a participle that breaks the parallel base-verb structure."},{"id":"C","text":"invites","is_correct":false,"explanation":"''invites'' adds an -s that does not match the base-form verbs in the list."},{"id":"D","text":"to invite","is_correct":false,"explanation":"''to invite'' is an infinitive that disrupts the parallel series of verbs."}]'::jsonb, 'A', 'Step 1 — Spot the series
The sentence lists what a documentary should do: {{yellow:inform its audience, challenge their assumptions}}, and a third action.
Step 2 — Keep it parallel
The first two verbs are base forms after ''should,'' so the third must also be the base form ''invite.''
Distractor analysis:
- B: ''inviting'' is a participle.
- C: ''invites'' is conjugated.
- D: ''to invite'' is an infinitive.', 'Match the form of the other verbs in the list after ''should.''', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bc885772-1a68-4cf0-9560-71bd08793033', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Neither the lead engineer nor the junior technicians who assembled the prototype ______ able to explain why the sensor failed during the final test.', NULL, '[{"id":"A","text":"were","is_correct":true,"explanation":"In ''neither...nor,'' the verb agrees with the nearer subject ''technicians,'' which is plural, so ''were'' is correct."},{"id":"B","text":"was","is_correct":false,"explanation":"''was'' would agree with a singular subject, but the nearer subject ''technicians'' is plural."},{"id":"C","text":"is","is_correct":false,"explanation":"''is'' is singular and present tense, conflicting with the plural nearer subject and the past context."},{"id":"D","text":"has been","is_correct":false,"explanation":"''has been'' is singular and does not agree with the plural nearer subject."}]'::jsonb, 'A', 'Step 1 — Apply the neither/nor rule
With {{yellow:Neither the lead engineer nor the junior technicians}}, the verb agrees with the subject closer to it.
Step 2 — Check the nearer subject
The nearer subject, ''technicians,'' is plural, so the plural verb ''were'' is correct.
Distractor analysis:
- B: ''was'' agrees with a singular subject, not the nearer plural one.
- C: ''is'' is singular and present.
- D: ''has been'' is singular.', 'With ''neither...nor,'' the verb matches the subject nearest to it.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('12ae406f-2f36-4fb6-a4f0-e84be8acedb5', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Having been buried under volcanic ash for two millennia, archaeologists were astonished that the frescoes ______ their vivid color.', NULL, '[{"id":"A","text":"had retained","is_correct":true,"explanation":"The frescoes, not the archaeologists, retained color; the past perfect fits the action completed before the astonishment."},{"id":"B","text":"have retained","is_correct":false,"explanation":"''have retained'' is present perfect and clashes with the past-tense ''were astonished.''"},{"id":"C","text":"retaining","is_correct":false,"explanation":"''retaining'' is a participle and cannot serve as the clause''s main verb."},{"id":"D","text":"retains","is_correct":false,"explanation":"''retains'' is singular present tense and does not fit the plural subject or past timeline."}]'::jsonb, 'A', 'Step 1 — Match subject and timeline
The relevant subject is ''the frescoes,'' and the discovery is past: archaeologists {{yellow:were astonished}}.
Step 2 — Use the right tense
The color was kept before that past astonishment, so the plural past perfect ''had retained'' is correct.
Distractor analysis:
- B: ''have retained'' is present perfect.
- C: ''retaining'' is a participle, not a finite verb.
- D: ''retains'' is singular present.', 'The frescoes kept their color before the archaeologists were astonished — which tense and number fit?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
