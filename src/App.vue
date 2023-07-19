<script setup lang="ts">
</script>

<template>
  <RouterView />
</template>

<style>
html,
body {
  background-color: rgb(73, 73, 73);
  margin: 0;
  padding: 5px;
  font-family: Arial, Helvetica, sans-serif;
  color: white;
  line-height: 1.5;
}

.intro {
  display: flex;
  flex-direction: column;
  align-items: center;
  text-align: justify;
  max-width: 800px;
  margin: 0 auto;
}

.step-content {
  display: inline-block;
  margin: 20px;
  background-color: transparent;
  border: none;
}

.buttons-container {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  height: 25vh;
  color: white;
}

.step {
  display: flex;
  flex-direction: row;
  justify-content: center;
  align-items: center;
}

#spotify {
  width: 193px;
}

.checkmark {
  display: inline-block;
  height: 20px;
}

/* Add a container for the check mark */
.checkmark-container {
  flex: 1;
  display: flex;
  justify-content: flex-end;
}

.link {
  text-decoration: none;
  display: inline-block;
  line-height: 0;
}

#powered-by-strava {
  position: fixed;
  bottom: 0;
  left: 50%;
  transform: translateX(-50%);
}
</style>
