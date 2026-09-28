drop policy if exists "Admins can upload product images" on storage.objects;

create policy "Admins can upload product images"
on storage.objects
for insert
to authenticated
with check (
  bucket_id = 'product-images'
  and exists (
    select 1 from public.admin_users
    where user_id = (select auth.uid())
  )
);
