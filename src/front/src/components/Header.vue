<template>
  <div>
    <!-- <v-app-bar app color="primaryOrange"> -->
      <v-app-bar app color="white">
      <v-app-bar-title>
        <router-link to="/">
            <v-img
              :src="require('../assets/logo.svg')"
              class="mr-auto"
              max-height="45"
              max-width="210"
            />
        </router-link>
      </v-app-bar-title>
      <v-spacer />
      <div class="d-flex align-center">
        <v-btn to="/wishlist">
          <v-img
            :src="require('../assets/shopping.svg')"
            contain
            max-height="30"
            max-width="30"
          />
          買い物リスト
        </v-btn>
      </div>
      <div class="d-flex align-center">
        <!-- logout機能ないのでTopに飛ぶ -->
        <v-btn to="/" text>
          <v-img
            :src="require('../assets/logout.svg')"
            contain
            max-height="30"
            max-width="30"
          />
          ログアウト
        </v-btn>
      </div>
    </v-app-bar>
  </div>
</template>

<script>

export default {
  name: 'Header',
  data() {
    return {
      drawer: false,
    };
  },
  // computed: {
  //   isLogin() {
  //     return this.$store.getters['auth/check'];
  //   },
  // },
  // methods: {
  //   logout() {
  //     this.$store.dispatch('auth/logout');
  //   },
  // },
};
</script>
