import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import MyHeader from './components/MyHeader'
import MyFooter from './components/MyFooter'
import Banner from './components/Banner'
import axios from 'axios'
import qs from 'qs'

axios.defaults.baseURL='http://127.0.0.1:3000';
Vue.prototype.axios=axios;
Vue.prototype.qs=qs;
Vue.component("my-header",MyHeader);
Vue.component("my-footer",MyFooter);
Vue.component("my-banner",Banner);
Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
