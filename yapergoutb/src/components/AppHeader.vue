<template>
  <header class="header">
    <div class="logo">
      <img src="@/assets/LOGO-SECUNDARIO-RGB.png" alt="Logo" />
    </div>
      <h1>YaperGo UTB</h1>
  </header>
</template>

<script>
export default {
  name: 'AppHeader',
};
</script>

<style scoped>
.header {
  background-color: #00bfff;
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 10px;
  color: white;
}

.logo img {
  height: 40px;
}
</style>
