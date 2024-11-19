<!-- layouts/default.vue -->
<template>
  <div class="w-[100vw] h-[100vh] m-0 p-0 flex">
    <Sidebar />
    <div class="content">
      <TopBar />
      <NuxtPage />
    </div>
  </div>
</template>

<script setup>
import Sidebar from "~/components/SideBar.vue";
import TopBar from "~/components/TopBar.vue";

</script>

<style scoped>
.layout {
  display: flex;
}

.content {
  padding: 20px;
  flex-grow: 1;
}
</style>
