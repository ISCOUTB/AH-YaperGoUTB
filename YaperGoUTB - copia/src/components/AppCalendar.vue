import VueCal from 'vue-cal';
import 'vue-cal/dist/vuecal.css';
<template>
    <div class="calendar-container">
      <vue-cal :events="events" style="height: 300px; width: 100%;" />
    </div>
  </template>
  
  <script>
  import VueCal from 'vue-cal';
  import 'vue-cal/dist/vuecal.css'; // Estilos del calendario
  export default {
  data() {
    return {
      events: [
        { start: new Date(), title: 'Evento 1' },
        { start: new Date(), title: 'Evento 2' }
      ]
    };
  }
};

  </script>
  
  <style scoped>
  .calendar-container {
    position: absolute;
    right: 0;
    top: 0;
    width: 300px;
    padding: 1rem;
  }
  </style>
  