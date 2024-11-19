<template>
  <nav aria-label="breadcrumb">
    <ol class="breadcrumb">
      <li class="breadcrumb-item" v-for="(crumb, index) in crumbs" :key="index">
        <a v-if="crumb.link" :href="crumb.link">{{ crumb.text }}</a>
        <span v-else>{{ crumb.text }}</span>
      </li>
    </ol>
  </nav>
</template>

<script setup>
import { defineProps } from "vue";

const props = defineProps({
  crumbs: {
    type: Array,
    required: true,
    default: () => [],
  },
});
</script>

<style scoped>
.breadcrumb {
  display: flex;
  list-style: none;
  padding: 0;
}
.breadcrumb-item + .breadcrumb-item::before {
  content: ">";
  padding: 0 0.5rem;
}
</style>
