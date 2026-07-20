BEGIN;
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Nevertheless, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (Nevertheless,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'ef6d5d3c-f408-4c6d-82b0-8433e45f0da7';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"However,","is_correct":true,"explanation":"However, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (However,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'bc119a6a-f486-498f-9f3f-e1f4294017bb';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Nevertheless, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (Nevertheless,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'a6abb248-62b7-4b2d-a452-0347b660ac78';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"However,","is_correct":true,"explanation":"However, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (However,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '8e4637b8-540c-4949-88e8-6e7e58abeefc';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Nevertheless, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (Nevertheless,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '62ef9f7f-dddb-4868-93a6-d638d51f19ad';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"However,","is_correct":true,"explanation":"However, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (However,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'f701d3c2-aa06-4a59-a70e-80d136a17db3';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Nevertheless, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (Nevertheless,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '4b23e239-ecaa-42f1-8c65-16fae7821d03';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"However,","is_correct":true,"explanation":"However, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (However,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '5c7208c9-9a22-4396-a6a8-b8b439c17a7b';
COMMIT;
