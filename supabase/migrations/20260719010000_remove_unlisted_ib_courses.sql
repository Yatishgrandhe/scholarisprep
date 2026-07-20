-- Remove IB courses that are not in the approved list.
-- Deletes from full_exam_forms, course_units, and subject_registry.
-- Note: enum values in public.exam_type are left in place (unused values are harmless).

DELETE FROM public.full_exam_forms
WHERE exam_type IN (
  'IB_DIGITAL_SOCIETY_SL',
  'IB_DIGITAL_SOCIETY_HL',
  'IB_VISUAL_ARTS_SL',
  'IB_VISUAL_ARTS_HL',
  'IB_MUSIC_SL',
  'IB_MUSIC_HL',
  'IB_THEATRE_SL',
  'IB_THEATRE_HL',
  'IB_FILM_SL',
  'IB_FILM_HL',
  'IB_DANCE_SL',
  'IB_DANCE_HL',
  'IB_TOK',
  'IB_EE'
);

DELETE FROM public.course_units
WHERE exam_type IN (
  'IB_DIGITAL_SOCIETY_SL',
  'IB_DIGITAL_SOCIETY_HL',
  'IB_VISUAL_ARTS_SL',
  'IB_VISUAL_ARTS_HL',
  'IB_MUSIC_SL',
  'IB_MUSIC_HL',
  'IB_THEATRE_SL',
  'IB_THEATRE_HL',
  'IB_FILM_SL',
  'IB_FILM_HL',
  'IB_DANCE_SL',
  'IB_DANCE_HL',
  'IB_TOK',
  'IB_EE'
);

DELETE FROM public.subject_registry
WHERE exam_type IN (
  'IB_DIGITAL_SOCIETY_SL',
  'IB_DIGITAL_SOCIETY_HL',
  'IB_VISUAL_ARTS_SL',
  'IB_VISUAL_ARTS_HL',
  'IB_MUSIC_SL',
  'IB_MUSIC_HL',
  'IB_THEATRE_SL',
  'IB_THEATRE_HL',
  'IB_FILM_SL',
  'IB_FILM_HL',
  'IB_DANCE_SL',
  'IB_DANCE_HL',
  'IB_TOK',
  'IB_EE'
);
