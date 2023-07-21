<script setup lang="ts">
import { useRouter, useRoute } from 'vue-router';
const router = useRouter();
const route = useRoute();
localStorage.setItem('stravaUserId', route.params.userId.toString());
router.push('/');
</script>

<template />