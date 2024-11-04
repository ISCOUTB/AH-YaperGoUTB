<script setup>
import NavBarLat from '@/components/NavBarLat.vue';
import Calendar from '@/components/Calendar.vue';
</script>

<template>
    <div class="container-fluid text-center m-0 p-0">
      <div class="row m-0 p-0">
        <div class="col-1 m-0 p-0 column-full-height" style="background-color: #0050EF;">
            <NavBarLat></NavBarLat>
        </div>
  
        <div class="col-11 bg-danger m-0 p-0 column-full-height">
          <div class="row m-0 p-0" style="background-color: #2EA1DA;">
            <div class="position-relative">
              <img class="logo top-0 start-50" src="../img/LOGO.png" alt="">
            </div>
          </div>
          <div class="row m-0 p-0 full-height-row">
            <div class="col-8 bg-light full-height">j</div>
            <div class="col-4 full-height" style="background-color: #9de7f8;">
                <Calendar></Calendar>
            </div>
          </div>
        </div>
      </div>
    </div>
  </template>
  
  <style scoped>
  .logo {
    width: 20%;
    padding: 10px;
    height: auto;
  }
  .column-full-height {
    height: 100vh;
    display: flex;
    flex-direction: column;
  }
  .full-height {
    height: 100%;
    display: flex;
    flex-direction: column;
  }
  .full-height-row {
    flex: 1;
    display: flex;
    align-items: stretch;
  }
  </style>
  