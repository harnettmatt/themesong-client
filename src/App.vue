<script setup lang="ts">
</script>

<template>
  <div class="intro">
    <h1>Welcome to ThemeSong! </h1>
    <h4>ThemeSong is designed for Strava athletes that listen to music while exercising. Log an activity and ThemeSong
      will determine which song got you the most fired up and post it in the activity
      description.</h4>
  </div>
  <div class="buttons-container">
    <div class="step">
      Step 1
      <a href="http://localhost:8000/strava/login">
        <button class="step-content">
          <img id="strava" src="@/assets/strava/connect_with_strava.png" />
        </button>
      </a>
    </div>
    <div class="step">
      Step 2
      <button class="step-content">
        <img id="spotify" src="@/assets/spotify/connect_with_spotify.png" />
      </button>
    </div>
  </div>
  <img id="powered-by-strava" src="@/assets/strava/powered_by_strava.png" />
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

.buttons-container {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  height: 25vh;
  color: white;
}

.step-content {
  display: inline-block;
  margin: 20px;
  background-color: transparent;
  border: none;
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

#powered-by-strava {
  position: fixed;
  bottom: 0;
  left: 50%;
  transform: translateX(-50%);
}
</style>
