BEGIN;
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Nevertheless, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (Nevertheless,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '0b139e30-4f6a-468f-977f-343eef96686f';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"However,","is_correct":true,"explanation":"However, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (However,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'eef07589-6f4e-49f5-985d-1a80cf76639e';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Nevertheless, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (Nevertheless,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '2f8045ae-c30b-4ab2-a65a-73f87a0bd1cd';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"However,","is_correct":true,"explanation":"However, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (However,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '5d0b04b1-eedd-45f8-824f-261e430fdcc4';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Nevertheless, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (Nevertheless,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'dd8eb033-31bd-4e8a-b7c5-e66bc2622615';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = NULL,
  options = '[{"id":"A","text":"However,","is_correct":true,"explanation":"However, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (However,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'b22b5ff8-0e79-4853-add7-bcd25c73c744';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"Nevertheless,","is_correct":true,"explanation":"Nevertheless, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Thus,","is_correct":false,"explanation":"Thus, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Meanwhile,","is_correct":false,"explanation":"Meanwhile, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"In contrast,","is_correct":false,"explanation":"In contrast, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (Nevertheless,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = 'b09700d3-a279-452f-9d0e-1f1270c8a61b';
UPDATE public.questions SET
  stimulus_text = 'The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers'' hypothesis.',
  question_text = 'Which choice completes the text with the most logical transition?',
  stimulus_type = 'passage',
  options = '[{"id":"A","text":"However,","is_correct":true,"explanation":"However, signals contrast between the failed first trial and the clearer second trial, matching the sentence logic."},{"id":"B","text":"Therefore,","is_correct":false,"explanation":"Therefore, implies direct consequence rather than contrast between two different trial outcomes."},{"id":"C","text":"Similarly,","is_correct":false,"explanation":"Similarly, suggests simultaneity or parallel addition where the passage compares sequential results."},{"id":"D","text":"For example,","is_correct":false,"explanation":"For example, would introduce an example or mismatched relation instead of contrasting outcomes."}]'::jsonb,
  correct_answer = 'A',
  explanation = 'A contrast transition (However,) links a failed trial to a later successful one. The passage sets up opposition between "failed to detect" and "showed a clear pattern," so the blank must signal contrast rather than cause, addition, or illustration alone.',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"english_content_v2":true,"english_content_upgraded_at":"2026-06-12T20:01:56.879Z","english_content_upgrade_method":"upgrade-english-content.mjs"}'::jsonb,
  updated_at = now()
WHERE id = '3640a500-d4ec-43a9-83b8-68c3823dce59';
COMMIT;
