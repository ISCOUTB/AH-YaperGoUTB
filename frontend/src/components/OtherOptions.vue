<script setup>
</script>


<template>

    <div class="continer my-3 ms-4 text-start color-text">
        <h3 class="ms-4">Other</h3>

        <div class="btn-group-vertical no-border-bg" aria-label="Vertical button group">

            <button type="button" class="btn btn-primary icono alert-obj">Reportes</button>
            <button type="button" class="btn btn-primary icono unclaimed ">No reclamados</button>
            <button type="button" class="btn btn-primary icono trash">Desechado</button>

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

.alert-obj {
    background-image: url("../components/icons/alert.svg");
}

.unclaimed {
    background-image: url("../components/icons/unclaimed.svg");
}

.trash {
    background-image: url("../components/icons/trash.svg");
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