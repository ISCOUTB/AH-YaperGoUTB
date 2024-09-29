<!-- src/components/Header.vue -->
<template>
    <header class="header">
      <button v-for="button in buttons" :key="button" class="header-button">
        {{ button }}
      </button>
    </header>
  </template>
  
  <script>
  export default {
    data() {
      return {
        buttons: ['Home', 'About', 'Contact'] // Puedes agregar más botones aquí
      };
    }
  };
  </script>
  
  <style scoped>
  .header {
    display: flex;
    justify-content: space-around;
    padding: 1rem;
    background-color: #333;
  }
  
  .header-button {
    background-color: #555;
    color: white;
    border: none;
    padding: 0.5rem 1rem;
    cursor: pointer;
  }
  
  .header-button:hover {
    background-color: #777;
  }
  </style>
  