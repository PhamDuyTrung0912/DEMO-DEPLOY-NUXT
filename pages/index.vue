<template>
  <div>
    <h1>Welcome to Nuxt SSR Demo!</h1>
    <p>Server-side rendering in action.</p>
    <p v-if="isClient">Current time: {{ currentTime }}</p>
    <p>API Response: {{ apiResponse }}</p>
  </div>
</template>

<script setup>
import { ref, onMounted } from "vue";
import axios from "axios";
import { useHead } from "@vueuse/head";

const currentTime = ref("");
const apiResponse = ref("");
const isClient = ref(false);

useHead({
  title: "Nuxt SSR Demo - Home",
  meta: [
    { name: "description", content: "This is a Nuxt.js SSR demo page." },
    { name: "keywords", content: "Nuxt, SSR, Vue, SEO" },
    { property: "og:title", content: "Nuxt SSR Demo - Home" },
    { property: "og:description", content: "This is a Nuxt.js SSR demo page." },
    { property: "og:type", content: "website" },
    {
      property: "og:image",
      content: "/assets/img/gadt_vietnam_weblogo.png",
    },
  ],
});

onMounted(async () => {
  isClient.value = true;
  currentTime.value = new Date().toLocaleString();
  try {
    const response = await axios.get(
      "https://api.nationalize.io/?name=nathaniel"
    );
    apiResponse.value = response.data;
  } catch (error) {
    console.error("Error fetching data:", error);
  }
});
</script>
