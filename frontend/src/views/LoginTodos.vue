<script>
import { ref } from 'vue'
import axios from 'axios';
import { useValidFormStore } from '@/stores/validFormStore';

export default {
  data() {
    return {
      correo: ref(''),
      contraseña: ref(''),
      validFormStore: useValidFormStore(),

      sessionActive: false,
    };
  },

  methods: {
    sendForm() {
      console.log("API Base URL:", import.meta.env.VITE_API_BASE_URL); // Verifica la URL base
      let url = `${import.meta.env.VITE_API_BASE_URL}/validUser/${this.correo}/${this.contraseña}`;
      // Llamada a la API 
      axios.get(url)
        .then(response => {
          this.sessionActive = response.data;
          console.log("Sessión Activa: ", this.sessionActive);
          this.validFormStore.validarForm(this.correo, this.contraseña, this.sessionActive);

          if (response.data.Valid) {
            this.correo = '';
            this.contraseña = '';
          } 
          else {
            alert('Ususario o Contraseña no válido')
          }
        })
        .catch(error => {
          console.error('Hubo un error:', error);
          alert('Ususario No encontrado en la base de datos')
        });


    },
  },
};

</script>

<template>
  <div style="background-color: #afd3db;" class="text-primary">

    <div class="container p-5 d-flex align-items-center justify-content-center vh-100">
      <div class="row w-100 shadow rounded">
        <!--columna 1 presentación de YapperGO UTB-->
        <div
          class="col-md-6 d-flex flex-column align-items-center justify-content-center bg-primary text-white rounded-start">
          <img class="logo top-0 start-50" src="../img/LOGO.png" alt="">
          <p>¡Encuentra tus Objetos!</p>
        </div>

        <!--columna 2 formulario de login-->
        <div class="col-md-6 d-flex flex-column align-items-center justify-content-center bg-light rounded-end p-4">
          <h2 class="mb-3">Hello Again!</h2>
          <form class="w-100 needs-validation" style="max-width: 400px;">
            <!--ingresar Email-->
            <div class="mb-3">
              <label for="emailInput" class="form-label">Email</label>
              <input type="email" class="form-control" id="emailInput" placeholder="Escribe tu email" required
                v-model="correo" style="border-radius: 50px;">
            </div>

            <!--ingresar contraseña-->
            <div class="mb-3">
              <label for="inputPass" class="form-label">Contraseña</label>
              <input type="password" class="form-control" id="inputPass" placeholder="Escribe tu contraseña" required
                v-model="contraseña" style="border-radius: 50px;">
            </div>
            
            <!--botón de login-->
            <button type="submit" class="btn btn-primary w-100" @click.prevent="sendForm">Login</button>
          </form>
        </div>
      </div>
    </div>

  </div>
</template>

<style scoped>
body {
  background-color: #e0f7fa;
}

.main-container {
  height: 100vh;
  /* Altura fija al tamaño de la pantalla */
  overflow: hidden;
  /* Oculta el desplazamiento */
}

.row {
  max-width: 100%;
  margin: auto;
  height: 600px;
  overflow: hidden;
}

.bg-primary {
  background: linear-gradient(180deg, #2EA1DA, #0050EF);
}

.rounded-start {
  border-top-left-radius: 25px;
  border-bottom-left-radius: 25px;
}

.rounded-end {
  border-top-right-radius: 25px;
  border-bottom-right-radius: 25px;
}

.form-control {
  border-radius: 20px;
}

button {
  border-radius: 20px;
}

.logo {
  width: 70%;
  padding: 10px;
  height: auto;
}
</style>
