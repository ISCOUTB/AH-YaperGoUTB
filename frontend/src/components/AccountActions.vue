<script>
import { useValidFormStore } from '@/stores/validFormStore';
import { ref, watch } from 'vue';


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
        closeSession() {
              this.sessionActive = false;
              console.log("Sessión Desactivada.");
              this.validFormStore.validarForm('', '', this.sessionActive);
        },
    },
};

</script>


<template>
    <div class="continer my-4 ms-4 text-start color-text">

        <div class="btn-group-vertical no-border-bg" role="group" aria-label="Vertical button group">

            <button type="button" class="btn btn-primary icono help">Help</button>
            <button type="button" class="btn btn-primary icono settings">Settings</button>
            <button type="button" class="btn btn-primary icono logout" @click="closeSession">Log out</button>

        </div>
    </div>

</template>


<style scoped>
.color-text {
    color: white;
}

.icono {
    background-repeat: no-repeat;
    background-position: 10px center;
    /* Posición del ícono */
    padding-left: 35px;
    /* Espacio para que el texto no se sobreponga al ícono */
    background-size: 16px 16px;
    /* Tamaño del Icono */
}

.help {
    background-image: url("../components/icons/help.svg");
}

.settings {
    background-image: url("../components/icons/settings.svg");
}

.logout {
    background-image: url("../components/icons/logout.svg");
}

.no-border-bg .btn {
    border: none;
    border-radius: 0%;
    background-color: transparent;
    color: inherit;
    box-shadow: none;
    text-align: left;
    width: 100%;
    transition: transform 0.1s ease, background-color 0.3s ease;
    /* Pqueña animación*/

}

/* Estilo del botón al ser presionado */
.no-border-bg .btn:active {
    transform: scale(0.95);
    /* Hace que el botón se reduzca un poco */
    background-color: #093AD8;
}
</style>