-- Comprehensive fix for the recurring "RLS enabled + policies but no GRANT" bug.
-- These tables denied the authenticated role outright (403) because RLS only
-- filters rows AFTER a grant lets the role touch the table. The subscriptions
-- read in the dashboard was returning 403 for this reason. RLS policies still
-- govern which rows each user can access.
grant select, insert, update, delete on public.subscriptions to authenticated;
grant select, insert, update, delete on public.practice_sessions to authenticated;
grant select, insert, update, delete on public.practice_attempts to authenticated;
grant select, insert, update, delete on public.enrollments to authenticated;
grant select, insert, update, delete on public.lesson_progress to authenticated;
grant select, insert, update, delete on public.lessons to authenticated;
grant select, insert, update, delete on public.org_invites to authenticated;
grant select, insert, update, delete on public.organizations to authenticated;
grant select, insert, update, delete on public.content_reports to authenticated;
