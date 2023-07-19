<script setup lang="ts">
import { store } from '../stores/store';
</script>

<template>
    <div id="app" class="intro">
        <h1>Welcome to ThemeSong! </h1>
        <h4>ThemeSong is designed for Strava athletes that listen to music while exercising. Log an activity and ThemeSong
            will determine which song got you the most fired up and post it in the activity
            description.</h4>
    </div>
    <div class="buttons-container">
        <div class="step">
            Step 1
            <a href="http://localhost:8000/strava/login" class="link">
                <img id="strava" class="step-content" src="@/assets/strava/connect_with_strava.png" />
            </a>
            <div class="checkmark-container">
                <img class="checkmark" src="@/assets/checkmark.png" />
            </div>
            Strava User Id: {{ store.stravaUserId }}
        </div>
        <div class="step">
            Step 2
            <a :href="'http://localhost:8000/spotify/login?user_id=' + store.stravaUserId" class="link">
                <img id="spotify" class="step-content" src="@/assets/spotify/connect_with_spotify.png" />
            </a>
            <div class="checkmark-container">
                <img class="checkmark" src="@/assets/checkmark.png" />
            </div>
            Spotify User Id: {{ store.spotifyUserId }}
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
