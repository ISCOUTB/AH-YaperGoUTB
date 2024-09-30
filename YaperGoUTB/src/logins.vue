<template>
    <div class="login-container">
      <div class="left-panel">
        <h1>YaperGO</h1>
        <p>¡Encuentra tus Objetos!</p>
      </div>
      <div class="right-panel">
        <h2>Hola otra vez!</h2>
        <h3>Welcome Back</h3>
        <form @submit.prevent="login">
          <div class="input-group">
            <label for="email">Email</label>
            <input type="email" id="email" v-model="email" required />
          </div>
          <div class="input-group">
            <label for="password">Password</label>
            <input type="password" id="password" v-model="password" required />
          </div>
          <a href="#" class="forgot-password">Forgot Password?</a>
          <button type="submit">Login</button>
        </form>
        <p>Don't have an account? <a href="#">Register Now!</a></p>
      </div>
    </div>
  </template>
  
  <script>
  export default {
    data() {
      return {
        email: '',
        password: ''
      };
    },
    methods: {
      login() {
        // la lógica de autenticación
        console.log('Email:', this.email);
        console.log('Password:', this.password);
      }
    }
  };
  </script>
  
  <style scoped>
  .login-container {
    display: flex;
    height: 100vh;
  }
  .left-panel {
    background-color: #007bff;
    color: white;
    flex: 1;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
  }
  .right-panel {
    flex: 1;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    padding: 20px;
  }
  .input-group {
    margin-bottom: 15px;
  }
  .input-group label {
    display: block;
    margin-bottom: 5px;
  }
  .input-group input {
    width: 100%;
    padding: 8px;
    box-sizing: border-box;
  }
  .forgot-password {
    display: block;
    margin-bottom: 15px;
    color: #007bff;
    text-decoration: none;
  }
  button {
    padding: 10px 20px;
    background-color: #007bff;
    color: white;
    border: none;
    cursor: pointer;
  }
  </style>