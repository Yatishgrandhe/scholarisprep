-- Optional FRQ/SAQ subtype for AP/IB grading.
-- Client SELECTs omit this column until the migration is applied (PostgREST 400
-- on unknown columns otherwise breaks Question Bank Start hydration).
ALTER TABLE public.questions
  ADD COLUMN IF NOT EXISTS question_subtype text;

COMMENT ON COLUMN public.questions.question_subtype IS
  'Optional FRQ/SAQ subtype (e.g. saq, dbq, leq) for AP/IB grading.';
