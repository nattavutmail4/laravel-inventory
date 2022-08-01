import { createRouter, createWebHistory } from 'vue-router'
//  import layout Main frontend
import MainFrontend from '@/layouts/MainFrontend.vue'
//  import layout Frontend
import HomeView from '@/views/frontend/HomeView.vue'
import AboutPage from '@/views/frontend/AboutView.vue'
import PortfolioView from '@/views/frontend/Portfolio.vue'
import Service from '@/views/frontend/Service.vue'
import ContactView from '@/views/frontend/Contact.vue'
import RegisterView from '@/views/frontend/Register.vue'
import LoginView from '@/views/frontend/Login.vue'
import ForgotPassword from '@/views/frontend/ForgotPassword.vue'
import NotFound404 from '@/views/frontend/NotFound404'
// import layout Main backend

// import layout backend




const routes = [
  {
    path: '/',
    name: '',
    component: MainFrontend,
    children:[
      {
        path:'',
        component:HomeView
      }
    ] 
  },
  {
    path: '/about',
    name: '',
    component: MainFrontend,
    children:[
      {
        path:'',
        component:AboutPage
      }
    ]
  },
  {
    path: '/portfolio',
    name: '',
    component: MainFrontend,
    children:[
      {
        path:'',
        component:PortfolioView
      }
    ]
  },
  {
    path: '/service',
    name: '',
    component: MainFrontend,
    children:[
      {
        path:'',
        component:Service
      }
    ]
  },
  {
    path: '/contact',
    name: '',
    component: MainFrontend,
    children:[
      {
        path:'',
        component:ContactView
      }
    ]
  },
  {
    path: '/register',
    name: '',
    component: MainFrontend,
    children:[
      {
        path:'',
        component:RegisterView
      }
    ]
  },
  {
    path: '/login',
    name: '',
    component: MainFrontend,
    children:[
      {
        path:'',
        component:LoginView
      }
    ]
  },
  {
    path: '/forgotpassword',
    name: '',
    component: MainFrontend,
    children:[
      {
        path:'',
        component:ForgotPassword
      }
    ]
  },

  // 404
  {
    path:'/:catchAll(.*)',
    component:NotFound404,
  }
]
const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
