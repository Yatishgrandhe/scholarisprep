-- Fix: "Ask Scho" tutor failed with "Could not start tutor chat".
--
-- tutor_conversations / tutor_messages had RLS enabled with per-user policies,
-- but the `authenticated` role was never GRANTed table privileges (the original
-- 20260517120000_dashboard_practice_tutor.sql created the tables + policies but
-- omitted the grants). RLS only filters ROWS *after* a GRANT lets the role touch
-- the table at all; without the grant every insert/select is rejected with
-- "permission denied for table tutor_conversations", so createTutorConversation()
-- returned null and the chat could never start.
--
-- These grants are required for the tutor chat to work and are safe: the RLS
-- policies (user_id = auth.uid()) still confine each user to their own rows.
grant select, insert, update, delete on public.tutor_conversations to authenticated;
grant select, insert, update, delete on public.tutor_messages to authenticated;
