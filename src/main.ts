import { createApp } from 'vue';
import App from './App.vue';
import router from './router';
import store from './store';
import './plugins/aos'
import './plugins/underline.js'
import './index.css'

createApp(App)
  .use(store)
  .use(router)
  .mount('#app');
