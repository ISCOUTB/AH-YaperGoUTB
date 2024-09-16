<template>
    <div>
      <h2>Detalles del Objeto</h2>
      <p><strong>Nombre:</strong> {{ object.name }}</p>
      <p><strong>Descripción:</strong> {{ object.description }}</p>
      <p><strong>Fecha:</strong> {{ object.date }}</p>
      <button @click="$emit('goBack')">Volver a la Lista</button>
    </div>
  </template>
  
  <script>
  export default {
    name: 'ObjectDetails',
    props: {
      object: Object
    }
  };
  </script>
  
  <style scoped>
  button {
    margin-top: 20px;
    padding: 10px;
    background-color: #42b983;
    color: white;
    border: none;
    cursor: pointer;
  }
  button:hover {
    background-color: #36a673;
  }
  </style>
  