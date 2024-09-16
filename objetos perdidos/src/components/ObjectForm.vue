<template>
    <div>
      <h2>Reportar Objeto Perdido</h2>
      <form @submit.prevent="submitForm">
        <label for="name">Nombre del objeto:</label>
        <input type="text" v-model="name" required />
  
        <label for="description">Descripción:</label>
        <textarea v-model="description" required></textarea>
  
        <label for="date">Fecha:</label>
        <input type="date" v-model="date" required />
  
        <button type="submit">Enviar</button>
      </form>
    </div>
  </template>
  
  <script>
  export default {
    data() {
      return {
        name: '',
        description: '',
        date: ''
      };
    },
    methods: {
      submitForm() {
        const newObject = {
          id: Date.now(),
          name: this.name,
          description: this.description,
          date: this.date
        };
        this.$emit('addObject', newObject);
        this.name = '';
        this.description = '';
        this.date = '';
      }
    }
  };
  </script>
  
  <style scoped>
  form {
    display: flex;
    flex-direction: column;
    max-width: 400px;
    margin: 0 auto;
  }
  label {
    margin-top: 10px;
  }
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
  