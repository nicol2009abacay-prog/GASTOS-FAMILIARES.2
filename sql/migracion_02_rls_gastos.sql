-- ========================================================= -- MIGRACIÓN 02: Activación de RLS real en la tabla gastos -- ========================================================= -- Requiere que el login (Supabase Auth) ya esté implementado -- y que app.js incluya usuario_id al insertar un gasto (Paso 4). -- ========================================================= 
  
alter table gastos enable row level security; 
  
create policy "usuarios ven solo sus gastos" 
on gastos for select 
using (auth.uid() = usuario_id); 
  
create policy "usuarios insertan sus propios gastos" 
on gastos for insert 
with check (auth.uid() = usuario_id); 
  
create policy "usuarios editan solo sus gastos" 
on gastos for update 
using (auth.uid() = usuario_id); 
  
create policy "usuarios eliminan solo sus gastos" 
on gastos for delete 
using (auth.uid() = usuario_id);