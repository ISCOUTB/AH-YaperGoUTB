<template>
  <div>
    <!-- Header -->
    <AppHeader />

    <!-- Contenido Central -->
    <main class="main-content">
      <!-- Calendario de VCalendar -->
      <vc-date-picker v-model="selectedDate" is-expanded></vc-date-picker>
      <p>Fecha seleccionada: {{ selectedDate }}</p>

      <!-- Imágenes con nombre y descripción -->
      <div class="image-gallery">
        <ImageCard
          v-for="item in items"
          :key="item.id"
          :name="item.name"
          :description="item.description"
          :image="item.image"
        />
      </div>
    </main>
  </div>
</template>

<script>
import AppHeader from './components/AppHeader.vue';
import ImageCard from './components/ImageCard.vue';

export default {
  components: {
    AppHeader,
    ImageCard,
  },
  data() {
    return {
      selectedDate: null,
      items: [
        {
          id: 1,
          name: 'Psp',
          description: 'Consola portatil de videojuegos',
          image: require('@/assets/psp-1000.jpg'), // Carga la imagen 1
        },
        {
          id: 2,
          name: 'Audifonos',
          description: 'Audifonos negros inalambricos.',
          image: require('@/assets/audifonos.jpg'), // Carga la imagen 2
        },
      ],
    };
  },
};
</script>

<style scoped>
.main-content {
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 20px;
  padding: 20px;
}

.image-gallery {
  display: flex;
  gap: 20px;
  flex-wrap: wrap;
  justify-content: center;
}
</style>
