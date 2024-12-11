<template>
  <div id="app" class="app">
    <!-- Header -->
    <header class="header">
      <h1>Trivia Practice</h1>
    </header>

    <!-- Main Content -->
    <main class="main-content">
      <router-view />
    </main>

    <!-- Footer -->
    <footer class="footer">
      <p> 2024 Trivia Practice. version 0.0.1</p>
    </footer>
  </div>
</template>

<script>
export default {
  name: "App",
};
</script>

<style>
/* Global Styling */
body {
  margin: 0;
  font-family: 'Arial', sans-serif;
  background-color: #f7f9fc; /* Light background */
  color: #333;
  display: flex;
  flex-direction: column;
  min-height: 100vh;
}

.app {
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  min-height: 100vh;
}

/* Header */
.header {
  background-color: #58cc02; /* Trivia Jungle green */
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
  padding: 20px;
}

/* Footer */
.footer {
  background-color: #eeeeee;
  text-align: center;
  padding: 10px 0;
  font-size: 14px;
  color: #666;
  box-shadow: 0px -2px 4px rgba(0, 0, 0, 0.1);
}
</style>
