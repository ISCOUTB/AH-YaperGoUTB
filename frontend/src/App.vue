<script setup>
//Importaciones
import LoginTodos from './views/LoginTodos.vue';
import AdminView from './views/AdminView.vue';

import { useValidFormStore } from './stores/validFormStore';
import { onMounted, ref, watch } from 'vue';

//Importamos las variables de estado
const validFormStore = useValidFormStore();
const correo = ref(validFormStore.correo.value);
const contraseña = ref(validFormStore.contraseña.value);
const sessionActive = ref(validFormStore.sessionActive.value);

//Escuchamos las varaibles de estado
watch(() => validFormStore.correo, (newValue) => {
    correo.value = newValue;
});

watch(() => validFormStore.contraseña, (newValue) => {
    contraseña.value = newValue;
});

watch(() => validFormStore.sessionActive, (newValue) => {
    sessionActive.value = newValue;
});

onMounted(() => {
    sessionActive.value=false;
    console.log("Sesión: ", sessionActive.value);
});

</script>


<template>

    <AdminView v-if="sessionActive"></AdminView>
    <LoginTodos v-else></LoginTodos>

</template>


<style scoped>
.pss {
    color: aqua;
    background-color: rgb(65, 12, 198);

}
</style>
