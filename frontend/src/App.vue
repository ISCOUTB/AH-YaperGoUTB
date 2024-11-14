<script setup>
//Importaciones
import LoginTodos from './views/LoginTodos.vue';
import AdminView from './views/AdminView.vue';

import { useValidFormStore } from './stores/validFormStore';
import { onMounted, ref, watch } from 'vue';
import { useRouter } from 'vue-router';

//Importamos las variables de estado
const validFormStore = useValidFormStore();
const correo = ref(validFormStore.correo.value);
const contraseña = ref(validFormStore.contraseña.value);
const sessionActive = ref(validFormStore.sessionActive.value);

const router = useRouter();

//Escuchamos las varaibles de estado
watch(() => validFormStore.correo, (newValue) => {
    correo.value = newValue;
});

watch(() => validFormStore.contraseña, (newValue) => {
    contraseña.value = newValue;
});

//Escuchar si la sesión está activa...
watch(() => validFormStore.sessionActive, (newValue) => {
    sessionActive.value = newValue;
    //Cabmiar la vista dependiendo si está activo o inactivo el usuario.
    router.push(newValue ? { name: '.adminview' } : { name: '.login' });
});

onMounted(() => {
    sessionActive.value=false;
    console.log("Sesión: ", sessionActive.value);
    router.push({ name: '.login' });
});

</script>


<template>
    
    <router-view></router-view>
    <!--
        <AdminView v-if="sessionActive"></AdminView>
        <LoginTodos v-else></LoginTodos>
        -->
        
</template>


<style scoped>
.pss {
    color: aqua;
    background-color: rgb(65, 12, 198);

}
</style>
