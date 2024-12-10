<template>
    <div class="trivia-page">
      <h1>Trivia Jungle</h1>
      <div v-if="questions.length > 0">
        <div class="flashcard">
          <p>{{ questions[currentQuestionIndex].question }}</p>
          <div class="answer-buttons">
            <button @click="handleAnswer(true)">True</button>
            <button @click="handleAnswer(false)">False</button>
          </div>
        </div>
        <p>Question {{ currentQuestionIndex + 1 }} of {{ questions.length }}</p>
      </div>
      <div v-else>
        <p>Loading questions...</p>
      </div>
    </div>
  </template>
  
  <script>
  import axios from "axios";
  
  export default {
  data() {
    return {
      email: this.$route.query.email || "user@example.com",
      questions: [],
      currentQuestionIndex: 0,
      attemptDateTime: null,
    };
  },
  methods: {
    async startAttempt() {
      try {
        const response = await axios.post("http://127.0.0.1:5000/attempt/start", {
          email: this.email,
        });
        this.attemptDateTime = response.data.attempt_date_time;
      } catch (error) {
        console.error("Error starting attempt:", error);
      }
    },
    async fetchQuestions() {
      try {
        const response = await axios.get("http://127.0.0.1:5000/trivia/questions");
        this.questions = response.data;
      } catch (error) {
        console.error("Error fetching questions:", error);
      }
    },
    async recordAnswer(question, answer) {
      try {
        const response = await axios.post("http://127.0.0.1:5000/attempt/answer", {
          email: this.email,
          attempt_date_time: this.attemptDateTime,
          question_text: question,
          user_answer: answer,
        });
        console.log("Answer recorded:", response.data);
      } catch (error) {
        console.error("Error recording answer:", error);
      }
    },
    async handleAnswer(answer) {
      const question = this.questions[this.currentQuestionIndex].question;
      await this.recordAnswer(question, answer);

      if (this.currentQuestionIndex < this.questions.length - 1) {
        this.currentQuestionIndex++;
      } else {
        await this.endAttempt();
        alert("You've completed the trivia! Great job!");
        //this.$router.push("/"); // Redirect to home page for now as a placeholder
      }
    },
    async endAttempt() {
      try {
        const response = await axios.post("http://127.0.0.1:5000/attempt/end", {
          email: this.email,
          attempt_date_time: this.attemptDateTime,
        });
        console.log("Attempt ended:", response.data);
        this.$router.push({
            path: "/results",
            query: {
                email: this.email,
                attempt_date_time: this.attemptDateTime,
            },

        });
      } catch (error) {
        console.error("Error ending attempt:", error);
      }
    },
  },
  async mounted() {
    await this.startAttempt();
    await this.fetchQuestions();
  },
};

  </script>
  
  <style scoped>
  .trivia-page {
    text-align: center;
    padding: 20px;
    font-family: 'Arial', sans-serif;
    color: #333;
  }
  
  .flashcard {
    background: white;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
    margin: 20px auto;
    width: 80%;
    max-width: 400px;
  }
  
  .answer-buttons {
    display: flex;
    justify-content: space-around;
    margin-top: 20px;
  }
  
  .answer-buttons button {
    padding: 10px 20px;
    background-color: #45da40;
    color: white;
    border: none;
    border-radius: 8px;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }
  
  .answer-buttons button:hover {
    background-color: #c3136b;
  }
  </style>
  