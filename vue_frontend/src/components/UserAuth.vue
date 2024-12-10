<template>
    <div>
      <h1>Homepage - user logging in and registering</h1>
      <div>
        <h2>Register</h2>
        <form @submit.prevent="registerUser">
          <input v-model="registerData.email" placeholder="Email" required />
          <input v-model="registerData.username" placeholder="Username" required />
          <input v-model="registerData.password" type="password" placeholder="Password" required />
          <button type="submit">Register</button>
        </form>
      </div>
      <div>
        <h2>Login</h2>
        <form @submit.prevent="loginUser">
          <input v-model="loginData.email" placeholder="Email" required />
          <input v-model="loginData.password" type="password" placeholder="Password" required />
          <button type="submit">Login</button>
        </form>
      </div>
    </div>
  </template>
  
  <script>
  import axios from "axios";
  
  export default {
    data() {
      return {
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
            const response = await axios.post("http://127.0.0.1:5000/user/register", this.registerData);
            alert(response.data.message);
            } catch (error) {
            const errorMessage = error.response ? error.response.data.error : "Unable to connect to server";
            alert(errorMessage || "Registration failed");
            }
        },
        async loginUser() {
            try {
            const response = await axios.post("http://127.0.0.1:5000/user/login", this.loginData);
            alert(response.data.message);
            } catch (error) {
            const errorMessage = error.response ? error.response.data.error : "Unable to connect to server";
            alert(errorMessage || "Login failed");
            }
        },
        }

  };
  </script>
  
<style>

</style>
  