<template>
    <div class="results-page">
      <h1>Trivia Results</h1>
      <div v-if="results">
        <p><strong>Score:</strong> {{ results.total_score }} / 10</p>
        <p><strong>Duration:</strong> {{ results.duration }} seconds</p>
      </div>
      <div v-else>
        <p>Loading results...</p>
      </div>
    </div>
  </template>
  
  <script>
  import axios from "axios";
  
  export default {
    data() {
      return {
        email: this.$route.query.email,
        attemptDateTime: this.$route.query.attempt_date_time,
        results: null,
      };
    },
    methods: {
      async fetchResults() {
        try {
          const response = await axios.get("http://127.0.0.1:5000/attempt/results", {
            params: {
              email: this.email,
              attempt_date_time: this.attemptDateTime,
            },
          });
          this.results = response.data;
        } catch (error) {
          console.error("Error fetching results:", error);
        }
      },
    },
    mounted() {
      this.fetchResults();
    },
  };
  </script>
  
  <style scoped>
  .results-page {
    text-align: center;
    font-family: 'Arial', sans-serif;
    padding: 20px;
  }
  
  .results-page h1 {
    font-size: 32px;
    color: #45da40;
  }
  
  .results-page p {
    font-size: 20px;
    margin: 10px 0;
  }
  </style>
  