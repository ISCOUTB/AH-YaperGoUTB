<script setup>
import { ref } from 'vue';

//Array de los valores de los Switches
const filtros_marcados = ref([
  true, // Documentos Personales
  true, // Libros\Cuadernos
  true, // Termos\Loncheras
  true, // Bolsos\Carteras\
  true  // Ropa\Calzado\Sombreros
]);

</script>

<template>

  <div class="container my-4 ms-4 color-text">
    <h3>Filtros</h3>

    <div class="form-check form-switch switch-verde">
      <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked"
        v-model="filtros_marcados[0]" />
      <label class="form-check-label" for="flexSwitchCheckChecked">Documentos Personales</label>
    </div>
    <div class="form-check form-switch switch-rojo">
      <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked"
        v-model="filtros_marcados[1]" />
      <label class="form-check-label" for="flexSwitchCheckChecked">Libros\Cuadernos</label>
    </div>
    <div class="form-check form-switch switch-azul">
      <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked"
        v-model="filtros_marcados[2]" />
      <label class="form-check-label" for="flexSwitchCheckChecked">Termos\Loncheras</label>
    </div>
    <div class="form-check form-switch switch-amarillo">
      <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked"
        v-model="filtros_marcados[3]" />
      <label class="form-check-label" for="flexSwitchCheckChecked">Bolsos\Carteras\</label>
    </div>
    <div class="form-check form-switch switch-purpura">
      <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked"
        v-model="filtros_marcados[4]" />
      <label class="form-check-label" for="flexSwitchCheckChecked">Ropa\Calzado\Sombreros</label>
    </div>
  </div>

</template>


<style scoped>
.color-text {
  color: white;
}

/* Base para los switches */
.form-check-input {
  background-color: #ccc;
  border-color: #ccc;
}

/* Estilo general para switches activados */
.form-check-input:checked {
  border-color: inherit;
  background-color: inherit;
}

/* Switch verde */
.switch-verde .form-check-input:checked {
  background-color: #4CAF50;
  border-color: #4CAF50;
}

/* Switch azul */
.switch-azul .form-check-input:checked {
  background-color: #2EA1DA;
  border-color: #2EA1DA;
}

/* Switch rojo */
.switch-rojo .form-check-input:checked {
  background-color: #E83879;
  border-color: #E83879;
}

/* Switch amarillo */
.switch-amarillo .form-check-input:checked {
  background-color: #C2DA2E;
  border-color: #C2DA2E;
}

/* Switch amarillo */
.switch-purpura .form-check-input:checked {
  background-color: #A32EDA;
  border-color: #A32EDA;
}
</style>