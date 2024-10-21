<template>
  <div class="login-container">
    <div class="left-panel">
      <h1>YaperGO</h1>
      <p>¡Encuentra tus Objetos!</p>
    </div>
    <div class="right-panel">
      <!-- Título dependiendo si es login o sign up -->
      <h2>{{ isSignUp ? 'Create Account' : 'Hello Again!' }}</h2>
      <h3>{{ isSignUp ? 'Sign Up to Get Started' : 'Welcome Back' }}</h3>

      <!-- Formulario de login/sign up -->
      <form @submit.prevent="isSignUp ? register() : login()">
        <!-- Campo opcional de username para sign up -->
        <div class="input-group" v-if="isSignUp">
          <label for="username">Username</label>
          <input type="text" id="username" v-model="username" required />
        </div>
        
        <!-- Campo de email -->
        <div class="input-group">
          <label for="email">Email</label>
          <input type="email" id="email" v-model="email" required />
        </div>

        <!-- Campo de password -->
        <div class="input-group">
          <label for="password">Password</label>
          <input type="password" id="password" v-model="password" required />
        </div>

        <!-- Enlace para recuperar contraseña solo visible en login -->
        <a href="#" class="forgot-password" v-if="!isSignUp">Forgot Password?</a>

        <!-- Botón para enviar el formulario -->
        <button type="submit">{{ isSignUp ? 'Sign Up' : 'Login' }}</button>
      </form>

      <!-- Enlace para alternar entre login y sign up -->
      <p>{{ isSignUp ? 'Already have an account?' : "Don't have an account?" }} 
         <a href="#" @click="toggleSignUp">{{ isSignUp ? 'Login Here!' : 'Register Now!' }}</a>
      </p>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      email: '',
      password: '',
      username: '',
      isSignUp: false,  // Mantener login como predeterminado
    };
  },
  methods: {
    // Función de login
    login() {
      console.log('Login with:', this.email, this.password);
    },
    // Función de registro
    register() {
      console.log('Register with:', this.username, this.email, this.password);
    },
    // Alternar entre login y sign up
    toggleSignUp() {
      this.isSignUp = !this.isSignUp;
    }
  }
};
</script>

<style scoped>
/* General Styles */
.login-container {
  display: flex;
  height: 100vh;
  background-color: #e0f7fa;
}

/* Left Panel */
.left-panel {
  background: linear-gradient(135deg, #007bff, #00bfff);
  color: white;
  flex: 1;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  padding: 20px;
}

.left-panel h1 {
  font-size: 3rem;
}

.left-panel p {
  font-size: 1.2rem;
}

/* Right Panel */
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
  width: 100%;
}

.input-group label {
  display: block;
  margin-bottom: 5px;
  font-size: 1rem;
}

.input-group input {
  width: 100%;
  padding: 10px;
  border: 2px solid #007bff;
  border-radius: 5px;
  box-sizing: border-box;
}

.forgot-password {
  color: #007bff;
  text-decoration: none;
  margin-bottom: 15px;
}

button {
  width: 100%;
  padding: 12px;
  background-color: #007bff;
  color: white;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  font-size: 1.1rem;
}

/* Responsive Styles */
@media (max-width: 768px) {
  .login-container {
    flex-direction: column;
  }
  
  .left-panel {
    width: 100%;
    height: 30vh;
    background: linear-gradient(135deg, #007bff, #00bfff);
  }

  .right-panel {
    width: 100%;
    height: 70vh;
    padding: 20px;
    background-color: #ffffff;
    display: flex;
    flex-direction: column;
    justify-content: center;
  }

  button {
    width: 100%;
  }
}

@media (min-width: 769px) {
  .login-container {
    flex-direction: row;
  }

  .left-panel {
    background: linear-gradient(135deg, #007bff, #00bfff);
    width: 50%;
  }

  .right-panel {
    width: 50%;
  }
}
</style>
