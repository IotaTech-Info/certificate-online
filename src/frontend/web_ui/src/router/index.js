import Vue from 'vue'
import Router from 'vue-router'
import SignIn from '@/components/SignIn'
import Information from '@/components/Information'
import Register from '@/components/Register'
import Certificate from '@/components/Certificate'


Vue.use(Router)
Vue.prototype.$backendURL = process.env.VUE_APP_BACKENDURL
Vue.prototype.$frontendURL = process.env.VUE_APP_FRONTENDURL

export default new Router({
  //  mode: 'history', // ルートのURLから自動で入る'#'を取り除く
   routes: [
    {
      path: '/',
      name: 'SignIn',
      component: SignIn
    },
    {
      path: '/information',
      name: 'Information',
      component: Information
    },
    {
      path: '/register',
      name: 'Register',
      component: Register
    },
    {
      path: '/certificate',
      name: 'Certificate',
      component: Certificate
    }
   ]
})
