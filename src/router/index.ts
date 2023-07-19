import StravaRedirect from '../components/StravaRedirect.vue'
import SpotifyRedirect from '../components/SpotifyRedirect.vue'
import HomeView from '../views/HomeView.vue'
import { createRouter, createWebHistory } from 'vue-router'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'Home',
      component: HomeView
    },
    {
      path: '/strava/:userId',
      name: 'StravaRedirect',
      component: StravaRedirect
    },
    {
      path: '/spotify/:userId',
      name: 'SpotifyRedirect',
      component: SpotifyRedirect
    }
  ]
})

export default router
