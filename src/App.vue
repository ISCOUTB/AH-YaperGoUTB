<script setup>
//Importaciones
import LoginTodos from './views/LoginTodos.vue';
//import NavBarLat from './components/NavBarLat.vue';
//import AccountActions from './components/AccountActions.vue';
//import Filtros from './components/Filtros.vue';
//import OtherOptions from './components/OtherOptions.vue';
import AdminView from './views/AdminView.vue';
//import Calendar from './components/Calendar.vue';

import { useValidFormStore } from './stores/validFormStore';
import { ref, watch } from 'vue';

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
</script>


<template>
    <AdminView></AdminView>
    <!--
        <AdminView v-if="sessionActive"></AdminView>
        <LoginTodos v-else></LoginTodos>
    
        <Calendar></Calendar>
    <div class="pss">
            <NavBarLat></NavBarLat>
            <OtherOptions></OtherOptions>
            <Filtros></Filtros>
            <AccountActions></AccountActions>
        </div> -->

</template>


<style scoped>
.pss {
    color: aqua;
    background-color: rgb(65, 12, 198);

}
</style>
