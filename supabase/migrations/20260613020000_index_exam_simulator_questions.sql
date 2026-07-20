-- Practice Exam questions are is_platform_question=false, so they are excluded
-- from the source/pool partial index. Exam assembly filters
-- source='exam_simulator' + source_metadata->>'simulator_form' +
-- source_metadata->>'module_key', which previously did 6 full-table scans of the
-- whole questions table per exam start -> slow loads and intermittent timeouts.
-- Index the form/module lookup so exam assembly is an index scan.
CREATE INDEX IF NOT EXISTS idx_questions_exam_simulator
  ON public.questions (
    (source_metadata->>'simulator_form'),
    (source_metadata->>'module_key')
  )
  WHERE source = 'exam_simulator';
