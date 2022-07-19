import { createRouter, createWebHistory } from 'vue-router'
//  import layout
import MainFrontend from '@/layouts/MainFrontend.vue'
//  import Frontend
import HomeView from '@/views/frontend/HomeView.vue'
import AboutView from '@/views/frontend/AboutView.vue'


const routes = [
  {
    path: '/',
    name: 'Home',
    component: MainFrontend,
    children:[
      {
        path:'',
        component:HomeView
      }
    ] ,meta: {
      requiresAuth: true
    }
  },
  {
    path: '/about',
    name: 'About',
    component: MainFrontend,
    children:[
      {
        path:'',
        component:AboutView
      }
    ]
  },
  
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
