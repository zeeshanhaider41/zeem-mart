ZEEM MART — SUPABASE CONNECTED VERSION

Files:
- index.html          Customer store
- admin.html          Secure Supabase Auth admin panel
- setup_admin_security.sql  RLS/admin policy setup

IMPORTANT:
Replace YOUR_SUPABASE_PUBLISHABLE_KEY in BOTH index.html and admin.html with your Supabase Publishable key.
Never put a service_role/secret key in these files.

SETUP:
1) Supabase Dashboard > Settings > API Keys.
2) Copy the Publishable key (safe for browser use when RLS is correctly configured).
3) Replace YOUR_SUPABASE_PUBLISHABLE_KEY in both HTML files.
4) In SQL Editor run setup_admin_security.sql.
5) Go to Authentication > Users and create your admin email/password user.
6) Copy that user's User ID.
7) In SQL Editor run:
   insert into public.admin_users(user_id) values ('PASTE-USER-UUID-HERE');
8) Upload index.html and admin.html to your GitHub repo and redeploy Vercel.

Admin:
https://YOUR-DOMAIN/admin.html

The customer checkout saves orders into Supabase and also keeps the existing Formspree email backup.
