import { createRouter, createWebHistory } from 'vue-router'
import Layout from '@/views/Layout/index.vue'
import Login from '../views/Login/index.vue'
import Home from '../views/Home/index.vue'
import Category from '../views/Category/index.vue'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    // {
      // path: '/about',
      // name: 'about',
      // route level code-splitting
      // this generates a separate chunk (About.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      // component: () => import('../views/AboutView.vue')
    // }

    {
      path: '/',
      name: 'layout',
      component: Layout,
      children:[
        {
          // 将路由设置为空字符串，当浏览器访问“/” 时，home组件也会进行渲染
          path: '',
          name: 'home',
          component: Home
        },
        {
          path: '/category',
          name: 'category',
          component: Category
        },
      ]
    },
    {
      path: '/login',
      name: 'login',
      component: Login
    },
  ]
})

export default router
