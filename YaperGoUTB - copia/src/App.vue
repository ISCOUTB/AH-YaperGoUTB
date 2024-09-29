<template>
  <div id="app">
    <AppHeader />
    <div class="content">
      <AppMainContent />
      <AppCalendar />
    </div>
  </div>
</template>

<script>
import AppHeader from './components/AppHeader.vue';
import AppMainContent from './components/AppMainContent.vue';
import AppCalendar from './components/AppCalendar.vue';

export default {
  components: {
    AppHeader,
    AppMainContent,
    AppCalendar
  }
};
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  margin: 0;
  padding: 0;
}

.content {
  display: flex;
  justify-content: space-between;
  padding: 2rem;
}

.calendar-container {
  position: fixed;
  right: 0;
  top: 0;
  margin: 1rem;
}
</style>
