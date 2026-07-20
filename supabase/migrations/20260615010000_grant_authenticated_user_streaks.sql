-- user_streaks had RLS enabled with per-user policies but no table privileges
-- granted to the authenticated role, so the practice page's streak read/write
-- was denied ("permission denied"). RLS only filters rows after a GRANT lets the
-- role touch the table. Safe: the existing policies still confine each user to
-- their own row.
grant select, insert, update, delete on public.user_streaks to authenticated;
