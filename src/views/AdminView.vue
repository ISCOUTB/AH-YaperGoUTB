<script setup>
import NavBarLat from '@/components/NavBarLat.vue';
</script>


<template>
    <div class="container-fluid text-center m-0 p-0">
        <div class="row m-0 p-0">
            <div class="col-1 bg-primary m-0 p-0 column-full-height">
                <NavBarLat></NavBarLat>
            </div>

            <div class="col-11 bg-danger m-0 p-0 column-full-height">
                <div class="row bg-success m-0 p-0">.</div>
                <div class="row bg-warning m-0 p-0">
                    <div class="col-8 bg-info-emphasis full-height">.</div>
                    <div class="col-4 bg-warning full-height">.</div>
                </div>
            </div>
        </div>
    </div>
</template>

<style scoped>
.column-full-height {
    height: 100vh;
    display: flex;
  flex-direction: column;
}
.full-height {
    height: 100vh;
    display: flex;
    flex-direction: column;
}
</style>