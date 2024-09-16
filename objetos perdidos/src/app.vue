0<template>
    <div id="app">
      <header>
        <h1>Canal de Objetos Perdidos</h1>
      </header>
      
      <nav>
        <button @click="showList">Ver Objetos Perdidos</button>
        <button @click="showForm">Reportar Objeto Perdido</button>
      </nav>
  
      <main>
        <ObjectList v-if="view === 'list'" :objects="objects" @viewDetails="viewObjectDetails" />
        <ObjectForm v-if="view === 'form'" @addObject="addObject" />
        <ObjectDetails v-if="view === 'details'" :object="selectedObject" @goBack="showList" />
      </main>
    </div>
  </template>
  
  <script>
  import ObjectList from './components/ObjectList.vue';
  import ObjectForm from './components/ObjectForm.vue';
  import ObjectDetails from './components/ObjectDetails.vue';
  
  export default {
    name: 'App',
    components: {
      ObjectList,
      ObjectForm,
      ObjectDetails,
    },
    data() {
      return {
        view: 'list', // list, form, details
        objects: [
          { id: 1, name: 'Cartera', description: 'Cartera marrón con documentos', date: '2024-09-14' },
          { id: 2, name: 'Teléfono', description: 'Teléfono Samsung negro', date: '2024-09-12' }
        ],
        selectedObject: null
      };
    },
    methods: {
      showList() {
        this.view = 'list';
      },
      showForm() {
        this.view = 'form';
      },
      viewObjectDetails(object) {
        this.selectedObject = object;
        this.view = 'details';
      },
      addObject(newObject) {
        this.objects.push(newObject);
        this.showList();
      }
    }
  };
  </script>
  
  <style scoped>
  header {
    text-align: center;
    margin-top: 20px;
  }
  nav {
    display: flex;
    justify-content: center;
    margin-bottom: 20px;
  }
  button {
    margin: 0 10px;
    padding: 10px 20px;
    background-color: #42b983;
    color: white;
    border: none;
    cursor: pointer;
  }
  button:hover {
    background-color: #36a673;
  }
  </style>
  