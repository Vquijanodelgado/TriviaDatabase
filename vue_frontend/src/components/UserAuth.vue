<template>
    <div class="auth-page">
      <h1>Welcome to Trivia Jungle!</h1>
      <p>Sign up or log in to answer fun trivia questions!</p>
  
      <!-- Buttons to open modal dialogs for each -->
      <div class="button-group">
        <button class="auth-button" @click="showRegisterModal = true">Register</button>
        <button class="auth-button" @click="showLoginModal = true">Login</button>
      </div>
  
      <!-- Register Modal -->
      <div v-if="showRegisterModal" class="modal-overlay">
        <div class="modal">
          <h2 class="modal-title">Register</h2>
          <form @submit.prevent="registerUser">
            <input v-model="registerData.email" placeholder="Email" required />
            <input v-model="registerData.username" placeholder="Username" required />
            <input v-model="registerData.password" type="password" placeholder="Password" required />
            <div class="modal-buttons">
              <button class="submit-button" type="submit">Register</button>
              <button class="close-button" @click="showRegisterModal = false" type="button">Close</button>
            </div>
          </form>
        </div>
      </div>
  
      <!-- Login Modal -->
      <div v-if="showLoginModal" class="modal-overlay">
        <div class="modal">
          <h2 class="modal-title">Login</h2>
          <form @submit.prevent="loginUser">
            <input v-model="loginData.email" placeholder="Email" required />
            <input v-model="loginData.password" type="password" placeholder="Password" required />
            <div class="modal-buttons">
              <button class="submit-button" type="submit">Login</button>
              <button class="close-button" @click="showLoginModal = false" type="button">Close</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </template>
  
  <script>
  import axios from "axios";
  
  export default {
    data() {
      return {
        showRegisterModal: false,
        showLoginModal: false,
        registerData: {
          email: "",
          username: "",
          password: "",
        },
        loginData: {
          email: "",
          password: "",
        },
      };
    },
    methods: {
      async registerUser() {
        try {
          const response = await axios.post(
            "http://127.0.0.1:5000/user/register",
            this.registerData
          );
          alert(response.data.message);
          this.showRegisterModal = false; // Close modal on success
          this.$router.push({ path: "/trivia", query: { email: this.registerData.email } });
        } catch (error) {
          const errorMessage = error.response
            ? error.response.data.error
            : "Unable to connect to server";
          alert(errorMessage || "Registration failed");
        }
      },
      async loginUser() {
        try {
          const response = await axios.post(
            "http://127.0.0.1:5000/user/login",
            this.loginData
          );
          alert(response.data.message);
          this.showLoginModal = false; // Close modal on success
          this.$router.push({ path: "/trivia", query: { email: this.loginData.email } });
        } catch (error) {
          const errorMessage = error.response
            ? error.response.data.error
            : "Unable to connect to server";
          alert(errorMessage || "Login failed");
        }
      },
    },
  };
  </script>
  
  <style scoped>
  /* Auth Page Styling */
  .auth-page {
    text-align: center;
    padding: 20px;
    font-family: 'Arial', sans-serif;
    color: #333;
  }
  
  .auth-page h1 {
    font-size: 36px;
    color: #58cc02; /* Trivia Time green */
  }
  
  .auth-page p {
    font-size: 18px;
    margin: 10px 0 30px;
    color: #666;
  }
  
  /* Button Group */
  .button-group {
    display: flex;
    justify-content: center;
    gap: 20px;
  }
  
  .auth-button {
    background-color: #45da40;
    color: white;
    border: none;
    border-radius: 8px;
    padding: 10px 20px;
    font-size: 18px;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }
  
  .auth-button:hover {
    background-color: #c3136b;
  }
  
  /* Modal Overlay */
  .modal-overlay {
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-color: rgba(0, 0, 0, 0.7);
    display: flex;
    justify-content: center;
    align-items: center;
    z-index: 1000;
  }
  
  /* Modal Box */
  .modal {
    background: white;
    padding: 30px;
    border-radius: 15px;
    width: 400px;
    text-align: center;
    box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.2);
    display: flex;
    flex-direction: column;
    gap: 20px;
    position: relative;
  }
  
  .modal-title {
    font-size: 24px;
    padding: 20px;
    font-weight: bold;
    color: #333;
  }
  
  /* Input Styling */
  input {
    width: 100%;
    padding: 12px;
    border-radius: 8px;
    border: 1px solid #ccc;
    font-size: 16px;
    box-sizing: border-box;
  }
  
  /* Modal Buttons */
  .modal-buttons {
    display: flex;
    padding: 45px;
    justify-content: space-around;
    gap: 15px;
  }
  
  .submit-button {
    background-color: #58cc02;
    color: white;
    border: none;
    padding: 10px 20px;
    font-size: 16px;
    border-radius: 8px;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }
  
  .submit-button:hover {
    background-color: #45a001;
  }
  
  .close-button {
    background-color: #ccc;
    color: #333;
    border: none;
    padding: 10px 20px;
    font-size: 16px;
    border-radius: 8px;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }
  
  .close-button:hover {
    background-color: #bbb;
  }
  </style>
  