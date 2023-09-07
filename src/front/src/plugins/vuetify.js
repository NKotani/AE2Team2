import '@fortawesome/fontawesome-free/css/all.css';
import Vue from 'vue';
import Vuetify from 'vuetify/lib';
// import Vuetify, { colors } from 'vuetify/lib';

Vue.use(Vuetify);

export default new Vuetify({
  icons: {
    iconfont: 'fa',
  },
  // テーマカラー設定したかったけど諦めました
  // theme: {
  //   themes: {
  //     light: {
  //       dark: false,
  //       colors: {
  //         primaryOrange: '#FA6946',
  //         secondaryGray: colors.grey.lighten2,
  //       },
  //     },
  //   },
  // },
});
