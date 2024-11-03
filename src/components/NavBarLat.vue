<script>
//Importaciones
//import AccountActions from './components/AccountActions.vue';
import Filtros from '../components/Filtros.vue';
import AccountActions from '../components/AccountActions.vue';
import OtherOptions from './OtherOptions.vue';

export default {
    components: {
        Filtros,
        AccountActions,
        OtherOptions,
    },

    data() {
        return {
            isActive: false, // Estado para controlar la visibilidad de la barra lateral
        };
    },
    methods: {
        toggleSidebar() {
            this.isActive = !this.isActive; // Alternar el estado
        },
    },
};
</script>

<template>

    <div>
        <button type="button" class="open-btn icono-menu" @click="toggleSidebar"></button>

        <!--
            <button type="button" class="btn btn-primary icono help">Help</button>
            -->

        <div :class="['sidebar', { active: isActive }]">
            <button class="close-btn" @click="toggleSidebar"> </button>
            <OtherOptions></OtherOptions>

            <Filtros></Filtros>
            <div class="footer">
                <hr>
                <AccountActions></AccountActions>
            </div>

            <!--
            <ul class="sidebar-options">
                    <li><a href="#option1">Option 1</a></li>
                    <li><a href="#option2">Option 2</a></li>
                    <li><a href="#option3">Option 3</a></li>
                    <li><a href="#option4">Option 4</a></li>
                </ul>
                -->
        </div>
    </div>
</template>


<style scoped>
.footer {
  position: absolute;
  bottom: 0;
  left: 0;
  width: 100%;
}

.icono-menu {
    background-image: url("../components/icons/NavBarLat.svg");
    background-repeat: no-repeat;
    background-position: 10px center;
    /* Posición del ícono */
    padding-left: 0px;
    /* Espacio para que el texto no se sobreponga al ícono */
    background-size: 30px 30px;
    /* Tamaño del Icono */
}

.open-btn {
    font-size: 18px;
    background-color: #0050EF;
    color: white;
    border: none;
    padding: 20px 25px;
    cursor: pointer;
    position: fixed;
    /*top: 20px;
    left: 20px;*/
    z-index: 1000;
    width: 40;
    height: 40;
    /*transition: transform 0.1s ease, background-color 0.3s ease;*/
}

.open-btn:active {
    transform: scale(0.95);
    background-color: #093AD8;
}

.sidebar {
    position: fixed;
    top: 0;
    left: 0;
    width: 250px;
    height: 100%;
    background-color: #0050EF;
    color: white;
    padding-top: 60px;
    transform: translateX(-100%);
    /* Empieza oculta */
    transition: transform 0.3s ease;
    z-index: 999;
    /* Por encima de otros elementos */
}

.close-btn {
    background-image: url("../components/icons/arrow.svg");
    background-repeat: no-repeat;
    background-position: center center;
    transform: rotate(90deg);
    /* Rota el botón 90 grados */
    position: absolute;
    top: 3px;
    right: 10px;
    background-color: #0050EF;
    color: white;
    border: none;
    font-size: 24px;
    cursor: pointer;
}

.sidebar-options {
    list-style-type: none;
    padding: 0;
}

.sidebar-options li {
    padding: 15px;
    text-align: left;
}

.sidebar-options li a {
    color: white;
    text-decoration: none;
    display: block;
}

.sidebar-options li a:hover {
    background-color: red;
}

.sidebar.active {
    transform: translateX(0);
    /* Muestra la barra lateral */
}
</style>