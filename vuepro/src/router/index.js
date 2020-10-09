import Vue from 'vue'
import VueRouter from 'vue-router'
import Index from '../views/Index'
import Login from '../views/Login'
import Register from '../views/Register'
import List from '../views/List'
import Goods from '../views/Goods'

Vue.use(VueRouter)

const routes = [
  {
    path:'/goods/:pid',
    component:Goods,
    props:true
  },
  {
    path:'/list/:sid',
    component:List,
    props:true
  },
  {
    path:'/register',
    component:Register
  },
  {
    path:'/login',
    component:Login
  },
  {
    path: '/',
    name: 'Index',
    component: Index
  },
  {
    path: '/about',
    name: 'About',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  }
]

const router = new VueRouter({
  routes
})

export default router
