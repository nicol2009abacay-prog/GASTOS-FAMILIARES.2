create policy "Lectura publica fotos-familia"
on storage.objects for select
using (bucket_id = 'fotos-familia');

create policy "Subida publica fotos-familia"
on storage.objects for insert
with check (bucket_id = 'fotos-familia');

create policy "Actualizacion publica fotos-familia"
on storage.objects for update
using (bucket_id = 'fotos-familia');