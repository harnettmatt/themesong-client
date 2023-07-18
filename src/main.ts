import App from './App.vue'
import { createApp } from 'vue'
import { createRouter, createWebHistory } from 'vue-router'

// Define your routes
const routes = [
    {
        path: '/',
        name: 'ThemeSong',
        component: App
    },
    {
        path: '/:userId',
        name: 'ThemeSong',
        component: App
    }
]

// Create the router instance
const router = createRouter({
    history: createWebHistory(),
    routes
})

// Create your Vue app
const app = createApp(App)
app.use(router)
app.mount('#app')
