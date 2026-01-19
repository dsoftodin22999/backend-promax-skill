# Hướng dẫn đẩy dự án lên GitHub (2 Repo riêng biệt)

Bạn đã tách dự án thành 2 phần độc lập. Hãy làm theo các bước sau để đẩy lên GitHub.

## 1. Dự án Backend Skill (Core)
Đây là bộ não chính + CLI Tool.

**Folder:** `d:\Backend-Promax-Skill`

```bash
cd d:\Backend-Promax-Skill
git init
git add .
git commit -m "Initial commit Backend Pro Max v2.0"
# Tạo repo mới trên GitHub tên là 'backend-promax-skill'
git remote add origin https://github.com/YOUR_USERNAME/backend-promax-skill.git
git push -u origin main
```

## 2. Dự án Website (Landing Page)
**Folder:** `d:\Backend-Promax-Website`

⚠️ **Lưu ý:** Bạn cần mở terminal tại đúng folder này để chạy lệnh.

```bash
cd "d:\Backend-Promax-Website"
git init
git add .
git commit -m "Initial commit Website Brand"
# Tạo repo mới trên GitHub tên là 'backend-promax-website'
git remote add origin https://github.com/YOUR_USERNAME/backend-promax-website.git
git push -u origin main
```

## 3. Cách chạy Website Localhost
Để xem website trên máy của bạn:

```bash
cd d:\Backend-Promax-Website
npm install
npm run dev
```
Sau đó mở trình duyệt tại: `http://localhost:3000`
