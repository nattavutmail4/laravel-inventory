ขั้นตอนการทำงานกับ Vue.js 3
================================
Step 1: สร้างโปรเจ็กต์ใหม่ด้วย Vue CLI
---
vue create frontend

Step 2: เลือก preset จาก Vue CLI 
---
เลือกแบบ Manually

Step 3: เปลี่ยน path เข้าโปรเจ็กต์
---
cd frontend

Step 4: เปิดเข้า vscode
---
code .

Step 5: รันโปรเจ็กต์ Vue.js
---
npm run serve

Step 6: โครงสร้างโปรเจ็กต์ frontend ของเรา
---
frontend
  |-- src
  |    |-- assets
  |         |--img
  |    |-- components
  |         |-- backend
  |         |-- frontend
  |              |--Nav.vue
  |              |--Foot.vue
  |    |--router
  |        |-- index.js
  |    |--services
  |        |-- AuthService.js
  |    |--layouts
  |        |-- Frontend.vue
  |    |--styles
  |        |--tailwind.css
  |    |--views
  |        |-- backend
  |        |-- frontend
  |             |-- About.vue
  |             |-- Home.vue
  |             |-- Portfolio.vue
  |             |-- Service.vue
  |             |-- Contact.vue
  |             |-- Register.vue
  |             |-- Login.vue
  |             |-- ForgotPassword.vue
  |             |-- NotFound404.vue
  |     |-- App.vue


Step 7: ติดตั้ง Tailwind CSS 2 ลงในโปรเจ็กต์
---
ติดตั้ง Taiwind ด้วย npm
---
npm install -D tailwindcss@npm:@tailwindcss/postcss7-compat @tailwindcss/postcss7-compat postcss@^7 autoprefixer@^9

สร้างไฟล์ config ของ Tailwind
---
npx tailwindcss init -p

สร้างไฟล์โหลด css ของ tailwind มาใช้งาน
---
สร้างไฟล์ชื่อ tailwind.css ไว้ใน styles/tailwind.css

กำหนด path ของ tailwind.css ที่เราสร้างในไฟล์ main.js
---

การเปลี่ยน font ใน tailwind
----

 data(){
    return {
      email: 'samit@email.com'
    }
  }


การ build project vue.js เพื่อนำไปใช้งานบน production
---------
ต้องทำการ config path ที่จะนำไปใช้
สร้างไฟล์ vue.config.js

คำสั่งในการ build production
----
npm run build

จะเกิด folder dist
---
ให้นำ code ทั้งหมดใน dist ไปขึ้น server ได้เลย

ตัวอย่างโค้ด .htaccess
--
Options -MultiViews
RewriteEngine On
RewriteCond %{REQUEST_FILENAME} !-f
RewriteRule ^ index.html [QSA,L]