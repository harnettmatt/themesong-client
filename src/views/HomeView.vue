<script setup lang="ts">

const stravaUserId = localStorage.getItem('stravaUserId');
const spotifyUserId = localStorage.getItem('spotifyUserId');

const BE_HOST = import.meta.env.VITE_BE_HOST;

</script>

<template>
  <div id="app" class="intro">
    <img src="@/assets/themesong-logo.png" alt="Theme Song Logo" class="title-logo" />
    <h4 class="subtitle">Connecting athletes with their Theme Song</h4>
    <img src="@/assets/themesong-secondary-logo.png" alt="Theme Song Secondary Logo" class="secondary-logo" />
    <h4 class="subtitle">Theme Song finds the Spotify track playing during your highest heart rate moment and adds it as the soundtrack to your Strava activity</h4>
    <h4 v-if="!stravaUserId || !spotifyUserId" class="subtitle italic white">Log in below to get started!</h4>
    <div class="buttons-container">
      <a v-if="!stravaUserId" :href="BE_HOST + '/strava/login'" class="button">
        <img src="@/assets/strava/connect_with_strava.png" alt="Connect with Strava" />
      </a>
      <a v-else class="button disabled">
        <img src="@/assets/strava/connect_with_strava_grayscale.png" alt="Connected to Strava" />
      </a>
      <a
        v-if="stravaUserId && !spotifyUserId"
        :href="BE_HOST + '/spotify/login?user_id=' + stravaUserId"
        class="button"
      >
        <img src="@/assets/spotify/connect_with_spotify.png" alt="Connect with Spotify" />
      </a>
      <a v-else class="button disabled">
        <img src="@/assets/spotify/connect_with_spotify_grayscale.png" alt="Connected to Spotify" />
      </a>
    </div>
    <h4 v-if="stravaUserId && spotifyUserId" class="subtitle">All set! Go log an activity!</h4>
    <div v-if="stravaUserId && spotifyUserId" class="account-management-container">
      <h4 class="account-management-title">Account Management</h4>
      <div class="account-buttons">
        <button class="account-button">Log Out</button>
        <button class="account-button remove">Delete Account</button>
      </div>
    </div>
    <img src="@/assets/strava/powered_by_strava.png" alt="Powered by Strava" class="powered-by-strava" />
  </div>
</template>

<style>
html,
body {
  background: url("@/assets/themesong-background.png") no-repeat center center fixed;
  background-size: cover;
  margin: 0;
  padding: 0;
  font-family: 'Roboto', sans-serif;
  color: #fff;
  text-align: center;
}

.intro {
  display: flex;
  flex-direction: column;
  align-items: center;
  padding: 20px;
}

.title-logo {
  width: 450px; /* Increased from 300px to 1.5x size */
  margin-bottom: 20px;
}

.secondary-logo {
  width: 450px; /* 1.5x the size of the main logo (300px * 1.5) */
  margin: 20px auto;
  display: block; /* Ensures the image is centered */
}

.powered-by-strava {
  width: 250px; /* Increased from 150px to 200px */
  position: fixed; /* Snap to the bottom of the screen */
  bottom: 10px; /* Add some spacing from the bottom */
  left: 50%; /* Center horizontally */
  transform: translateX(-50%); /* Adjust for centering */
}

.title {
  font-size: 3rem;
  font-weight: 700;
  color: #ff6f00;
  text-shadow: 2px 2px #000;
  margin: 0;
}

.subtitle {
  font-size: 1.6rem;
  margin: 0px 0; /* Reduced margin to minimize spacing */
  color: #ffd700; /* Adjusted to a brighter yellow */
  text-align: center; /* Center the subtitle text */
  text-shadow: 2px 2px 2px rgb(0, 0, 0); /* Added subtle shadow for better contrast */
}

.italic {
  font-style: italic;
}

.white {
  margin-bottom: 0;
  font-size: 1.4rem; /* Slightly smaller than the default subtitle size */
  color: #ffffff; /* Matches the orange theme used throughout the page */
  margin-top: 20px; /* Added margin to move the "Log in below" text down */
}

.buttons-container {
  height: 110px;
  display: flex;
  flex-direction: column;
  margin-top: 0px; /* Added margin to move the buttons down */
}

.button {
  display: inline-block;
  text-decoration: none;
}

.button img {
  width: 200px;
}

.button.disabled img {
  opacity: 0.5;
  pointer-events: none;
}

.account-management-container {
  background-color: rgba(70, 130, 180, 0.9); /* Lighter blue with higher opacity */
  padding: 15px; /* Reduced from 20px by 25% */
  border-radius: 7.5px; /* Reduced from 10px by 25% */
  text-align: center; /* Center all content horizontally */
  width: 67.5%; /* Reduced from 90% by 25% */
  max-width: 300px; /* Reduced from 400px by 25% */
  margin-left: auto;
  margin-right: auto;
  display: flex;
  flex-direction: column; /* Ensure content is stacked vertically */
  align-items: center; /* Center all content horizontally */
  position: fixed; /* Pin the block */
  bottom: 80px; /* Position it above the "Powered by Strava" logo */
  left: 50%; /* Center horizontally */
  transform: translateX(-50%); /* Adjust for centering */
}

.account-management-title {
  font-size: 1.05rem; /* Reduced from 1.4rem by 25% */
  font-weight: bold;
  margin-top: 0;
  margin-bottom: 15px; /* Reduced from 20px by 25% */
  color: #fff;
  text-align: center; /* Center text inside the container */
}

.account-buttons {
  display: flex;
  flex-direction: column; /* Stack buttons vertically */
  gap: 7.5px; /* Reduced from 10px by 25% */
  width: 100%; /* Ensure buttons take full width of the container */
  align-items: center; /* Center the buttons horizontally */
}

.account-button {
  height: 37.5px; /* Reduced from 50px by 25% */
  font-size: 0.75rem; /* Reduced from 1rem by 25% */
  font-weight: bold;
  color: #fff;
  background-color: #ff4d4d; /* Light red for "Log Out" */
  border: none;
  border-radius: 3.75px; /* Reduced from 5px by 25% */
  cursor: pointer;
  transition: background-color 0.2s ease;
  width: 150px; /* Reduced from 200px by 25% */
  display: flex;
  justify-content: center;
  align-items: center;
}

.account-button:hover {
  background-color: #ff1a1a; /* Slightly darker red on hover */
}

.account-button.remove {
  background-color: #8b0000; /* Darker red for "Remove Account" */
}

.account-button.remove:hover {
  background-color: #5a0000; /* Even darker red on hover */
}
</style>
