-- Delete all SAT RW platform questions (math untouched)
BEGIN;
DELETE FROM public.questions
WHERE exam_type = 'SAT'
  AND section = 'reading_writing'
  AND is_platform_question = true;
COMMIT;
