<template>
    <div class="image-card">
      <img src = "@/assets/audifonos.jpg" :alt="audifonos" />
      <img src = "@/assets/psp-1000.jpg" :alt="Psp" />
      <h2>{{ name }}</h2>
      <p>{{ description }}</p>
    </div>
  </template>
  
  <script>
  export default {
    name: 'ImageCard',
    props: {
      name: String,
      description: String,
      image: String,
    },
  };
  </script>
  
  <style scoped>
  .image-card {
    width: 200px;
    text-align: center;
  }
  
  .image-card img {
    width: 100%;
    height: auto;
    border-radius: 8px;
  }
  </style>