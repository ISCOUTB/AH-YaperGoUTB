<script setup>
import { ref } from 'vue'
const msg = ref('YapperGO')
</script>

<template>
  <div class="container">
        <div class="row 1">Hello again</div>
        <form class="row g-3 needs-validation">
            <!--columna 1 presentación de yapperGoUTB-->
            <div class="col-6">
                <h1>{{ msg }}</h1>
                <input v-model="msg" />
            </div>
            <!--formulario de login, columna2 -->
            <!--ingresar Email-->
            <div class="col-6">
                <label for="emailInput" class="form-label">Email</label>
                <input type="email" class="form-control" id="emailInput" placeholder="Escribe tu email" required>
            <!--ingresar contraseña-->
            
                <label for="inputPass" class="form-label">contraseña</label>
                <input type="password" class="form-control" id="inputPass" placeholder="escribe tu contraseña" required>
            
            <!--checkbox-->
            
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" id="terms" required>
                    <label for="terms" class="form-check-label">acepto los terminos</label>
                </div>
                <button type="submit" class="btn btn-primay">Login</button>
            </div>
            
        </form>
  </div>
</template>

<style>

</style>