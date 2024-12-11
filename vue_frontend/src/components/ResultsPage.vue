<template>
  <div class="results-page">
    <h1>Trivia Results</h1>
    <div v-if="results" class="results-container">
      <p><strong>Score:</strong> {{ results.total_score }} / 10</p>
      <p><strong>Duration:</strong> {{ results.duration }} seconds</p>
    </div>
    <div v-else>
      <p>Loading results...</p>
    </div>
    <!-- redirect to beginning of trivia to play again -->
    <div class="trivia-again-container">
      <button class="trivia-again-btn" @click="navigateToDifficulty">
        Practice Trivia Again?
      </button>
    </div>
    <div class="divider"></div>

    <!-- pie Chart Section -->
    <div v-if="categoryData.length > 0" class="chart-container">
      <h2>Trivia Stats</h2>
      <h4>from all attempts</h4>
      <canvas id="categoryPieChart"></canvas>
    </div>


  </div>
</template>

<script>
import axios from "axios";
import { Chart, registerables } from "chart.js";
Chart.register(...registerables);

export default {
  data() {
    return {
      email: this.$route.query.email,
      attemptDateTime: this.$route.query.attempt_date_time,
      results: null,
      categoryData: [],
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
        console.error("Could not fetch results:", error);
      }
    },
    async fetchCategoryStrength() {
      try {
        const response = await axios.get("http://127.0.0.1:5000/user/category_strength", {
          params: {
            email: this.email,
          },
        });
        this.categoryData = response.data;
        this.$nextTick(() => this.createChart());
      } catch (error) {
        console.error("Could not fetch category strength:", error);
      }
    },
    createChart() {
      const ctx = document.getElementById("categoryPieChart").getContext("2d");

      new Chart(ctx, {
        type: "pie",
        data: {
          labels: this.categoryData.map((item) => item.category_name),
          datasets: [
            {
              label: "Correct Percentage",
              data: this.categoryData.map((item) => item.correct_percentage),
              backgroundColor: [
                "#DAF7A6",
                "#FFC300",
                "#FF5733",
                "#C70039",
                "#900C3F",
                "#581845",
                "#FF9F40",
              ],
              borderColor: "rgba(255, 255, 255, 0.5)",
              borderWidth: 1,
            },
          ],
        },
        options: {
          responsive: true,
          plugins: {
            legend: {
              position: "top",
              labels: {
                color: "#fff",
              },
            },
            tooltip: {
              callbacks: {
                label: (tooltipItem) => {
                  const category = this.categoryData[tooltipItem.dataIndex];
                  return `${category.category_name}: ${category.correct_percentage}% (${category.correct_count}/${category.total_count} correct)`;
                },
              },
            },
          },
        },
      });
    },
    navigateToDifficulty() {
      this.$router.push({
        path: "/select-difficulty",
        query: { email: this.email },
      });
    },
  },
  async mounted() {
    await this.fetchResults();
    await this.fetchCategoryStrength();
  },
};
</script>

<style scoped>
.results-page {
  text-align: center;
  font-family: 'Arial', sans-serif;
  padding: 20px;
  color: #ffffff;
  background-color: #2d4028;
  border-radius: 8px;
  max-width: 800px;
  margin: 40px auto;
}

.results-page h1 {
  font-size: 36px;
  color: #56ce5a; 
}

.results-container {
  background-color: #354c31; 
  padding: 20px;
  border-radius: 10px;
  margin: 20px auto;
  max-width: 600px;
}

.results-container p {
  font-size: 18px;
  margin: 10px 0;
}

.chart-container {
  margin-top: 30px;
  max-width: 600px;
  margin: 0 auto;
}

canvas {
  max-width: 100% !important; 
  height: auto !important; 
}

.divider {
  margin: 20px 0;
  border-top: 2px solid #ffffff;
  width: 80%;
  margin-left: auto;
  margin-right: auto;
}

.trivia-again-container {
  margin-top: 20px;
}

.trivia-again-btn {
  background-color: #78b47a;
  color: #ffffff;
  font-size: 20px;
  font-weight: bold;
  padding: 10px 20px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

.trivia-again-btn:hover {
  background-color: #45a847;
}
</style>
