<template>
  <div>
    <h1>Welcome to Nuxt SSR Demo!</h1>
    <p>Server-side rendering in action.</p>
    <p v-if="isClient">Current time: {{ currentTime }}</p>
    <p>API Response: {{ data }}</p>
    <p>API Response: {{ data }}</p>
  </div>
</template>

<script setup>
import { ref, onMounted } from "vue";
import axios from "axios";
import { useHead } from "@vueuse/head";


// Fetch API data with SSR support
const { data, error } = useAsyncData("apiResponse", async () => {
  const response = await axios.get(
    "https://api.nationalize.io/?name=nathaniel"
  );
  return response.data;
});

const currentTime = ref("");
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


</script>
