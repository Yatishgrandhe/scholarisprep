INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5900d5e2-99b7-4bd5-b3f8-3a8bac006d16', 'The student wants to describe the mutually beneficial relationship between coral and algae. Which choice most effectively uses information from the notes to accomplish this goal?', 'Coral Reefs and Algae
- Coral reefs are built by tiny animals called coral polyps.
- Many polyps host microscopic algae that live inside their tissues.
- The algae use sunlight to make sugars, which they share with the coral.
- In return, the coral provides the algae with a sheltered place to live.
- When ocean temperatures rise too high, corals expel the algae and may turn white.', NULL, '[{"id":"A","text":"Coral reefs are built by tiny animals called coral polyps.","is_correct":false,"explanation":"This identifies what builds reefs but says nothing about the coral-algae relationship."},{"id":"B","text":"The algae use sunlight to make sugars, which they share with the coral, and in return the coral provides the algae with a sheltered place to live.","is_correct":true,"explanation":"This states both sides of the exchange, capturing the mutual benefit between coral and algae."},{"id":"C","text":"When ocean temperatures rise too high, corals expel the algae and may turn white.","is_correct":false,"explanation":"This describes the breakdown of the relationship rather than its mutual benefits."},{"id":"D","text":"Many coral polyps host microscopic algae that live inside their tissues.","is_correct":false,"explanation":"This notes that algae live in the coral but does not describe the benefits each provides."}]'::jsonb, 'B', 'Step 1 — Find both benefits
The notes say the algae share sugars and {{yellow:the coral provides the algae with a sheltered place to live}}.
Step 2 — Match the goal
A mutually beneficial relationship requires both sides, so the correct choice must state each one''s contribution, which choice B does.
Distractor analysis:
- A: Identifies reef-builders, not the relationship.
- C: Describes the relationship breaking down, not its benefits.
- D: Notes the algae''s location but only one half, without the exchange.', 'Mutual benefit means you must mention what each side gives the other.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;