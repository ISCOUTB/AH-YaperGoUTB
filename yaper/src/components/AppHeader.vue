<template>
  <header class="header">
    <div class="logo">
      <img src="@/assets/LOGO-SECUNDARIO-RGB-1.png" alt="Logo" />
    </div>
    <h1>YaperGo UTB</h1>

    <!-- Menú de Navegación -->
    <nav class="nav-menu">
      <ul>
        <li><a href="#">Inicio</a></li>
        <li><a href="#">Reportar objeto perdido</a></li>
        <li><a href="#">Buscar objetos</a></li>
        <li><a href="#">Historial de reportes</a></li>
        <li><a href="#">Contacto</a></li>
      </ul>
    </nav>
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

/* Estilos para el menú de navegación */
.nav-menu ul {
  display: flex;
  list-style: none;
  gap: 20px;
}

.nav-menu ul li {
  list-style: none;
}

.nav-menu ul li a {
  color: white;
  text-decoration: none;
  font-weight: bold;
}

.nav-menu ul li a:hover {
  text-decoration: underline;
}
</style>
