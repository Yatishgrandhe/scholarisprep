BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3bd00a40-8115-49c5-8539-602fd14fa0f0', 'As used in the passage, "tenuous" most nearly means', 'Policy analysts reviewing program 151 conclude that a tenuous reading of the evidence which, though buried in a technical appendix, prevented premature closure on the central claim. Although initial forecasts predicted the opposite trend, analysts kept the interpretation tenuous until replication arrived. The passage therefore uses "tenuous" to signal provisional judgment rather than settled fact, which careful readers weigh against surrounding contextual cues, a detail that narrows the word''s meaning without adding new claims.', 'passage', '[{"id":"A","text":"sealed in context","is_correct":false,"explanation":"[Collocation Decoy] Flat Literal: \"sealed in context\" does not fit how \"tenuous\" is used in this passage."},{"id":"B","text":"brazen in context..","is_correct":false,"explanation":"[Flat Literal] Collocation Decoy: \"brazen in context..\" does not fit how \"tenuous\" is used in this passage."},{"id":"C","text":"proven in context","is_correct":false,"explanation":"[Tone Inversion] Tone Inversion: \"proven in context\" does not fit how \"tenuous\" is used in this passage."},{"id":"D","text":"feeble in context","is_correct":true,"explanation":"Correct (D). \"tenuous\" most nearly means \"feeble in context\" given the provisional context and semantic trigger in the passage."}]'::jsonb, 'D', 'Step 1 — Locate the word in context
Focus on {{yellow:central}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice D is correct: feeble in context.

Distractor analysis:
- A: [Collocation Decoy] Flat Literal: "sealed in context" does not fit how "tenuous" is used in this passage.
- B: [Flat Literal] Collocation Decoy: "brazen in context.." does not fit how "tenuous" is used in this passage.
- C: [Tone Inversion] Tone Inversion: "proven in context" does not fit how "tenuous" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('254d12ee-8c3f-41c0-af90-467d25ce11b2', 'As used in the passage, "bolster" most nearly means', 'The essayist in reflection 152 contends that the team hoped to bolster the reputational harm a variable that field teams, trained on earlier protocols, would complicate later audits. Rather than confirming what stakeholders had assumed, so only a response that could bolster the damage satisfied reviewers. Stakeholders therefore read "bolster" as describing deliberate moderation rather than passive delay, which careful readers weigh against surrounding contextual cues.', 'passage', '[{"id":"A","text":"to efface some harm","is_correct":false,"explanation":"[Collocation Decoy] Collocation Decoy: \"to efface some harm\" does not fit how \"bolster\" is used in this passage."},{"id":"B","text":"to weaken some harm..","is_correct":false,"explanation":"[Flat Literal] Tone Inversion: \"to weaken some harm..\" does not fit how \"bolster\" is used in this passage."},{"id":"C","text":"to uphold some harm","is_correct":true,"explanation":"Correct (C). \"bolster\" most nearly means \"to uphold some harm\" given the provisional context and semantic trigger in the passage."},{"id":"D","text":"to betray some harm","is_correct":false,"explanation":"[Tone Inversion] Flat Literal: \"to betray some harm\" does not fit how \"bolster\" is used in this passage."}]'::jsonb, 'C', 'Step 1 — Locate the word in context
Focus on {{yellow:audits.}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice C is correct: to uphold some harm.

Distractor analysis:
- A: [Collocation Decoy] Collocation Decoy: "to efface some harm" does not fit how "bolster" is used in this passage.
- B: [Flat Literal] Tone Inversion: "to weaken some harm.." does not fit how "bolster" is used in this passage.
- D: [Tone Inversion] Flat Literal: "to betray some harm" does not fit how "bolster" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('474d55e7-1b19-45ac-9418-2a4195d496b4', 'As used in the passage, "ambiguous" most nearly means', 'Researchers studying ecosystem 153 documented that a ambiguous reading of the evidence which, though buried in a technical appendix, prevented premature closure on the central claim. Yet reviewers noted the pattern held only under narrow conditions, analysts kept the interpretation ambiguous until replication arrived. The passage therefore uses "ambiguous" to signal provisional judgment rather than settled fact, which careful readers weigh against surrounding contextual cues.', 'passage', '[{"id":"A","text":"obviou in context","is_correct":false,"explanation":"[Collocation Decoy] Tone Inversion: \"obviou in context\" does not fit how \"ambiguous\" is used in this passage."},{"id":"B","text":"unclea in context","is_correct":true,"explanation":"Correct (B). \"ambiguous\" most nearly means \"unclea in context\" given the provisional context and semantic trigger in the passage."},{"id":"C","text":"sealed in context","is_correct":false,"explanation":"[Flat Literal] Flat Literal: \"sealed in context\" does not fit how \"ambiguous\" is used in this passage."},{"id":"D","text":"fictiv in context","is_correct":false,"explanation":"[Tone Inversion] Collocation Decoy: \"fictiv in context\" does not fit how \"ambiguous\" is used in this passage."}]'::jsonb, 'B', 'Step 1 — Locate the word in context
Focus on {{yellow:premature}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice B is correct: unclea in context.

Distractor analysis:
- A: [Collocation Decoy] Tone Inversion: "obviou in context" does not fit how "ambiguous" is used in this passage.
- C: [Flat Literal] Flat Literal: "sealed in context" does not fit how "ambiguous" is used in this passage.
- D: [Tone Inversion] Collocation Decoy: "fictiv in context" does not fit how "ambiguous" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6629764c-9ece-4d9a-9755-716e3db3024c', 'As used in the passage, "scrutinize" most nearly means', 'Policy analysts reviewing program 154 conclude that the team hoped to scrutinize the reputational harm findings that resist neat categorization because would complicate later audits. Contrary to expectations raised by the pilot study, so only a response that could scrutinize the damage satisfied reviewers. Stakeholders therefore read "scrutinize" as describing deliberate moderation rather than passive delay, which careful readers weigh against surrounding contextual cues, a detail that narrows the word''s meaning without adding new claims.', 'passage', '[{"id":"A","text":"to examin some harm","is_correct":true,"explanation":"Correct (A). \"scrutinize\" most nearly means \"to examin some harm\" given the provisional context and semantic trigger in the passage."},{"id":"B","text":"to praise some harm","is_correct":false,"explanation":"[Collocation Decoy] Flat Literal: \"to praise some harm\" does not fit how \"scrutinize\" is used in this passage."},{"id":"C","text":"to skim   some harm..","is_correct":false,"explanation":"[Flat Literal] Collocation Decoy: \"to skim   some harm..\" does not fit how \"scrutinize\" is used in this passage."},{"id":"D","text":"to ignore some harm","is_correct":false,"explanation":"[Tone Inversion] Tone Inversion: \"to ignore some harm\" does not fit how \"scrutinize\" is used in this passage."}]'::jsonb, 'A', 'Step 1 — Locate the word in context
Focus on {{yellow:Contrary}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice A is correct: to examin some harm.

Distractor analysis:
- B: [Collocation Decoy] Flat Literal: "to praise some harm" does not fit how "scrutinize" is used in this passage.
- C: [Flat Literal] Collocation Decoy: "to skim   some harm.." does not fit how "scrutinize" is used in this passage.
- D: [Tone Inversion] Tone Inversion: "to ignore some harm" does not fit how "scrutinize" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6b8f44aa-bf10-4f1e-b7d9-eaa36c3e9df7', 'As used in the passage, "wan" most nearly means', 'The essayist in reflection 155 contends that a wan reading of the evidence which, though buried in a technical appendix, prevented premature closure on the central claim. Even though the headline result appeared straightforward, analysts kept the interpretation wan until replication arrived. The passage therefore uses "wan" to signal provisional judgment rather than settled fact, which careful readers weigh against surrounding contextual cues, a detail that narrows the word''s meaning without adding new claims.', 'passage', '[{"id":"A","text":"hearty in context..","is_correct":false,"explanation":"[Collocation Decoy] Tone Inversion: \"hearty in context..\" does not fit how \"wan\" is used in this passage."},{"id":"B","text":"pallid in context","is_correct":true,"explanation":"Correct (B). \"wan\" most nearly means \"pallid in context\" given the provisional context and semantic trigger in the passage."},{"id":"C","text":"vivid  in context","is_correct":false,"explanation":"[Flat Literal] Flat Literal: \"vivid  in context\" does not fit how \"wan\" is used in this passage."},{"id":"D","text":"famed  in context","is_correct":false,"explanation":"[Tone Inversion] Collocation Decoy: \"famed  in context\" does not fit how \"wan\" is used in this passage."}]'::jsonb, 'B', 'Step 1 — Locate the word in context
Focus on {{yellow:central}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice B is correct: pallid in context.

Distractor analysis:
- A: [Collocation Decoy] Tone Inversion: "hearty in context.." does not fit how "wan" is used in this passage.
- C: [Flat Literal] Flat Literal: "vivid  in context" does not fit how "wan" is used in this passage.
- D: [Tone Inversion] Collocation Decoy: "famed  in context" does not fit how "wan" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f5076263-6a1e-458a-8ca0-8a6418c73f23', 'As used in the passage, "equivocal" most nearly means', 'Researchers studying ecosystem 156 documented that a equivocal reading of the evidence whose status—debated in committee yet central to the grant renewal—prevented premature closure on the central claim. Although initial forecasts predicted the opposite trend, analysts kept the interpretation equivocal until replication arrived. The passage therefore uses "equivocal" to signal provisional judgment rather than settled fact, which careful readers weigh against surrounding contextual cues, a detail that narrows the word''s meaning without adding new claims.', 'passage', '[{"id":"A","text":"fictiv in context","is_correct":false,"explanation":"[Collocation Decoy] Collocation Decoy: \"fictiv in context\" does not fit how \"equivocal\" is used in this passage."},{"id":"B","text":"obviou in context","is_correct":false,"explanation":"[Flat Literal] Tone Inversion: \"obviou in context\" does not fit how \"equivocal\" is used in this passage."},{"id":"C","text":"unclea in context","is_correct":true,"explanation":"Correct (C). \"equivocal\" most nearly means \"unclea in context\" given the provisional context and semantic trigger in the passage."},{"id":"D","text":"sealed in context..","is_correct":false,"explanation":"[Tone Inversion] Flat Literal: \"sealed in context..\" does not fit how \"equivocal\" is used in this passage."}]'::jsonb, 'C', 'Step 1 — Locate the word in context
Focus on {{yellow:central}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice C is correct: unclea in context.

Distractor analysis:
- A: [Collocation Decoy] Collocation Decoy: "fictiv in context" does not fit how "equivocal" is used in this passage.
- B: [Flat Literal] Tone Inversion: "obviou in context" does not fit how "equivocal" is used in this passage.
- D: [Tone Inversion] Flat Literal: "sealed in context.." does not fit how "equivocal" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6233d28e-5958-4578-bd50-7110a63c9255', 'As used in the passage, "perfunctory" most nearly means', 'Policy analysts reviewing program 157 conclude that a perfunctory reading of the evidence findings that resist neat categorization because prevented premature closure on the central claim. Rather than confirming what stakeholders had assumed, analysts kept the interpretation perfunctory until replication arrived. The passage therefore uses "perfunctory" to signal provisional judgment rather than settled fact, which careful readers weigh against surrounding contextual cues, a detail that narrows the word''s meaning without adding new claims.', 'passage', '[{"id":"A","text":"eager  in context","is_correct":false,"explanation":"[Collocation Decoy] Flat Literal: \"eager  in context\" does not fit how \"perfunctory\" is used in this passage."},{"id":"B","text":"lastin in context","is_correct":false,"explanation":"[Flat Literal] Collocation Decoy: \"lastin in context\" does not fit how \"perfunctory\" is used in this passage."},{"id":"C","text":"carefu in context","is_correct":false,"explanation":"[Tone Inversion] Tone Inversion: \"carefu in context\" does not fit how \"perfunctory\" is used in this passage."},{"id":"D","text":"cursor in context","is_correct":true,"explanation":"Correct (D). \"perfunctory\" most nearly means \"cursor in context\" given the provisional context and semantic trigger in the passage."}]'::jsonb, 'D', 'Step 1 — Locate the word in context
Focus on {{yellow:closure}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice D is correct: cursor in context.

Distractor analysis:
- A: [Collocation Decoy] Flat Literal: "eager  in context" does not fit how "perfunctory" is used in this passage.
- B: [Flat Literal] Collocation Decoy: "lastin in context" does not fit how "perfunctory" is used in this passage.
- C: [Tone Inversion] Tone Inversion: "carefu in context" does not fit how "perfunctory" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('26f42538-e187-4b21-be1a-ef2c9dedea98', 'As used in the passage, "sanguine" most nearly means', 'The essayist in reflection 158 contends that a sanguine reading of the evidence which, though buried in a technical appendix, prevented premature closure on the central claim. Yet reviewers noted the pattern held only under narrow conditions, analysts kept the interpretation sanguine until replication arrived. The passage therefore uses "sanguine" to signal provisional judgment rather than settled fact, which careful readers weigh against surrounding contextual cues.', 'passage', '[{"id":"A","text":"gloomy in context..","is_correct":false,"explanation":"[Collocation Decoy] Tone Inversion: \"gloomy in context..\" does not fit how \"sanguine\" is used in this passage."},{"id":"B","text":"hopefu in context","is_correct":true,"explanation":"Correct (B). \"sanguine\" most nearly means \"hopefu in context\" given the provisional context and semantic trigger in the passage."},{"id":"C","text":"bloody in context","is_correct":false,"explanation":"[Flat Literal] Flat Literal: \"bloody in context\" does not fit how \"sanguine\" is used in this passage."},{"id":"D","text":"aloof  in context","is_correct":false,"explanation":"[Tone Inversion] Collocation Decoy: \"aloof  in context\" does not fit how \"sanguine\" is used in this passage."}]'::jsonb, 'B', 'Step 1 — Locate the word in context
Focus on {{yellow:closure}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice B is correct: hopefu in context.

Distractor analysis:
- A: [Collocation Decoy] Tone Inversion: "gloomy in context.." does not fit how "sanguine" is used in this passage.
- C: [Flat Literal] Flat Literal: "bloody in context" does not fit how "sanguine" is used in this passage.
- D: [Tone Inversion] Collocation Decoy: "aloof  in context" does not fit how "sanguine" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('13781d3c-39b9-4361-95cb-a39b439561b2', 'As used in the passage, "obfuscate" most nearly means', 'Researchers studying ecosystem 159 documented that the team hoped to obfuscate the reputational harm findings that resist neat categorization because would complicate later audits. Contrary to expectations raised by the pilot study, so only a response that could obfuscate the damage satisfied reviewers. Stakeholders therefore read "obfuscate" as describing deliberate moderation rather than passive delay, which careful readers weigh against surrounding contextual cues, a detail that narrows the word''s meaning without adding new claims.', 'passage', '[{"id":"A","text":"to obscur some harm","is_correct":true,"explanation":"Correct (A). \"obfuscate\" most nearly means \"to obscur some harm\" given the provisional context and semantic trigger in the passage."},{"id":"B","text":"to praise some harm..","is_correct":false,"explanation":"[Collocation Decoy] Flat Literal: \"to praise some harm..\" does not fit how \"obfuscate\" is used in this passage."},{"id":"C","text":"to hard   some harm","is_correct":false,"explanation":"[Flat Literal] Collocation Decoy: \"to hard   some harm\" does not fit how \"obfuscate\" is used in this passage."},{"id":"D","text":"to clarif some harm","is_correct":false,"explanation":"[Tone Inversion] Tone Inversion: \"to clarif some harm\" does not fit how \"obfuscate\" is used in this passage."}]'::jsonb, 'A', 'Step 1 — Locate the word in context
Focus on {{yellow:Contrary}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice A is correct: to obscur some harm.

Distractor analysis:
- B: [Collocation Decoy] Flat Literal: "to praise some harm.." does not fit how "obfuscate" is used in this passage.
- C: [Flat Literal] Collocation Decoy: "to hard   some harm" does not fit how "obfuscate" is used in this passage.
- D: [Tone Inversion] Tone Inversion: "to clarif some harm" does not fit how "obfuscate" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('34825449-6ca8-4323-a270-9a73e0687c5e', 'As used in the passage, "laconic" most nearly means', 'Policy analysts reviewing program 160 conclude that a laconic reading of the evidence a variable that field teams, trained on earlier protocols, prevented premature closure on the central claim. Even though the headline result appeared straightforward, analysts kept the interpretation laconic until replication arrived. The passage therefore uses "laconic" to signal provisional judgment rather than settled fact, which careful readers weigh against surrounding contextual cues.', 'passage', '[{"id":"A","text":"greek  in context","is_correct":false,"explanation":"[Collocation Decoy] Flat Literal: \"greek  in context\" does not fit how \"laconic\" is used in this passage."},{"id":"B","text":"messy  in context..","is_correct":false,"explanation":"[Flat Literal] Collocation Decoy: \"messy  in context..\" does not fit how \"laconic\" is used in this passage."},{"id":"C","text":"wordy  in context","is_correct":false,"explanation":"[Tone Inversion] Tone Inversion: \"wordy  in context\" does not fit how \"laconic\" is used in this passage."},{"id":"D","text":"terse  in context","is_correct":true,"explanation":"Correct (D). \"laconic\" most nearly means \"terse  in context\" given the provisional context and semantic trigger in the passage."}]'::jsonb, 'D', 'Step 1 — Locate the word in context
Focus on {{yellow:prevented}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice D is correct: terse  in context.

Distractor analysis:
- A: [Collocation Decoy] Flat Literal: "greek  in context" does not fit how "laconic" is used in this passage.
- B: [Flat Literal] Collocation Decoy: "messy  in context.." does not fit how "laconic" is used in this passage.
- C: [Tone Inversion] Tone Inversion: "wordy  in context" does not fit how "laconic" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('56a09d2d-a60a-4d54-9a64-409c51eb008e', 'As used in the passage, "ephemeral" most nearly means', 'The essayist in reflection 161 contends that a ephemeral reading of the evidence which, though buried in a technical appendix, prevented premature closure on the central claim. Although initial forecasts predicted the opposite trend, analysts kept the interpretation ephemeral until replication arrived. The passage therefore uses "ephemeral" to signal provisional judgment rather than settled fact, which careful readers weigh against surrounding contextual cues, a detail that narrows the word''s meaning without adding new claims.', 'passage', '[{"id":"A","text":"brief  in context","is_correct":true,"explanation":"Correct (A). \"ephemeral\" most nearly means \"brief  in context\" given the provisional context and semantic trigger in the passage."},{"id":"B","text":"insect in context","is_correct":false,"explanation":"[Collocation Decoy] Flat Literal: \"insect in context\" does not fit how \"ephemeral\" is used in this passage."},{"id":"C","text":"famous in context","is_correct":false,"explanation":"[Flat Literal] Collocation Decoy: \"famous in context\" does not fit how \"ephemeral\" is used in this passage."},{"id":"D","text":"lastin in context","is_correct":false,"explanation":"[Tone Inversion] Tone Inversion: \"lastin in context\" does not fit how \"ephemeral\" is used in this passage."}]'::jsonb, 'A', 'Step 1 — Locate the word in context
Focus on {{yellow:Although}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice A is correct: brief  in context.

Distractor analysis:
- B: [Collocation Decoy] Flat Literal: "insect in context" does not fit how "ephemeral" is used in this passage.
- C: [Flat Literal] Collocation Decoy: "famous in context" does not fit how "ephemeral" is used in this passage.
- D: [Tone Inversion] Tone Inversion: "lastin in context" does not fit how "ephemeral" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('103d89ef-aa71-4c8b-982a-ce8e348f76c0', 'As used in the passage, "intransigent" most nearly means', 'Researchers studying ecosystem 162 documented that a intransigent reading of the evidence which, though buried in a technical appendix, prevented premature closure on the central claim. Rather than confirming what stakeholders had assumed, analysts kept the interpretation intransigent until replication arrived. The passage therefore uses "intransigent" to signal provisional judgment rather than settled fact, which careful readers weigh against surrounding contextual cues, a detail that narrows the word''s meaning without adding new claims.', 'passage', '[{"id":"A","text":"brief  in context","is_correct":false,"explanation":"[Collocation Decoy] Collocation Decoy: \"brief  in context\" does not fit how \"intransigent\" is used in this passage."},{"id":"B","text":"flexib in context","is_correct":false,"explanation":"[Flat Literal] Tone Inversion: \"flexib in context\" does not fit how \"intransigent\" is used in this passage."},{"id":"C","text":"stubbo in context","is_correct":true,"explanation":"Correct (C). \"intransigent\" most nearly means \"stubbo in context\" given the provisional context and semantic trigger in the passage."},{"id":"D","text":"logica in context..","is_correct":false,"explanation":"[Tone Inversion] Flat Literal: \"logica in context..\" does not fit how \"intransigent\" is used in this passage."}]'::jsonb, 'C', 'Step 1 — Locate the word in context
Focus on {{yellow:central}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice C is correct: stubbo in context.

Distractor analysis:
- A: [Collocation Decoy] Collocation Decoy: "brief  in context" does not fit how "intransigent" is used in this passage.
- B: [Flat Literal] Tone Inversion: "flexib in context" does not fit how "intransigent" is used in this passage.
- D: [Tone Inversion] Flat Literal: "logica in context.." does not fit how "intransigent" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5e51f1a0-b3ac-468b-b9ce-553e4cca196c', 'As used in the passage, "profligate" most nearly means', 'Policy analysts reviewing program 163 conclude that a profligate reading of the evidence whose status—debated in committee yet central to the grant renewal—prevented premature closure on the central claim. Yet reviewers noted the pattern held only under narrow conditions, analysts kept the interpretation profligate until replication arrived. The passage therefore uses "profligate" to signal provisional judgment rather than settled fact, which careful readers weigh against surrounding contextual cues.', 'passage', '[{"id":"A","text":"skille in context","is_correct":false,"explanation":"[Collocation Decoy] Flat Literal: \"skille in context\" does not fit how \"profligate\" is used in this passage."},{"id":"B","text":"admire in context..","is_correct":false,"explanation":"[Flat Literal] Collocation Decoy: \"admire in context..\" does not fit how \"profligate\" is used in this passage."},{"id":"C","text":"frugal in context","is_correct":false,"explanation":"[Tone Inversion] Tone Inversion: \"frugal in context\" does not fit how \"profligate\" is used in this passage."},{"id":"D","text":"wastef in context","is_correct":true,"explanation":"Correct (D). \"profligate\" most nearly means \"wastef in context\" given the provisional context and semantic trigger in the passage."}]'::jsonb, 'D', 'Step 1 — Locate the word in context
Focus on {{yellow:premature}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice D is correct: wastef in context.

Distractor analysis:
- A: [Collocation Decoy] Flat Literal: "skille in context" does not fit how "profligate" is used in this passage.
- B: [Flat Literal] Collocation Decoy: "admire in context.." does not fit how "profligate" is used in this passage.
- C: [Tone Inversion] Tone Inversion: "frugal in context" does not fit how "profligate" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('11fea68c-8bb8-443e-b98f-b3b74230f509', 'As used in the passage, "surreptitious" most nearly means', 'The essayist in reflection 164 contends that a surreptitious reading of the evidence whose status—debated in committee yet central to the grant renewal—prevented premature closure on the central claim. Contrary to expectations raised by the pilot study, analysts kept the interpretation surreptitious until replication arrived. The passage therefore uses "surreptitious" to signal provisional judgment rather than settled fact, which careful readers weigh against surrounding contextual cues.', 'passage', '[{"id":"A","text":"abrupt in context","is_correct":false,"explanation":"[Collocation Decoy] Flat Literal: \"abrupt in context\" does not fit how \"surreptitious\" is used in this passage."},{"id":"B","text":"legal  in context","is_correct":false,"explanation":"[Flat Literal] Collocation Decoy: \"legal  in context\" does not fit how \"surreptitious\" is used in this passage."},{"id":"C","text":"overt  in context..","is_correct":false,"explanation":"[Tone Inversion] Tone Inversion: \"overt  in context..\" does not fit how \"surreptitious\" is used in this passage."},{"id":"D","text":"stealt in context","is_correct":true,"explanation":"Correct (D). \"surreptitious\" most nearly means \"stealt in context\" given the provisional context and semantic trigger in the passage."}]'::jsonb, 'D', 'Step 1 — Locate the word in context
Focus on {{yellow:premature}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice D is correct: stealt in context.

Distractor analysis:
- A: [Collocation Decoy] Flat Literal: "abrupt in context" does not fit how "surreptitious" is used in this passage.
- B: [Flat Literal] Collocation Decoy: "legal  in context" does not fit how "surreptitious" is used in this passage.
- C: [Tone Inversion] Tone Inversion: "overt  in context.." does not fit how "surreptitious" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0297b999-7566-4f0c-933c-d35632d63c72', 'As used in the passage, "veracious" most nearly means', 'Researchers studying ecosystem 165 documented that a veracious reading of the evidence which, though buried in a technical appendix, prevented premature closure on the central claim. Even though the headline result appeared straightforward, analysts kept the interpretation veracious until replication arrived. The passage therefore uses "veracious" to signal provisional judgment rather than settled fact, which careful readers weigh against surrounding contextual cues, a detail that narrows the word''s meaning without adding new claims.', 'passage', '[{"id":"A","text":"quick  in context","is_correct":false,"explanation":"[Collocation Decoy] Collocation Decoy: \"quick  in context\" does not fit how \"veracious\" is used in this passage."},{"id":"B","text":"false  in context","is_correct":false,"explanation":"[Flat Literal] Tone Inversion: \"false  in context\" does not fit how \"veracious\" is used in this passage."},{"id":"C","text":"honest in context","is_correct":true,"explanation":"Correct (C). \"veracious\" most nearly means \"honest in context\" given the provisional context and semantic trigger in the passage."},{"id":"D","text":"hungry in context","is_correct":false,"explanation":"[Tone Inversion] Flat Literal: \"hungry in context\" does not fit how \"veracious\" is used in this passage."}]'::jsonb, 'C', 'Step 1 — Locate the word in context
Focus on {{yellow:central}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice C is correct: honest in context.

Distractor analysis:
- A: [Collocation Decoy] Collocation Decoy: "quick  in context" does not fit how "veracious" is used in this passage.
- B: [Flat Literal] Tone Inversion: "false  in context" does not fit how "veracious" is used in this passage.
- D: [Tone Inversion] Flat Literal: "hungry in context" does not fit how "veracious" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('09d85a75-f97c-4657-a1a8-5ac430997005', 'As used in the passage, "abstruse" most nearly means', 'Policy analysts reviewing program 166 conclude that a abstruse reading of the evidence which, though buried in a technical appendix, prevented premature closure on the central claim. Although initial forecasts predicted the opposite trend, analysts kept the interpretation abstruse until replication arrived. The passage therefore uses "abstruse" to signal provisional judgment rather than settled fact, which careful readers weigh against surrounding contextual cues, a detail that narrows the word''s meaning without adding new claims.', 'passage', '[{"id":"A","text":"known  in context..","is_correct":false,"explanation":"[Collocation Decoy] Collocation Decoy: \"known  in context..\" does not fit how \"abstruse\" is used in this passage."},{"id":"B","text":"plain  in context","is_correct":false,"explanation":"[Flat Literal] Tone Inversion: \"plain  in context\" does not fit how \"abstruse\" is used in this passage."},{"id":"C","text":"obscur in context","is_correct":true,"explanation":"Correct (C). \"abstruse\" most nearly means \"obscur in context\" given the provisional context and semantic trigger in the passage."},{"id":"D","text":"remote in context","is_correct":false,"explanation":"[Tone Inversion] Flat Literal: \"remote in context\" does not fit how \"abstruse\" is used in this passage."}]'::jsonb, 'C', 'Step 1 — Locate the word in context
Focus on {{yellow:central}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice C is correct: obscur in context.

Distractor analysis:
- A: [Collocation Decoy] Collocation Decoy: "known  in context.." does not fit how "abstruse" is used in this passage.
- B: [Flat Literal] Tone Inversion: "plain  in context" does not fit how "abstruse" is used in this passage.
- D: [Tone Inversion] Flat Literal: "remote in context" does not fit how "abstruse" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5d43831c-6761-4a05-851e-c3f4d2915c91', 'As used in the passage, "capricious" most nearly means', 'The essayist in reflection 167 contends that a capricious reading of the evidence whose status—debated in committee yet central to the grant renewal—prevented premature closure on the central claim. Rather than confirming what stakeholders had assumed, analysts kept the interpretation capricious until replication arrived. The passage therefore uses "capricious" to signal provisional judgment rather than settled fact, which careful readers weigh against surrounding contextual cues.', 'passage', '[{"id":"A","text":"steady in context..","is_correct":false,"explanation":"[Collocation Decoy] Tone Inversion: \"steady in context..\" does not fit how \"capricious\" is used in this passage."},{"id":"B","text":"fickle in context","is_correct":true,"explanation":"Correct (B). \"capricious\" most nearly means \"fickle in context\" given the provisional context and semantic trigger in the passage."},{"id":"C","text":"goatis in context","is_correct":false,"explanation":"[Flat Literal] Flat Literal: \"goatis in context\" does not fit how \"capricious\" is used in this passage."},{"id":"D","text":"formal in context","is_correct":false,"explanation":"[Tone Inversion] Collocation Decoy: \"formal in context\" does not fit how \"capricious\" is used in this passage."}]'::jsonb, 'B', 'Step 1 — Locate the word in context
Focus on {{yellow:premature}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice B is correct: fickle in context.

Distractor analysis:
- A: [Collocation Decoy] Tone Inversion: "steady in context.." does not fit how "capricious" is used in this passage.
- C: [Flat Literal] Flat Literal: "goatis in context" does not fit how "capricious" is used in this passage.
- D: [Tone Inversion] Collocation Decoy: "formal in context" does not fit how "capricious" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('561b7b38-916f-424d-a39f-6ed53b8eb4d4', 'As used in the passage, "didactic" most nearly means', 'Researchers studying ecosystem 168 documented that a didactic reading of the evidence findings that resist neat categorization because prevented premature closure on the central claim. Yet reviewers noted the pattern held only under narrow conditions, analysts kept the interpretation didactic until replication arrived. The passage therefore uses "didactic" to signal provisional judgment rather than settled fact, which careful readers weigh against surrounding contextual cues, a detail that narrows the word''s meaning without adding new claims.', 'passage', '[{"id":"A","text":"funny  in context","is_correct":false,"explanation":"[Collocation Decoy] Tone Inversion: \"funny  in context\" does not fit how \"didactic\" is used in this passage."},{"id":"B","text":"teachy in context","is_correct":true,"explanation":"Correct (B). \"didactic\" most nearly means \"teachy in context\" given the provisional context and semantic trigger in the passage."},{"id":"C","text":"medica in context..","is_correct":false,"explanation":"[Flat Literal] Flat Literal: \"medica in context..\" does not fit how \"didactic\" is used in this passage."},{"id":"D","text":"hidden in context","is_correct":false,"explanation":"[Tone Inversion] Collocation Decoy: \"hidden in context\" does not fit how \"didactic\" is used in this passage."}]'::jsonb, 'B', 'Step 1 — Locate the word in context
Focus on {{yellow:closure}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice B is correct: teachy in context.

Distractor analysis:
- A: [Collocation Decoy] Tone Inversion: "funny  in context" does not fit how "didactic" is used in this passage.
- C: [Flat Literal] Flat Literal: "medica in context.." does not fit how "didactic" is used in this passage.
- D: [Tone Inversion] Collocation Decoy: "hidden in context" does not fit how "didactic" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('037eb213-1873-4c9e-ae84-4a476c28103e', 'As used in the passage, "fastidious" most nearly means', 'Policy analysts reviewing program 169 conclude that a fastidious reading of the evidence a variable that field teams, trained on earlier protocols, prevented premature closure on the central claim. Contrary to expectations raised by the pilot study, analysts kept the interpretation fastidious until replication arrived. The passage therefore uses "fastidious" to signal provisional judgment rather than settled fact, which careful readers weigh against surrounding contextual cues.', 'passage', '[{"id":"A","text":"exact  in context","is_correct":true,"explanation":"Correct (A). \"fastidious\" most nearly means \"exact  in context\" given the provisional context and semantic trigger in the passage."},{"id":"B","text":"hungry in context","is_correct":false,"explanation":"[Collocation Decoy] Flat Literal: \"hungry in context\" does not fit how \"fastidious\" is used in this passage."},{"id":"C","text":"hasty  in context","is_correct":false,"explanation":"[Flat Literal] Collocation Decoy: \"hasty  in context\" does not fit how \"fastidious\" is used in this passage."},{"id":"D","text":"messy  in context","is_correct":false,"explanation":"[Tone Inversion] Tone Inversion: \"messy  in context\" does not fit how \"fastidious\" is used in this passage."}]'::jsonb, 'A', 'Step 1 — Locate the word in context
Focus on {{yellow:prevented}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice A is correct: exact  in context.

Distractor analysis:
- B: [Collocation Decoy] Flat Literal: "hungry in context" does not fit how "fastidious" is used in this passage.
- C: [Flat Literal] Collocation Decoy: "hasty  in context" does not fit how "fastidious" is used in this passage.
- D: [Tone Inversion] Tone Inversion: "messy  in context" does not fit how "fastidious" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('95e8586d-dce1-4168-ad62-90b8e7ccfe41', 'As used in the passage, "garrulous" most nearly means', 'The essayist in reflection 170 contends that a garrulous reading of the evidence a variable that field teams, trained on earlier protocols, prevented premature closure on the central claim. Even though the headline result appeared straightforward, analysts kept the interpretation garrulous until replication arrived. The passage therefore uses "garrulous" to signal provisional judgment rather than settled fact, which careful readers weigh against surrounding contextual cues.', 'passage', '[{"id":"A","text":"quiet  in context..","is_correct":false,"explanation":"[Collocation Decoy] Tone Inversion: \"quiet  in context..\" does not fit how \"garrulous\" is used in this passage."},{"id":"B","text":"talky  in context","is_correct":true,"explanation":"Correct (B). \"garrulous\" most nearly means \"talky  in context\" given the provisional context and semantic trigger in the passage."},{"id":"C","text":"avian  in context","is_correct":false,"explanation":"[Flat Literal] Flat Literal: \"avian  in context\" does not fit how \"garrulous\" is used in this passage."},{"id":"D","text":"stiff  in context","is_correct":false,"explanation":"[Tone Inversion] Collocation Decoy: \"stiff  in context\" does not fit how \"garrulous\" is used in this passage."}]'::jsonb, 'B', 'Step 1 — Locate the word in context
Focus on {{yellow:premature}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice B is correct: talky  in context.

Distractor analysis:
- A: [Collocation Decoy] Tone Inversion: "quiet  in context.." does not fit how "garrulous" is used in this passage.
- C: [Flat Literal] Flat Literal: "avian  in context" does not fit how "garrulous" is used in this passage.
- D: [Tone Inversion] Collocation Decoy: "stiff  in context" does not fit how "garrulous" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8e9d40e6-c590-4c02-aba2-b9e80d8df7e0', 'As used in the passage, "mitigate" most nearly means', 'Researchers studying ecosystem 171 documented that the team hoped to mitigate the reputational harm a variable that field teams, trained on earlier protocols, would complicate later audits. Although initial forecasts predicted the opposite trend, so only a response that could mitigate the damage satisfied reviewers. Stakeholders therefore read "mitigate" as describing deliberate moderation rather than passive delay, which careful readers weigh against surrounding contextual cues.', 'passage', '[{"id":"A","text":"to lessen some harm","is_correct":true,"explanation":"Correct (A). \"mitigate\" most nearly means \"to lessen some harm\" given the provisional context and semantic trigger in the passage."},{"id":"B","text":"to ignore some harm..","is_correct":false,"explanation":"[Collocation Decoy] Flat Literal: \"to ignore some harm..\" does not fit how \"mitigate\" is used in this passage."},{"id":"C","text":"to spread some harm","is_correct":false,"explanation":"[Flat Literal] Collocation Decoy: \"to spread some harm\" does not fit how \"mitigate\" is used in this passage."},{"id":"D","text":"to worsen some harm","is_correct":false,"explanation":"[Tone Inversion] Tone Inversion: \"to worsen some harm\" does not fit how \"mitigate\" is used in this passage."}]'::jsonb, 'A', 'Step 1 — Locate the word in context
Focus on {{yellow:audits.}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice A is correct: to lessen some harm.

Distractor analysis:
- B: [Collocation Decoy] Flat Literal: "to ignore some harm.." does not fit how "mitigate" is used in this passage.
- C: [Flat Literal] Collocation Decoy: "to spread some harm" does not fit how "mitigate" is used in this passage.
- D: [Tone Inversion] Tone Inversion: "to worsen some harm" does not fit how "mitigate" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('16bdffc2-27cc-4b2d-a495-798c0310d58b', 'As used in the passage, "tenuous" most nearly means', 'Policy analysts reviewing program 172 conclude that a tenuous reading of the evidence a variable that field teams, trained on earlier protocols, prevented premature closure on the central claim. Rather than confirming what stakeholders had assumed, analysts kept the interpretation tenuous until replication arrived. The passage therefore uses "tenuous" to signal provisional judgment rather than settled fact, which careful readers weigh against surrounding contextual cues.', 'passage', '[{"id":"A","text":"feeble in context","is_correct":true,"explanation":"Correct (A). \"tenuous\" most nearly means \"feeble in context\" given the provisional context and semantic trigger in the passage."},{"id":"B","text":"sealed in context","is_correct":false,"explanation":"[Collocation Decoy] Flat Literal: \"sealed in context\" does not fit how \"tenuous\" is used in this passage."},{"id":"C","text":"brazen in context..","is_correct":false,"explanation":"[Flat Literal] Collocation Decoy: \"brazen in context..\" does not fit how \"tenuous\" is used in this passage."},{"id":"D","text":"proven in context","is_correct":false,"explanation":"[Tone Inversion] Tone Inversion: \"proven in context\" does not fit how \"tenuous\" is used in this passage."}]'::jsonb, 'A', 'Step 1 — Locate the word in context
Focus on {{yellow:prevented}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice A is correct: feeble in context.

Distractor analysis:
- B: [Collocation Decoy] Flat Literal: "sealed in context" does not fit how "tenuous" is used in this passage.
- C: [Flat Literal] Collocation Decoy: "brazen in context.." does not fit how "tenuous" is used in this passage.
- D: [Tone Inversion] Tone Inversion: "proven in context" does not fit how "tenuous" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('87ac04e7-8bd9-48ee-9926-6d8685661988', 'As used in the passage, "bolster" most nearly means', 'The essayist in reflection 173 contends that the team hoped to bolster the reputational harm findings that resist neat categorization because would complicate later audits. Yet reviewers noted the pattern held only under narrow conditions, so only a response that could bolster the damage satisfied reviewers. Stakeholders therefore read "bolster" as describing deliberate moderation rather than passive delay, which careful readers weigh against surrounding contextual cues.', 'passage', '[{"id":"A","text":"to efface some harm","is_correct":false,"explanation":"[Collocation Decoy] Collocation Decoy: \"to efface some harm\" does not fit how \"bolster\" is used in this passage."},{"id":"B","text":"to weaken some harm","is_correct":false,"explanation":"[Flat Literal] Tone Inversion: \"to weaken some harm\" does not fit how \"bolster\" is used in this passage."},{"id":"C","text":"to uphold some harm","is_correct":true,"explanation":"Correct (C). \"bolster\" most nearly means \"to uphold some harm\" given the provisional context and semantic trigger in the passage."},{"id":"D","text":"to betray some harm","is_correct":false,"explanation":"[Tone Inversion] Flat Literal: \"to betray some harm\" does not fit how \"bolster\" is used in this passage."}]'::jsonb, 'C', 'Step 1 — Locate the word in context
Focus on {{yellow:audits.}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice C is correct: to uphold some harm.

Distractor analysis:
- A: [Collocation Decoy] Collocation Decoy: "to efface some harm" does not fit how "bolster" is used in this passage.
- B: [Flat Literal] Tone Inversion: "to weaken some harm" does not fit how "bolster" is used in this passage.
- D: [Tone Inversion] Flat Literal: "to betray some harm" does not fit how "bolster" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('22c2411a-150c-40ec-8a8e-d2acd971f426', 'As used in the passage, "ambiguous" most nearly means', 'Researchers studying ecosystem 174 documented that a ambiguous reading of the evidence a variable that field teams, trained on earlier protocols, prevented premature closure on the central claim. Contrary to expectations raised by the pilot study, analysts kept the interpretation ambiguous until replication arrived. The passage therefore uses "ambiguous" to signal provisional judgment rather than settled fact, which careful readers weigh against surrounding contextual cues.', 'passage', '[{"id":"A","text":"unclea in context","is_correct":true,"explanation":"Correct (A). \"ambiguous\" most nearly means \"unclea in context\" given the provisional context and semantic trigger in the passage."},{"id":"B","text":"sealed in context..","is_correct":false,"explanation":"[Collocation Decoy] Flat Literal: \"sealed in context..\" does not fit how \"ambiguous\" is used in this passage."},{"id":"C","text":"fictiv in context","is_correct":false,"explanation":"[Flat Literal] Collocation Decoy: \"fictiv in context\" does not fit how \"ambiguous\" is used in this passage."},{"id":"D","text":"obviou in context","is_correct":false,"explanation":"[Tone Inversion] Tone Inversion: \"obviou in context\" does not fit how \"ambiguous\" is used in this passage."}]'::jsonb, 'A', 'Step 1 — Locate the word in context
Focus on {{yellow:prevented}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice A is correct: unclea in context.

Distractor analysis:
- B: [Collocation Decoy] Flat Literal: "sealed in context.." does not fit how "ambiguous" is used in this passage.
- C: [Flat Literal] Collocation Decoy: "fictiv in context" does not fit how "ambiguous" is used in this passage.
- D: [Tone Inversion] Tone Inversion: "obviou in context" does not fit how "ambiguous" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8192ecc2-0035-47ad-b825-3014a718dc42', 'As used in the passage, "scrutinize" most nearly means', 'Policy analysts reviewing program 175 conclude that the team hoped to scrutinize the reputational harm whose status—debated in committee yet central to the grant renewal—would complicate later audits. Even though the headline result appeared straightforward, so only a response that could scrutinize the damage satisfied reviewers. Stakeholders therefore read "scrutinize" as describing deliberate moderation rather than passive delay, which careful readers weigh against surrounding contextual cues.', 'passage', '[{"id":"A","text":"to examin some harm","is_correct":true,"explanation":"Correct (A). \"scrutinize\" most nearly means \"to examin some harm\" given the provisional context and semantic trigger in the passage."},{"id":"B","text":"to praise some harm","is_correct":false,"explanation":"[Collocation Decoy] Flat Literal: \"to praise some harm\" does not fit how \"scrutinize\" is used in this passage."},{"id":"C","text":"to skim   some harm..","is_correct":false,"explanation":"[Flat Literal] Collocation Decoy: \"to skim   some harm..\" does not fit how \"scrutinize\" is used in this passage."},{"id":"D","text":"to ignore some harm","is_correct":false,"explanation":"[Tone Inversion] Tone Inversion: \"to ignore some harm\" does not fit how \"scrutinize\" is used in this passage."}]'::jsonb, 'A', 'Step 1 — Locate the word in context
Focus on {{yellow:complicate}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice A is correct: to examin some harm.

Distractor analysis:
- B: [Collocation Decoy] Flat Literal: "to praise some harm" does not fit how "scrutinize" is used in this passage.
- C: [Flat Literal] Collocation Decoy: "to skim   some harm.." does not fit how "scrutinize" is used in this passage.
- D: [Tone Inversion] Tone Inversion: "to ignore some harm" does not fit how "scrutinize" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7c6f210f-1656-496d-bebd-7efc4669b6b6', 'As used in the passage, "wan" most nearly means', 'The essayist in reflection 176 contends that a wan reading of the evidence a variable that field teams, trained on earlier protocols, prevented premature closure on the central claim. Although initial forecasts predicted the opposite trend, analysts kept the interpretation wan until replication arrived. The passage therefore uses "wan" to signal provisional judgment rather than settled fact, which careful readers weigh against surrounding contextual cues.', 'passage', '[{"id":"A","text":"famed  in context","is_correct":false,"explanation":"[Collocation Decoy] Collocation Decoy: \"famed  in context\" does not fit how \"wan\" is used in this passage."},{"id":"B","text":"hearty in context..","is_correct":false,"explanation":"[Flat Literal] Tone Inversion: \"hearty in context..\" does not fit how \"wan\" is used in this passage."},{"id":"C","text":"pallid in context","is_correct":true,"explanation":"Correct (C). \"wan\" most nearly means \"pallid in context\" given the provisional context and semantic trigger in the passage."},{"id":"D","text":"vivid  in context","is_correct":false,"explanation":"[Tone Inversion] Flat Literal: \"vivid  in context\" does not fit how \"wan\" is used in this passage."}]'::jsonb, 'C', 'Step 1 — Locate the word in context
Focus on {{yellow:premature}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice C is correct: pallid in context.

Distractor analysis:
- A: [Collocation Decoy] Collocation Decoy: "famed  in context" does not fit how "wan" is used in this passage.
- B: [Flat Literal] Tone Inversion: "hearty in context.." does not fit how "wan" is used in this passage.
- D: [Tone Inversion] Flat Literal: "vivid  in context" does not fit how "wan" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b9d75947-9472-4e98-9872-5c4696adf3e9', 'As used in the passage, "equivocal" most nearly means', 'Researchers studying ecosystem 177 documented that a equivocal reading of the evidence which, though buried in a technical appendix, prevented premature closure on the central claim. Rather than confirming what stakeholders had assumed, analysts kept the interpretation equivocal until replication arrived. The passage therefore uses "equivocal" to signal provisional judgment rather than settled fact, which careful readers weigh against surrounding contextual cues, a detail that narrows the word''s meaning without adding new claims.', 'passage', '[{"id":"A","text":"fictiv in context","is_correct":false,"explanation":"[Collocation Decoy] Collocation Decoy: \"fictiv in context\" does not fit how \"equivocal\" is used in this passage."},{"id":"B","text":"obviou in context","is_correct":false,"explanation":"[Flat Literal] Tone Inversion: \"obviou in context\" does not fit how \"equivocal\" is used in this passage."},{"id":"C","text":"unclea in context","is_correct":true,"explanation":"Correct (C). \"equivocal\" most nearly means \"unclea in context\" given the provisional context and semantic trigger in the passage."},{"id":"D","text":"sealed in context","is_correct":false,"explanation":"[Tone Inversion] Flat Literal: \"sealed in context\" does not fit how \"equivocal\" is used in this passage."}]'::jsonb, 'C', 'Step 1 — Locate the word in context
Focus on {{yellow:central}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice C is correct: unclea in context.

Distractor analysis:
- A: [Collocation Decoy] Collocation Decoy: "fictiv in context" does not fit how "equivocal" is used in this passage.
- B: [Flat Literal] Tone Inversion: "obviou in context" does not fit how "equivocal" is used in this passage.
- D: [Tone Inversion] Flat Literal: "sealed in context" does not fit how "equivocal" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('42edb59e-6626-46f7-9c2a-87355c91ad97', 'As used in the passage, "perfunctory" most nearly means', 'Policy analysts reviewing program 178 conclude that a perfunctory reading of the evidence whose status—debated in committee yet central to the grant renewal—prevented premature closure on the central claim. Yet reviewers noted the pattern held only under narrow conditions, analysts kept the interpretation perfunctory until replication arrived. The passage therefore uses "perfunctory" to signal provisional judgment rather than settled fact, which careful readers weigh against surrounding contextual cues.', 'passage', '[{"id":"A","text":"eager  in context","is_correct":false,"explanation":"[Collocation Decoy] Flat Literal: \"eager  in context\" does not fit how \"perfunctory\" is used in this passage."},{"id":"B","text":"lastin in context..","is_correct":false,"explanation":"[Flat Literal] Collocation Decoy: \"lastin in context..\" does not fit how \"perfunctory\" is used in this passage."},{"id":"C","text":"carefu in context","is_correct":false,"explanation":"[Tone Inversion] Tone Inversion: \"carefu in context\" does not fit how \"perfunctory\" is used in this passage."},{"id":"D","text":"cursor in context","is_correct":true,"explanation":"Correct (D). \"perfunctory\" most nearly means \"cursor in context\" given the provisional context and semantic trigger in the passage."}]'::jsonb, 'D', 'Step 1 — Locate the word in context
Focus on {{yellow:premature}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice D is correct: cursor in context.

Distractor analysis:
- A: [Collocation Decoy] Flat Literal: "eager  in context" does not fit how "perfunctory" is used in this passage.
- B: [Flat Literal] Collocation Decoy: "lastin in context.." does not fit how "perfunctory" is used in this passage.
- C: [Tone Inversion] Tone Inversion: "carefu in context" does not fit how "perfunctory" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('94face71-dcc3-4943-a85f-05b4d787e86d', 'As used in the passage, "sanguine" most nearly means', 'The essayist in reflection 179 contends that a sanguine reading of the evidence a variable that field teams, trained on earlier protocols, prevented premature closure on the central claim. Contrary to expectations raised by the pilot study, analysts kept the interpretation sanguine until replication arrived. The passage therefore uses "sanguine" to signal provisional judgment rather than settled fact, which careful readers weigh against surrounding contextual cues.', 'passage', '[{"id":"A","text":"aloof  in context","is_correct":false,"explanation":"[Collocation Decoy] Collocation Decoy: \"aloof  in context\" does not fit how \"sanguine\" is used in this passage."},{"id":"B","text":"gloomy in context..","is_correct":false,"explanation":"[Flat Literal] Tone Inversion: \"gloomy in context..\" does not fit how \"sanguine\" is used in this passage."},{"id":"C","text":"hopefu in context","is_correct":true,"explanation":"Correct (C). \"sanguine\" most nearly means \"hopefu in context\" given the provisional context and semantic trigger in the passage."},{"id":"D","text":"bloody in context","is_correct":false,"explanation":"[Tone Inversion] Flat Literal: \"bloody in context\" does not fit how \"sanguine\" is used in this passage."}]'::jsonb, 'C', 'Step 1 — Locate the word in context
Focus on {{yellow:prevented}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice C is correct: hopefu in context.

Distractor analysis:
- A: [Collocation Decoy] Collocation Decoy: "aloof  in context" does not fit how "sanguine" is used in this passage.
- B: [Flat Literal] Tone Inversion: "gloomy in context.." does not fit how "sanguine" is used in this passage.
- D: [Tone Inversion] Flat Literal: "bloody in context" does not fit how "sanguine" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('22e7d19a-1986-4331-970e-690d152779d1', 'As used in the passage, "obfuscate" most nearly means', 'Researchers studying ecosystem 180 documented that the team hoped to obfuscate the reputational harm whose status—debated in committee yet central to the grant renewal—would complicate later audits. Even though the headline result appeared straightforward, so only a response that could obfuscate the damage satisfied reviewers. Stakeholders therefore read "obfuscate" as describing deliberate moderation rather than passive delay, which careful readers weigh against surrounding contextual cues.', 'passage', '[{"id":"A","text":"to clarif some harm","is_correct":false,"explanation":"[Collocation Decoy] Tone Inversion: \"to clarif some harm\" does not fit how \"obfuscate\" is used in this passage."},{"id":"B","text":"to obscur some harm","is_correct":true,"explanation":"Correct (B). \"obfuscate\" most nearly means \"to obscur some harm\" given the provisional context and semantic trigger in the passage."},{"id":"C","text":"to praise some harm..","is_correct":false,"explanation":"[Flat Literal] Flat Literal: \"to praise some harm..\" does not fit how \"obfuscate\" is used in this passage."},{"id":"D","text":"to hard   some harm","is_correct":false,"explanation":"[Tone Inversion] Collocation Decoy: \"to hard   some harm\" does not fit how \"obfuscate\" is used in this passage."}]'::jsonb, 'B', 'Step 1 — Locate the word in context
Focus on {{yellow:complicate}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice B is correct: to obscur some harm.

Distractor analysis:
- A: [Collocation Decoy] Tone Inversion: "to clarif some harm" does not fit how "obfuscate" is used in this passage.
- C: [Flat Literal] Flat Literal: "to praise some harm.." does not fit how "obfuscate" is used in this passage.
- D: [Tone Inversion] Collocation Decoy: "to hard   some harm" does not fit how "obfuscate" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1561bc73-dc5c-48d2-90be-67e0a1aba706', 'As used in the passage, "laconic" most nearly means', 'Policy analysts reviewing program 181 conclude that a laconic reading of the evidence findings that resist neat categorization because prevented premature closure on the central claim. Although initial forecasts predicted the opposite trend, analysts kept the interpretation laconic until replication arrived. The passage therefore uses "laconic" to signal provisional judgment rather than settled fact, which careful readers weigh against surrounding contextual cues, a detail that narrows the word''s meaning without adding new claims.', 'passage', '[{"id":"A","text":"terse  in context","is_correct":true,"explanation":"Correct (A). \"laconic\" most nearly means \"terse  in context\" given the provisional context and semantic trigger in the passage."},{"id":"B","text":"greek  in context","is_correct":false,"explanation":"[Collocation Decoy] Flat Literal: \"greek  in context\" does not fit how \"laconic\" is used in this passage."},{"id":"C","text":"messy  in context","is_correct":false,"explanation":"[Flat Literal] Collocation Decoy: \"messy  in context\" does not fit how \"laconic\" is used in this passage."},{"id":"D","text":"wordy  in context","is_correct":false,"explanation":"[Tone Inversion] Tone Inversion: \"wordy  in context\" does not fit how \"laconic\" is used in this passage."}]'::jsonb, 'A', 'Step 1 — Locate the word in context
Focus on {{yellow:central}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice A is correct: terse  in context.

Distractor analysis:
- B: [Collocation Decoy] Flat Literal: "greek  in context" does not fit how "laconic" is used in this passage.
- C: [Flat Literal] Collocation Decoy: "messy  in context" does not fit how "laconic" is used in this passage.
- D: [Tone Inversion] Tone Inversion: "wordy  in context" does not fit how "laconic" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2757ef7d-1922-4e34-8851-2e1676a6d794', 'As used in the passage, "ephemeral" most nearly means', 'The essayist in reflection 182 contends that a ephemeral reading of the evidence a variable that field teams, trained on earlier protocols, prevented premature closure on the central claim. Rather than confirming what stakeholders had assumed, analysts kept the interpretation ephemeral until replication arrived. The passage therefore uses "ephemeral" to signal provisional judgment rather than settled fact, which careful readers weigh against surrounding contextual cues.', 'passage', '[{"id":"A","text":"brief  in context","is_correct":true,"explanation":"Correct (A). \"ephemeral\" most nearly means \"brief  in context\" given the provisional context and semantic trigger in the passage."},{"id":"B","text":"insect in context","is_correct":false,"explanation":"[Collocation Decoy] Flat Literal: \"insect in context\" does not fit how \"ephemeral\" is used in this passage."},{"id":"C","text":"famous in context","is_correct":false,"explanation":"[Flat Literal] Collocation Decoy: \"famous in context\" does not fit how \"ephemeral\" is used in this passage."},{"id":"D","text":"lastin in context..","is_correct":false,"explanation":"[Tone Inversion] Tone Inversion: \"lastin in context..\" does not fit how \"ephemeral\" is used in this passage."}]'::jsonb, 'A', 'Step 1 — Locate the word in context
Focus on {{yellow:premature}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice A is correct: brief  in context.

Distractor analysis:
- B: [Collocation Decoy] Flat Literal: "insect in context" does not fit how "ephemeral" is used in this passage.
- C: [Flat Literal] Collocation Decoy: "famous in context" does not fit how "ephemeral" is used in this passage.
- D: [Tone Inversion] Tone Inversion: "lastin in context.." does not fit how "ephemeral" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5247b454-1319-44c6-906f-a5c9a847c89a', 'As used in the passage, "intransigent" most nearly means', 'Researchers studying ecosystem 183 documented that a intransigent reading of the evidence a variable that field teams, trained on earlier protocols, prevented premature closure on the central claim. Yet reviewers noted the pattern held only under narrow conditions, analysts kept the interpretation intransigent until replication arrived. The passage therefore uses "intransigent" to signal provisional judgment rather than settled fact, which careful readers weigh against surrounding contextual cues.', 'passage', '[{"id":"A","text":"brief  in context","is_correct":false,"explanation":"[Collocation Decoy] Collocation Decoy: \"brief  in context\" does not fit how \"intransigent\" is used in this passage."},{"id":"B","text":"flexib in context","is_correct":false,"explanation":"[Flat Literal] Tone Inversion: \"flexib in context\" does not fit how \"intransigent\" is used in this passage."},{"id":"C","text":"stubbo in context","is_correct":true,"explanation":"Correct (C). \"intransigent\" most nearly means \"stubbo in context\" given the provisional context and semantic trigger in the passage."},{"id":"D","text":"logica in context..","is_correct":false,"explanation":"[Tone Inversion] Flat Literal: \"logica in context..\" does not fit how \"intransigent\" is used in this passage."}]'::jsonb, 'C', 'Step 1 — Locate the word in context
Focus on {{yellow:prevented}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice C is correct: stubbo in context.

Distractor analysis:
- A: [Collocation Decoy] Collocation Decoy: "brief  in context" does not fit how "intransigent" is used in this passage.
- B: [Flat Literal] Tone Inversion: "flexib in context" does not fit how "intransigent" is used in this passage.
- D: [Tone Inversion] Flat Literal: "logica in context.." does not fit how "intransigent" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('741b6c60-0918-4891-ac7f-859e2a1f93ba', 'As used in the passage, "profligate" most nearly means', 'Policy analysts reviewing program 184 conclude that a profligate reading of the evidence which, though buried in a technical appendix, prevented premature closure on the central claim. Contrary to expectations raised by the pilot study, analysts kept the interpretation profligate until replication arrived. The passage therefore uses "profligate" to signal provisional judgment rather than settled fact, which careful readers weigh against surrounding contextual cues, a detail that narrows the word''s meaning without adding new claims.', 'passage', '[{"id":"A","text":"skille in context","is_correct":false,"explanation":"[Collocation Decoy] Flat Literal: \"skille in context\" does not fit how \"profligate\" is used in this passage."},{"id":"B","text":"admire in context..","is_correct":false,"explanation":"[Flat Literal] Collocation Decoy: \"admire in context..\" does not fit how \"profligate\" is used in this passage."},{"id":"C","text":"frugal in context","is_correct":false,"explanation":"[Tone Inversion] Tone Inversion: \"frugal in context\" does not fit how \"profligate\" is used in this passage."},{"id":"D","text":"wastef in context","is_correct":true,"explanation":"Correct (D). \"profligate\" most nearly means \"wastef in context\" given the provisional context and semantic trigger in the passage."}]'::jsonb, 'D', 'Step 1 — Locate the word in context
Focus on {{yellow:closure}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice D is correct: wastef in context.

Distractor analysis:
- A: [Collocation Decoy] Flat Literal: "skille in context" does not fit how "profligate" is used in this passage.
- B: [Flat Literal] Collocation Decoy: "admire in context.." does not fit how "profligate" is used in this passage.
- C: [Tone Inversion] Tone Inversion: "frugal in context" does not fit how "profligate" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('39c3a537-2e28-402f-8f12-e15eefd5368e', 'As used in the passage, "surreptitious" most nearly means', 'The essayist in reflection 185 contends that a surreptitious reading of the evidence which, though buried in a technical appendix, prevented premature closure on the central claim. Even though the headline result appeared straightforward, analysts kept the interpretation surreptitious until replication arrived. The passage therefore uses "surreptitious" to signal provisional judgment rather than settled fact, which careful readers weigh against surrounding contextual cues, a detail that narrows the word''s meaning without adding new claims.', 'passage', '[{"id":"A","text":"stealt in context","is_correct":true,"explanation":"Correct (A). \"surreptitious\" most nearly means \"stealt in context\" given the provisional context and semantic trigger in the passage."},{"id":"B","text":"abrupt in context","is_correct":false,"explanation":"[Collocation Decoy] Flat Literal: \"abrupt in context\" does not fit how \"surreptitious\" is used in this passage."},{"id":"C","text":"legal  in context","is_correct":false,"explanation":"[Flat Literal] Collocation Decoy: \"legal  in context\" does not fit how \"surreptitious\" is used in this passage."},{"id":"D","text":"overt  in context","is_correct":false,"explanation":"[Tone Inversion] Tone Inversion: \"overt  in context\" does not fit how \"surreptitious\" is used in this passage."}]'::jsonb, 'A', 'Step 1 — Locate the word in context
Focus on {{yellow:central}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice A is correct: stealt in context.

Distractor analysis:
- B: [Collocation Decoy] Flat Literal: "abrupt in context" does not fit how "surreptitious" is used in this passage.
- C: [Flat Literal] Collocation Decoy: "legal  in context" does not fit how "surreptitious" is used in this passage.
- D: [Tone Inversion] Tone Inversion: "overt  in context" does not fit how "surreptitious" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('31ef4263-7d8d-4ce6-9f93-6b8add07825a', 'As used in the passage, "veracious" most nearly means', 'Researchers studying ecosystem 186 documented that a veracious reading of the evidence a variable that field teams, trained on earlier protocols, prevented premature closure on the central claim. Although initial forecasts predicted the opposite trend, analysts kept the interpretation veracious until replication arrived. The passage therefore uses "veracious" to signal provisional judgment rather than settled fact, which careful readers weigh against surrounding contextual cues, a detail that narrows the word''s meaning without adding new claims.', 'passage', '[{"id":"A","text":"hungry in context..","is_correct":false,"explanation":"[Collocation Decoy] Flat Literal: \"hungry in context..\" does not fit how \"veracious\" is used in this passage."},{"id":"B","text":"quick  in context","is_correct":false,"explanation":"[Flat Literal] Collocation Decoy: \"quick  in context\" does not fit how \"veracious\" is used in this passage."},{"id":"C","text":"false  in context","is_correct":false,"explanation":"[Tone Inversion] Tone Inversion: \"false  in context\" does not fit how \"veracious\" is used in this passage."},{"id":"D","text":"honest in context","is_correct":true,"explanation":"Correct (D). \"veracious\" most nearly means \"honest in context\" given the provisional context and semantic trigger in the passage."}]'::jsonb, 'D', 'Step 1 — Locate the word in context
Focus on {{yellow:closure}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice D is correct: honest in context.

Distractor analysis:
- A: [Collocation Decoy] Flat Literal: "hungry in context.." does not fit how "veracious" is used in this passage.
- B: [Flat Literal] Collocation Decoy: "quick  in context" does not fit how "veracious" is used in this passage.
- C: [Tone Inversion] Tone Inversion: "false  in context" does not fit how "veracious" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9e16926b-900d-4642-8d27-160fa0a18f5f', 'As used in the passage, "abstruse" most nearly means', 'Policy analysts reviewing program 187 conclude that a abstruse reading of the evidence a variable that field teams, trained on earlier protocols, prevented premature closure on the central claim. Rather than confirming what stakeholders had assumed, analysts kept the interpretation abstruse until replication arrived. The passage therefore uses "abstruse" to signal provisional judgment rather than settled fact, which careful readers weigh against surrounding contextual cues.', 'passage', '[{"id":"A","text":"remote in context","is_correct":false,"explanation":"[Collocation Decoy] Flat Literal: \"remote in context\" does not fit how \"abstruse\" is used in this passage."},{"id":"B","text":"known  in context..","is_correct":false,"explanation":"[Flat Literal] Collocation Decoy: \"known  in context..\" does not fit how \"abstruse\" is used in this passage."},{"id":"C","text":"plain  in context","is_correct":false,"explanation":"[Tone Inversion] Tone Inversion: \"plain  in context\" does not fit how \"abstruse\" is used in this passage."},{"id":"D","text":"obscur in context","is_correct":true,"explanation":"Correct (D). \"abstruse\" most nearly means \"obscur in context\" given the provisional context and semantic trigger in the passage."}]'::jsonb, 'D', 'Step 1 — Locate the word in context
Focus on {{yellow:prevented}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice D is correct: obscur in context.

Distractor analysis:
- A: [Collocation Decoy] Flat Literal: "remote in context" does not fit how "abstruse" is used in this passage.
- B: [Flat Literal] Collocation Decoy: "known  in context.." does not fit how "abstruse" is used in this passage.
- C: [Tone Inversion] Tone Inversion: "plain  in context" does not fit how "abstruse" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9396851e-7213-435d-96bf-c9bc8fc00722', 'As used in the passage, "capricious" most nearly means', 'The essayist in reflection 188 contends that a capricious reading of the evidence which, though buried in a technical appendix, prevented premature closure on the central claim. Yet reviewers noted the pattern held only under narrow conditions, analysts kept the interpretation capricious until replication arrived. The passage therefore uses "capricious" to signal provisional judgment rather than settled fact, which careful readers weigh against surrounding contextual cues.', 'passage', '[{"id":"A","text":"formal in context","is_correct":false,"explanation":"[Collocation Decoy] Collocation Decoy: \"formal in context\" does not fit how \"capricious\" is used in this passage."},{"id":"B","text":"steady in context..","is_correct":false,"explanation":"[Flat Literal] Tone Inversion: \"steady in context..\" does not fit how \"capricious\" is used in this passage."},{"id":"C","text":"fickle in context","is_correct":true,"explanation":"Correct (C). \"capricious\" most nearly means \"fickle in context\" given the provisional context and semantic trigger in the passage."},{"id":"D","text":"goatis in context","is_correct":false,"explanation":"[Tone Inversion] Flat Literal: \"goatis in context\" does not fit how \"capricious\" is used in this passage."}]'::jsonb, 'C', 'Step 1 — Locate the word in context
Focus on {{yellow:closure}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice C is correct: fickle in context.

Distractor analysis:
- A: [Collocation Decoy] Collocation Decoy: "formal in context" does not fit how "capricious" is used in this passage.
- B: [Flat Literal] Tone Inversion: "steady in context.." does not fit how "capricious" is used in this passage.
- D: [Tone Inversion] Flat Literal: "goatis in context" does not fit how "capricious" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9c55ac9e-9e42-477c-9bd6-85635df3a620', 'As used in the passage, "didactic" most nearly means', 'Researchers studying ecosystem 189 documented that a didactic reading of the evidence whose status—debated in committee yet central to the grant renewal—prevented premature closure on the central claim. Contrary to expectations raised by the pilot study, analysts kept the interpretation didactic until replication arrived. The passage therefore uses "didactic" to signal provisional judgment rather than settled fact, which careful readers weigh against surrounding contextual cues.', 'passage', '[{"id":"A","text":"teachy in context","is_correct":true,"explanation":"Correct (A). \"didactic\" most nearly means \"teachy in context\" given the provisional context and semantic trigger in the passage."},{"id":"B","text":"medica in context","is_correct":false,"explanation":"[Collocation Decoy] Flat Literal: \"medica in context\" does not fit how \"didactic\" is used in this passage."},{"id":"C","text":"hidden in context","is_correct":false,"explanation":"[Flat Literal] Collocation Decoy: \"hidden in context\" does not fit how \"didactic\" is used in this passage."},{"id":"D","text":"funny  in context","is_correct":false,"explanation":"[Tone Inversion] Tone Inversion: \"funny  in context\" does not fit how \"didactic\" is used in this passage."}]'::jsonb, 'A', 'Step 1 — Locate the word in context
Focus on {{yellow:renewal—prevented}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice A is correct: teachy in context.

Distractor analysis:
- B: [Collocation Decoy] Flat Literal: "medica in context" does not fit how "didactic" is used in this passage.
- C: [Flat Literal] Collocation Decoy: "hidden in context" does not fit how "didactic" is used in this passage.
- D: [Tone Inversion] Tone Inversion: "funny  in context" does not fit how "didactic" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1a34cf2e-aaa9-4905-be9f-98f116e45ebc', 'As used in the passage, "fastidious" most nearly means', 'Policy analysts reviewing program 190 conclude that a fastidious reading of the evidence findings that resist neat categorization because prevented premature closure on the central claim. Even though the headline result appeared straightforward, analysts kept the interpretation fastidious until replication arrived. The passage therefore uses "fastidious" to signal provisional judgment rather than settled fact, which careful readers weigh against surrounding contextual cues, a detail that narrows the word''s meaning without adding new claims.', 'passage', '[{"id":"A","text":"hasty  in context..","is_correct":false,"explanation":"[Collocation Decoy] Collocation Decoy: \"hasty  in context..\" does not fit how \"fastidious\" is used in this passage."},{"id":"B","text":"messy  in context","is_correct":false,"explanation":"[Flat Literal] Tone Inversion: \"messy  in context\" does not fit how \"fastidious\" is used in this passage."},{"id":"C","text":"exact  in context","is_correct":true,"explanation":"Correct (C). \"fastidious\" most nearly means \"exact  in context\" given the provisional context and semantic trigger in the passage."},{"id":"D","text":"hungry in context","is_correct":false,"explanation":"[Tone Inversion] Flat Literal: \"hungry in context\" does not fit how \"fastidious\" is used in this passage."}]'::jsonb, 'C', 'Step 1 — Locate the word in context
Focus on {{yellow:closure}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice C is correct: exact  in context.

Distractor analysis:
- A: [Collocation Decoy] Collocation Decoy: "hasty  in context.." does not fit how "fastidious" is used in this passage.
- B: [Flat Literal] Tone Inversion: "messy  in context" does not fit how "fastidious" is used in this passage.
- D: [Tone Inversion] Flat Literal: "hungry in context" does not fit how "fastidious" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1688c0c2-84a4-43cd-a0fe-37976436f580', 'As used in the passage, "garrulous" most nearly means', 'The essayist in reflection 191 contends that a garrulous reading of the evidence findings that resist neat categorization because prevented premature closure on the central claim. Although initial forecasts predicted the opposite trend, analysts kept the interpretation garrulous until replication arrived. The passage therefore uses "garrulous" to signal provisional judgment rather than settled fact, which careful readers weigh against surrounding contextual cues, a detail that narrows the word''s meaning without adding new claims.', 'passage', '[{"id":"A","text":"avian  in context","is_correct":false,"explanation":"[Collocation Decoy] Flat Literal: \"avian  in context\" does not fit how \"garrulous\" is used in this passage."},{"id":"B","text":"stiff  in context","is_correct":false,"explanation":"[Flat Literal] Collocation Decoy: \"stiff  in context\" does not fit how \"garrulous\" is used in this passage."},{"id":"C","text":"quiet  in context..","is_correct":false,"explanation":"[Tone Inversion] Tone Inversion: \"quiet  in context..\" does not fit how \"garrulous\" is used in this passage."},{"id":"D","text":"talky  in context","is_correct":true,"explanation":"Correct (D). \"garrulous\" most nearly means \"talky  in context\" given the provisional context and semantic trigger in the passage."}]'::jsonb, 'D', 'Step 1 — Locate the word in context
Focus on {{yellow:central}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice D is correct: talky  in context.

Distractor analysis:
- A: [Collocation Decoy] Flat Literal: "avian  in context" does not fit how "garrulous" is used in this passage.
- B: [Flat Literal] Collocation Decoy: "stiff  in context" does not fit how "garrulous" is used in this passage.
- C: [Tone Inversion] Tone Inversion: "quiet  in context.." does not fit how "garrulous" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('041e8d07-c9e1-46af-bf66-3636df9d3654', 'As used in the passage, "mitigate" most nearly means', 'Researchers studying ecosystem 192 documented that the team hoped to mitigate the reputational harm findings that resist neat categorization because would complicate later audits. Rather than confirming what stakeholders had assumed, so only a response that could mitigate the damage satisfied reviewers. Stakeholders therefore read "mitigate" as describing deliberate moderation rather than passive delay, which careful readers weigh against surrounding contextual cues, a detail that narrows the word''s meaning without adding new claims.', 'passage', '[{"id":"A","text":"to spread some harm","is_correct":false,"explanation":"[Collocation Decoy] Collocation Decoy: \"to spread some harm\" does not fit how \"mitigate\" is used in this passage."},{"id":"B","text":"to worsen some harm","is_correct":false,"explanation":"[Flat Literal] Tone Inversion: \"to worsen some harm\" does not fit how \"mitigate\" is used in this passage."},{"id":"C","text":"to lessen some harm","is_correct":true,"explanation":"Correct (C). \"mitigate\" most nearly means \"to lessen some harm\" given the provisional context and semantic trigger in the passage."},{"id":"D","text":"to ignore some harm..","is_correct":false,"explanation":"[Tone Inversion] Flat Literal: \"to ignore some harm..\" does not fit how \"mitigate\" is used in this passage."}]'::jsonb, 'C', 'Step 1 — Locate the word in context
Focus on {{yellow:confirming}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice C is correct: to lessen some harm.

Distractor analysis:
- A: [Collocation Decoy] Collocation Decoy: "to spread some harm" does not fit how "mitigate" is used in this passage.
- B: [Flat Literal] Tone Inversion: "to worsen some harm" does not fit how "mitigate" is used in this passage.
- D: [Tone Inversion] Flat Literal: "to ignore some harm.." does not fit how "mitigate" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9040dc5d-f2f5-410d-9d34-be659f52efa9', 'As used in the passage, "tenuous" most nearly means', 'Policy analysts reviewing program 193 conclude that a tenuous reading of the evidence findings that resist neat categorization because prevented premature closure on the central claim. Yet reviewers noted the pattern held only under narrow conditions, analysts kept the interpretation tenuous until replication arrived. The passage therefore uses "tenuous" to signal provisional judgment rather than settled fact, which careful readers weigh against surrounding contextual cues.', 'passage', '[{"id":"A","text":"sealed in context","is_correct":false,"explanation":"[Collocation Decoy] Flat Literal: \"sealed in context\" does not fit how \"tenuous\" is used in this passage."},{"id":"B","text":"brazen in context","is_correct":false,"explanation":"[Flat Literal] Collocation Decoy: \"brazen in context\" does not fit how \"tenuous\" is used in this passage."},{"id":"C","text":"proven in context","is_correct":false,"explanation":"[Tone Inversion] Tone Inversion: \"proven in context\" does not fit how \"tenuous\" is used in this passage."},{"id":"D","text":"feeble in context","is_correct":true,"explanation":"Correct (D). \"tenuous\" most nearly means \"feeble in context\" given the provisional context and semantic trigger in the passage."}]'::jsonb, 'D', 'Step 1 — Locate the word in context
Focus on {{yellow:premature}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice D is correct: feeble in context.

Distractor analysis:
- A: [Collocation Decoy] Flat Literal: "sealed in context" does not fit how "tenuous" is used in this passage.
- B: [Flat Literal] Collocation Decoy: "brazen in context" does not fit how "tenuous" is used in this passage.
- C: [Tone Inversion] Tone Inversion: "proven in context" does not fit how "tenuous" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('60370d67-cc60-4f7d-a37a-91fd19577561', 'As used in the passage, "bolster" most nearly means', 'The essayist in reflection 194 contends that the team hoped to bolster the reputational harm whose status—debated in committee yet central to the grant renewal—would complicate later audits. Contrary to expectations raised by the pilot study, so only a response that could bolster the damage satisfied reviewers. Stakeholders therefore read "bolster" as describing deliberate moderation rather than passive delay, which careful readers weigh against surrounding contextual cues.', 'passage', '[{"id":"A","text":"to weaken some harm..","is_correct":false,"explanation":"[Collocation Decoy] Tone Inversion: \"to weaken some harm..\" does not fit how \"bolster\" is used in this passage."},{"id":"B","text":"to uphold some harm","is_correct":true,"explanation":"Correct (B). \"bolster\" most nearly means \"to uphold some harm\" given the provisional context and semantic trigger in the passage."},{"id":"C","text":"to betray some harm","is_correct":false,"explanation":"[Flat Literal] Flat Literal: \"to betray some harm\" does not fit how \"bolster\" is used in this passage."},{"id":"D","text":"to efface some harm","is_correct":false,"explanation":"[Tone Inversion] Collocation Decoy: \"to efface some harm\" does not fit how \"bolster\" is used in this passage."}]'::jsonb, 'B', 'Step 1 — Locate the word in context
Focus on {{yellow:complicate}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice B is correct: to uphold some harm.

Distractor analysis:
- A: [Collocation Decoy] Tone Inversion: "to weaken some harm.." does not fit how "bolster" is used in this passage.
- C: [Flat Literal] Flat Literal: "to betray some harm" does not fit how "bolster" is used in this passage.
- D: [Tone Inversion] Collocation Decoy: "to efface some harm" does not fit how "bolster" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e279a027-f949-407f-a500-d3fd52f00997', 'As used in the passage, "ambiguous" most nearly means', 'Researchers studying ecosystem 195 documented that a ambiguous reading of the evidence findings that resist neat categorization because prevented premature closure on the central claim. Even though the headline result appeared straightforward, analysts kept the interpretation ambiguous until replication arrived. The passage therefore uses "ambiguous" to signal provisional judgment rather than settled fact, which careful readers weigh against surrounding contextual cues, a detail that narrows the word''s meaning without adding new claims.', 'passage', '[{"id":"A","text":"unclea in context","is_correct":true,"explanation":"Correct (A). \"ambiguous\" most nearly means \"unclea in context\" given the provisional context and semantic trigger in the passage."},{"id":"B","text":"sealed in context..","is_correct":false,"explanation":"[Collocation Decoy] Flat Literal: \"sealed in context..\" does not fit how \"ambiguous\" is used in this passage."},{"id":"C","text":"fictiv in context","is_correct":false,"explanation":"[Flat Literal] Collocation Decoy: \"fictiv in context\" does not fit how \"ambiguous\" is used in this passage."},{"id":"D","text":"obviou in context","is_correct":false,"explanation":"[Tone Inversion] Tone Inversion: \"obviou in context\" does not fit how \"ambiguous\" is used in this passage."}]'::jsonb, 'A', 'Step 1 — Locate the word in context
Focus on {{yellow:closure}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice A is correct: unclea in context.

Distractor analysis:
- B: [Collocation Decoy] Flat Literal: "sealed in context.." does not fit how "ambiguous" is used in this passage.
- C: [Flat Literal] Collocation Decoy: "fictiv in context" does not fit how "ambiguous" is used in this passage.
- D: [Tone Inversion] Tone Inversion: "obviou in context" does not fit how "ambiguous" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9737eca8-3095-4358-a57b-cd6b7c892f9c', 'As used in the passage, "scrutinize" most nearly means', 'Policy analysts reviewing program 196 conclude that the team hoped to scrutinize the reputational harm which, though buried in a technical appendix, would complicate later audits. Although initial forecasts predicted the opposite trend, so only a response that could scrutinize the damage satisfied reviewers. Stakeholders therefore read "scrutinize" as describing deliberate moderation rather than passive delay, which careful readers weigh against surrounding contextual cues, a detail that narrows the word''s meaning without adding new claims.', 'passage', '[{"id":"A","text":"to skim   some harm..","is_correct":false,"explanation":"[Collocation Decoy] Collocation Decoy: \"to skim   some harm..\" does not fit how \"scrutinize\" is used in this passage."},{"id":"B","text":"to ignore some harm","is_correct":false,"explanation":"[Flat Literal] Tone Inversion: \"to ignore some harm\" does not fit how \"scrutinize\" is used in this passage."},{"id":"C","text":"to examin some harm","is_correct":true,"explanation":"Correct (C). \"scrutinize\" most nearly means \"to examin some harm\" given the provisional context and semantic trigger in the passage."},{"id":"D","text":"to praise some harm","is_correct":false,"explanation":"[Tone Inversion] Flat Literal: \"to praise some harm\" does not fit how \"scrutinize\" is used in this passage."}]'::jsonb, 'C', 'Step 1 — Locate the word in context
Focus on {{yellow:initial}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice C is correct: to examin some harm.

Distractor analysis:
- A: [Collocation Decoy] Collocation Decoy: "to skim   some harm.." does not fit how "scrutinize" is used in this passage.
- B: [Flat Literal] Tone Inversion: "to ignore some harm" does not fit how "scrutinize" is used in this passage.
- D: [Tone Inversion] Flat Literal: "to praise some harm" does not fit how "scrutinize" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c98d6785-ce56-44b6-aaaf-b3238a5eddc0', 'As used in the passage, "wan" most nearly means', 'The essayist in reflection 197 contends that a wan reading of the evidence findings that resist neat categorization because prevented premature closure on the central claim. Rather than confirming what stakeholders had assumed, analysts kept the interpretation wan until replication arrived. The passage therefore uses "wan" to signal provisional judgment rather than settled fact, which careful readers weigh against surrounding contextual cues, a detail that narrows the word''s meaning without adding new claims.', 'passage', '[{"id":"A","text":"pallid in context","is_correct":true,"explanation":"Correct (A). \"wan\" most nearly means \"pallid in context\" given the provisional context and semantic trigger in the passage."},{"id":"B","text":"vivid  in context","is_correct":false,"explanation":"[Collocation Decoy] Flat Literal: \"vivid  in context\" does not fit how \"wan\" is used in this passage."},{"id":"C","text":"famed  in context","is_correct":false,"explanation":"[Flat Literal] Collocation Decoy: \"famed  in context\" does not fit how \"wan\" is used in this passage."},{"id":"D","text":"hearty in context","is_correct":false,"explanation":"[Tone Inversion] Tone Inversion: \"hearty in context\" does not fit how \"wan\" is used in this passage."}]'::jsonb, 'A', 'Step 1 — Locate the word in context
Focus on {{yellow:central}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice A is correct: pallid in context.

Distractor analysis:
- B: [Collocation Decoy] Flat Literal: "vivid  in context" does not fit how "wan" is used in this passage.
- C: [Flat Literal] Collocation Decoy: "famed  in context" does not fit how "wan" is used in this passage.
- D: [Tone Inversion] Tone Inversion: "hearty in context" does not fit how "wan" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fe6ec98c-503c-4e3d-9cd1-1cbab1ef8e38', 'As used in the passage, "equivocal" most nearly means', 'Researchers studying ecosystem 198 documented that a equivocal reading of the evidence a variable that field teams, trained on earlier protocols, prevented premature closure on the central claim. Yet reviewers noted the pattern held only under narrow conditions, analysts kept the interpretation equivocal until replication arrived. The passage therefore uses "equivocal" to signal provisional judgment rather than settled fact, which careful readers weigh against surrounding contextual cues.', 'passage', '[{"id":"A","text":"unclea in context","is_correct":true,"explanation":"Correct (A). \"equivocal\" most nearly means \"unclea in context\" given the provisional context and semantic trigger in the passage."},{"id":"B","text":"sealed in context..","is_correct":false,"explanation":"[Collocation Decoy] Flat Literal: \"sealed in context..\" does not fit how \"equivocal\" is used in this passage."},{"id":"C","text":"fictiv in context","is_correct":false,"explanation":"[Flat Literal] Collocation Decoy: \"fictiv in context\" does not fit how \"equivocal\" is used in this passage."},{"id":"D","text":"obviou in context","is_correct":false,"explanation":"[Tone Inversion] Tone Inversion: \"obviou in context\" does not fit how \"equivocal\" is used in this passage."}]'::jsonb, 'A', 'Step 1 — Locate the word in context
Focus on {{yellow:prevented}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice A is correct: unclea in context.

Distractor analysis:
- B: [Collocation Decoy] Flat Literal: "sealed in context.." does not fit how "equivocal" is used in this passage.
- C: [Flat Literal] Collocation Decoy: "fictiv in context" does not fit how "equivocal" is used in this passage.
- D: [Tone Inversion] Tone Inversion: "obviou in context" does not fit how "equivocal" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1d663b74-a239-41f2-a993-424e6d347643', 'As used in the passage, "perfunctory" most nearly means', 'Policy analysts reviewing program 199 conclude that a perfunctory reading of the evidence which, though buried in a technical appendix, prevented premature closure on the central claim. Contrary to expectations raised by the pilot study, analysts kept the interpretation perfunctory until replication arrived. The passage therefore uses "perfunctory" to signal provisional judgment rather than settled fact, which careful readers weigh against surrounding contextual cues, a detail that narrows the word''s meaning without adding new claims.', 'passage', '[{"id":"A","text":"lastin in context..","is_correct":false,"explanation":"[Collocation Decoy] Collocation Decoy: \"lastin in context..\" does not fit how \"perfunctory\" is used in this passage."},{"id":"B","text":"carefu in context","is_correct":false,"explanation":"[Flat Literal] Tone Inversion: \"carefu in context\" does not fit how \"perfunctory\" is used in this passage."},{"id":"C","text":"cursor in context","is_correct":true,"explanation":"Correct (C). \"perfunctory\" most nearly means \"cursor in context\" given the provisional context and semantic trigger in the passage."},{"id":"D","text":"eager  in context","is_correct":false,"explanation":"[Tone Inversion] Flat Literal: \"eager  in context\" does not fit how \"perfunctory\" is used in this passage."}]'::jsonb, 'C', 'Step 1 — Locate the word in context
Focus on {{yellow:closure}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice C is correct: cursor in context.

Distractor analysis:
- A: [Collocation Decoy] Collocation Decoy: "lastin in context.." does not fit how "perfunctory" is used in this passage.
- B: [Flat Literal] Tone Inversion: "carefu in context" does not fit how "perfunctory" is used in this passage.
- D: [Tone Inversion] Flat Literal: "eager  in context" does not fit how "perfunctory" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('dcec7b71-2075-423f-9c7c-3ab0268563e5', 'As used in the passage, "sanguine" most nearly means', 'The essayist in reflection 200 contends that a sanguine reading of the evidence findings that resist neat categorization because prevented premature closure on the central claim. Even though the headline result appeared straightforward, analysts kept the interpretation sanguine until replication arrived. The passage therefore uses "sanguine" to signal provisional judgment rather than settled fact, which careful readers weigh against surrounding contextual cues, a detail that narrows the word''s meaning without adding new claims.', 'passage', '[{"id":"A","text":"hopefu in context","is_correct":true,"explanation":"Correct (A). \"sanguine\" most nearly means \"hopefu in context\" given the provisional context and semantic trigger in the passage."},{"id":"B","text":"bloody in context","is_correct":false,"explanation":"[Collocation Decoy] Flat Literal: \"bloody in context\" does not fit how \"sanguine\" is used in this passage."},{"id":"C","text":"aloof  in context","is_correct":false,"explanation":"[Flat Literal] Collocation Decoy: \"aloof  in context\" does not fit how \"sanguine\" is used in this passage."},{"id":"D","text":"gloomy in context..","is_correct":false,"explanation":"[Tone Inversion] Tone Inversion: \"gloomy in context..\" does not fit how \"sanguine\" is used in this passage."}]'::jsonb, 'A', 'Step 1 — Locate the word in context
Focus on {{yellow:central}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice A is correct: hopefu in context.

Distractor analysis:
- B: [Collocation Decoy] Flat Literal: "bloody in context" does not fit how "sanguine" is used in this passage.
- C: [Flat Literal] Collocation Decoy: "aloof  in context" does not fit how "sanguine" is used in this passage.
- D: [Tone Inversion] Tone Inversion: "gloomy in context.." does not fit how "sanguine" is used in this passage.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"vocabulary_in_context","dsat_blueprint_v1":true,"rw_format":"passage_mc","generator":"regenerate-english-fresh.mjs","master_manual_section":"WIC-1","regen_at":"2026-06-13","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
COMMIT;
