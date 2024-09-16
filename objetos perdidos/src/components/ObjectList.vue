<template>
    <div>
      <h2>Lista de Objetos Perdidos</h2>
      <ul>
        <li v-for="object in objects" :key="object.id">
          <strong>{{ object.name }}</strong> - {{ object.description }} - {{ object.date }}
          <button @click="$emit('viewDetails', object)">Ver detalles</button>
        </li>
      </ul>
    </div>
  </template>
  
  <script>
  export default {
    name: 'ObjectList',
    props: {
      objects: Array,
    },
  };
  </script>
  
  <style scoped>
  ul {
    list-style-type: none;
    padding: 0;
  }
  li {
    margin: 10px 0;
    padding: 10px;
    border: 1px solid #ddd;
    display: flex;
    justify-content: space-between;
    align-items: center;
  }
  button {
    background-color: #3498db;
    color: white;
    border: none;
    cursor: pointer;
  }
  button:hover {
    background-color: #2980b9;
  }
  </style>
  