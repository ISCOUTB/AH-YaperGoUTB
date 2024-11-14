import { createRouter, createWebHistory } from 'vue-router'
import LoginTodos from '../views/LoginTodos.vue'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    /*     {
          path: '/',
          name: 'home',
          component: HomeView
        },
        */
    {
      path: '/',
      name: '.login',
      component: () => import('../views/LoginTodos.vue')
    },
    {
      path: '/adminview',
      name: '.adminview',
      component: () => import('../views/AdminView.vue')
    },

  ]
})

export default router
