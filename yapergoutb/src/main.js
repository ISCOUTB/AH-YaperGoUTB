import { createApp } from 'vue';
import App from './App.vue';
import VCalendar from 'v-calendar'; // Importar VCalendar

const app = createApp(App);

// Use VCalendar globally
app.use(VCalendar, { componentPrefix: 'vc' }); // Puedes personalizar el prefijo si quieres
app.mount('#app');
