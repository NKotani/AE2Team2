import Vue from 'vue';
import Router from 'vue-router';
// eslint-disable-next-line import/no-unresolved,import/extensions
import Hello from './views/Hello';
// eslint-disable-next-line import/no-unresolved,import/extensions
import NotFound from './views/404';
// eslint-disable-next-line import/no-unresolved,import/extensions
import Top from './views/Top';
import Searcher from './views/Searcher.vue';

Vue.use(Router);

export default new Router({
  mode: 'history',
  routes: [
    {
      path: '/',
      component: Top,
    },
    {
      path: '/searcher',
      component: Searcher,
    },
    {
      path: '/hello',
      component: Hello,
    },
    {
      path: '*',
      component: NotFound,
    },
  ],
});
