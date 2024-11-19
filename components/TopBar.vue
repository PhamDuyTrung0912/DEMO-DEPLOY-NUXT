<template>
  <div class="h-[40px] w-max">
    <UBreadcrumb :items="items" />
  </div>
</template>

<script setup lang="ts">
const items = ref([
  {
    label: "Home",
    icon: "i-lucide-house",
  },
  {
    label: "Components",
    icon: "i-lucide-box",
  },
  {
    label: "Breadcrumb sSEO",
    icon: "i-lucide-link",
  },
]);
</script>

<style lang="scss" scoped></style>
