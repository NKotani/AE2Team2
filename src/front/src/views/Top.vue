<template>
  <v-main>
    <h1>検索画面</h1>
    <v-btn @click="to_result()">検索結果へ（仮）</v-btn>
  </v-main>
</template>

<script>
export default {
  data: () => ({}),
  computed: {},
  methods: {
    to_result() {
      this.$router.push('/searcher');
    },
  },
};
</script>

<style scoped>
</style>
