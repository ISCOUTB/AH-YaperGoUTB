<script setup>
import NavBarLat from '@/components/NavBarLat.vue';
import Calendar from '@/components/Calendar.vue';
import Canal from '@/components/Canal.vue';
</script>

<template>
  <div class="container-fluid text-center m-0 p-0 main-container">
    <div class="row m-0 p-0 h-100">
      <div class="col-auto m-0 p-0 sidebar" style="background-color: #0050EF;">
        <NavBarLat></NavBarLat>
      </div>

      <div class="col bg-danger m-0 p-0">
        <div class="row m-0 p-0" style="background-color: #2EA1DA;">
          <div class="position-relative">
            <img class="logo top-0 start-50" src="../img/LOGO.png" alt="">
          </div>
        </div>

        <div class="row m-0 p-0 h-100">
          <div class="col-8 p-0 bg-light content">
            <Canal></Canal>
          </div>
          <div class="col-4" style="background-color: #9de7f8;">
            <Calendar></Calendar>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<style scoped>
.main-container {
  height: 100vh; /* Altura fija al tamaño de la pantalla */
  overflow: hidden; /* Oculta el desplazamiento */
}

.sidebar, .content {
  height: 100%; /* Asegura que las columnas ocupen toda la altura disponible */
}

.logo {
  width: 20%;
  padding: 10px;
  height: auto;
}

</style>
