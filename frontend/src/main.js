import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import '@/styles/tailwind.css'
//สร้างตัวแปร มาเก็บ Constant ของ vue
const app = createApp(App)

app.use(store)
app.use(router)

app.mount('#app')
