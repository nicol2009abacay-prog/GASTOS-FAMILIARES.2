// =========================================================
// ÚNICO ARCHIVO QUE DEBES EDITAR PARA CONECTAR TU PROYECTO
// =========================================================
// 1. Entra a tu proyecto en https://supabase.com
// 2. Ve a: Project Settings > API
// 3. Copia "Project URL" y pégalo en SUPABASE_URL
// 4. Copia "anon public key" y pégalo en SUPABASE_ANON_KEY
// =========================================================

(function () {
  const SUPABASE_URL = "https://qrwcsqrjtwmbryxcsxea.supabase.co";
  const SUPABASE_ANON_KEY = "sb_publishable_IRtV6mzWLc-ukRmmvR-69Q_zcpw7wAr";

  window.supabase = window.supabase.createClient(SUPABASE_URL, SUPABASE_ANON_KEY);
})();