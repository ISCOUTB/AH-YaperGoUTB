<!-- src/components/MainContent.vue -->
<script>
import Psp from '@/assets/Psp-1000.jpg';
import audifonos from '@/assets/audifonos.jpg';

export default {
  data() {
    return {
      items: [
        { id: 1, name: 'Psp', description: 'Consola portatil de videojuegos', image: Psp },
        { id: 2, name: 'audifonos', description: 'Audifonos inalambricos', image: audifonos }
      ]
    };
  }
};
</script>

<template>
    <div class="main-content">
      <div v-for="item in items" :key="item.id" class="photo-card">
        <img :src="item.image" :alt="item.name" class="photo">
        <h3>{{ item.name }}</h3>
        <p>{{ item.description }}</p>
      </div>
    </div>
  </template>
  <style scoped>
  .main-content {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    padding: 2rem;
  }
  
  .photo-card {
    border: 1px solid #ccc;
    border-radius: 8px;
    margin: 1rem;
    padding: 1rem;
    max-width: 200px;
    text-align: center;
  }
  
  .photo {
    width: 100%;
    height: auto;
    border-radius: 8px;
  }
  </style>
  