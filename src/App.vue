<script setup lang="ts">
//Importaciones
import NavBarLat from './components/NavBarLat.vue';
import AccountActions from './components/AccountActions.vue';
import Filtros from './components/Filtros.vue';
import OtherOptions from './components/OtherOptions.vue';
</script>


<template>
    <div class="pss">
        
        <NavBarLat></NavBarLat>
        <!--
            <OtherOptions></OtherOptions>
            <Filtros></Filtros>
            <AccountActions></AccountActions>
            -->
        </div>
</template>


<style scoped>
.pss {
    /*color: aqua;*/
    background-color: rgb(65, 12, 198);
}
</style>
