<template>
    <div class="select-difficulty">
      <h1>Select Difficulty</h1>
      <div v-if="difficulties.length > 0">
        <div v-for="difficulty in difficulties" :key="difficulty.difficulty_level" class="difficulty-button">
          <button @click="selectDifficulty(difficulty.difficulty_level)">
            {{ difficulty.difficulty_level }}: {{ difficulty.description }}
          </button>
        </div>
      </div>
      <div v-else>
        <p>Loading difficulty levels...</p>
      </div>
    </div>
  </template>
  
  <script>
  import axios from "axios";
  
  export default {
    data() {
      return {
        email: this.$route.query.email || "",
        difficulties: [],
      };
    },
    methods: {
      async fetchDifficulties() {
        try {
          const response = await axios.get("http://127.0.0.1:5000/difficulties");
          this.difficulties = response.data;
        } catch (error) {
          console.error("Error fetching difficulties:", error);
        }
      },
      selectDifficulty(difficultyLevel) {
        this.$router.push({
          path: "/trivia",
          query: {
            email: this.email,
            difficulty_level: difficultyLevel,
          },
        });
      },
    },
    async mounted() {
      await this.fetchDifficulties();
    },
  };
  </script>
  
  <style>
  /*idk yet */
  </style>
  