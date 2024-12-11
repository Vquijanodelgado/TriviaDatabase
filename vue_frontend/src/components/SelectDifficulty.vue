<template>
  <div class="select-difficulty">
    <h1>Select a Difficulty Level to Start!</h1>
    <div v-if="difficulties.length > 0" class="difficulty-list">
      <div v-for="difficulty in difficulties" :key="difficulty.difficulty_level" class="difficulty-button">
        <button @click="selectDifficulty(difficulty.difficulty_level)">
          <span class="difficulty-level">{{ difficulty.difficulty_level }}</span>
          <span class="difficulty-description">{{ difficulty.description }}</span>
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

<style scoped>
.select-difficulty {
  text-align: center;
  font-family: 'Arial', sans-serif;
  background-color: #a3df93;
  color: white;
  padding: 20px;
  border-radius: 10px;

  max-width: 600px;
  margin: 50px auto;
}

.select-difficulty h1 {
  font-size: 36px;
  color: #ffffff;
  margin-bottom: 20px;
}

.difficulty-list {
  display: flex;
  flex-direction: column;
  gap: 15px;
}

.difficulty-button button {
  background-color: #51ae54;
  color: #fff;
  font-size: 18px;
  padding: 12px 20px;
  border: none;
  border-radius: 8px;
  cursor: pointer;
  transition: all 0.3s ease;
  display: flex;
  justify-content: space-between;
  align-items: center;
  width: 100%;
}

.difficulty-button button:hover {
  background-color: #45a847;
}

.difficulty-button button:focus {
  outline: none;
}

.difficulty-level {
  font-weight: bold;
  font-size: 20px;
}

.difficulty-description {
  font-size: 14px;
  color: #ffffff;
}
</style>
