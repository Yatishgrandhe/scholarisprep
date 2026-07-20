-- Fast AP/IB Forms A–J assembly under anon/authenticated.
-- JSONB filters on source_metadata->>form_letter time out under RLS (enum
-- exam_type not pushed into index seeks). Mirror the platform-bank RPC pattern.

CREATE INDEX IF NOT EXISTS questions_full_exam_form_exam_idx
  ON public.questions (exam_type, id)
  WHERE source = 'full_exam_form';

CREATE INDEX IF NOT EXISTS questions_full_exam_form_letter_idx
  ON public.questions (
    exam_type,
    ((source_metadata ->> 'form_letter'::text)),
    ((source_metadata ->> 'module_key'::text)),
    ((source_metadata ->> 'slot'::text))
  )
  WHERE source = 'full_exam_form';

CREATE OR REPLACE FUNCTION public.list_full_exam_form_question_ids(
  p_exam_type text,
  p_form_letter text
)
RETURNS TABLE(id uuid, module_key text, slot integer)
LANGUAGE sql
STABLE
SECURITY DEFINER
SET search_path TO 'public'
SET row_security TO 'off'
AS $$
  SELECT
    q.id,
    NULLIF(trim(q.source_metadata ->> 'module_key'), '') AS module_key,
    COALESCE(
      NULLIF(trim(q.source_metadata ->> 'slot'), '')::integer,
      0
    ) AS slot
  FROM public.questions q
  WHERE q.source = 'full_exam_form'
    AND q.exam_type = p_exam_type::public.exam_type
    AND upper(trim(COALESCE(q.source_metadata ->> 'form_letter', ''))) =
      upper(trim(COALESCE(p_form_letter, '')))
  ORDER BY
    NULLIF(trim(q.source_metadata ->> 'module_key'), ''),
    COALESCE(
      NULLIF(trim(q.source_metadata ->> 'slot'), '')::integer,
      0
    ),
    q.id;
$$;

REVOKE ALL ON FUNCTION public.list_full_exam_form_question_ids(text, text) FROM PUBLIC;
GRANT EXECUTE ON FUNCTION public.list_full_exam_form_question_ids(text, text) TO anon, authenticated;
