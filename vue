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
  |    |--layouts
  |        |-- Frontend.vue
  |    |--styles
  |    |--views
  |        |-- backend
  |        |-- frontend
  |             |-- About.vue
  |             |-- Home.vue
  |     |-- App.vue
