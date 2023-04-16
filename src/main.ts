import { createApp } from 'vue'
import App from './App.vue'
import '../style.css'

import { createRouter, createWebHashHistory } from 'vue-router'
import Routes from './routes'

const router = createRouter({
    history: createWebHashHistory(),
    routes: Routes
})

const app = createApp(App)
// app.use(router)
app.mount('#app')
