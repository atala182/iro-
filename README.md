# İrem sayfası

Statik tek sayfa (index.html). Supabase yalnızca "bana bir şey söyle" kutusu için kullanılır.

## 1) Supabase
1. Yeni proje oluştur.
2. SQL Editor'de `supabase/migrations/001_replies.sql` dosyasını çalıştır.
3. Project Settings > API'den **Project URL** ve **anon/publishable key** değerlerini kopyala.
4. `config.js` içine yapıştır. (Boş bırakırsan sayfa çalışır, sadece mesaj kutusu görünmez.)

## 2) GitHub
```
git init && git add . && git commit -m "ilk sürüm"
git branch -M main
git remote add origin https://github.com/KULLANICI/irem-sayfasi.git
git push -u origin main
```

## 3) Netlify
Add new site > Import from Git > repoyu seç. Build command boş, publish directory `.` (netlify.toml zaten ayarlı).
Her `git push` siteyi otomatik günceller.
