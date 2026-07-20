-- Free Studying / Whiteboard insert context_type = 'free_study', but the
-- existing CHECK only allowed exam_prep|lesson|question|general → PostgREST 400
-- on Prefer: return=representation (visible as tutor_conversations?select=id).
ALTER TABLE public.tutor_conversations
  DROP CONSTRAINT IF EXISTS tutor_conversations_context_type_check;

ALTER TABLE public.tutor_conversations
  ADD CONSTRAINT tutor_conversations_context_type_check
  CHECK (
    context_type IS NULL
    OR context_type = ANY (
      ARRAY[
        'exam_prep'::text,
        'lesson'::text,
        'question'::text,
        'general'::text,
        'free_study'::text
      ]
    )
  );
