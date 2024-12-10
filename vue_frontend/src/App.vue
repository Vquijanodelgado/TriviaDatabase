<template>
  <div class="app">
    <!-- Header -->
    <header class="header">
      <h1>Trivia Jungle</h1>
    </header>

    <!-- Main  stuff -->
    <main class="main-content">
      <UserAuth />
    </main>

    <!-- Footer -->
    <footer class="footer">
      <p>&copy; 2024 Trivia Jungle. heheh All Rights Reserved.</p>
    </footer>
  </div>
</template>

<script>
import UserAuth from "./components/UserAuth.vue";

export default {
  components: {
    UserAuth,
  },
};
</script>

<style>
/* Global Styling */
body {
  margin: 0;
  font-family: 'Arial', sans-serif;
  background-color: #f7f9fc; /* Light background similar to Duolingo */
  color: #333;
  display: flex;
  flex-direction: column;
  min-height: 100vh;
}

/* App Container */
.app {
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  min-height: 100vh;
}

/* Header */
.header {
  background-color: #58cc02; /* Duolingo's signature green */
  color: white;
  padding: 20px 0;
  text-align: center;
  font-size: 24px;
  font-weight: bold;
  box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
}

/* Main Content */
.main-content {
  flex: 1;
  display: flex;
  justify-content: center;
  align-items: center; 
  padding: 20px;
}

/* Footer */  
.footer {
  background-color: #eeeeee; /* Light gray for subtle footer */
  text-align: center;
  padding: 10px 0;
  font-size: 14px;
  color: #666;
  box-shadow: 0px -2px 4px rgba(0, 0, 0, 0.1);
}
</style>

