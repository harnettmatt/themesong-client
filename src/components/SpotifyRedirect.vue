<script setup lang="ts">
import { useRouter, useRoute } from 'vue-router';
import { store } from '../stores/store';
const router = useRouter();
const route = useRoute();
store.spotifyUserId = route.params.userId.toString();
router.push('/');

</script>
