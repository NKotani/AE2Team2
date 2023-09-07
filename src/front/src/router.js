import Vue from 'vue';
import Router from 'vue-router';
// eslint-disable-next-line import/no-unresolved,import/extensions
import Hello from './views/Hello';
// eslint-disable-next-line import/no-unresolved,import/extensions
import NotFound from './views/404';
// eslint-disable-next-line import/no-unresolved,import/extensions
import Top from './views/Top';
import Searcher from './views/Searcher.vue';
<<<<<<< HEAD
import RecipeSearcher from './views/RecipeSearcher.vue';
// eslint-disable-next-line import/no-cycle
import store from './store';
=======
>>>>>>> 5c85c38f4c4e1b763a98409a0c67fef39148e9c9


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
      props: true,
    },
    {
      path: '/RecipeSearcher',
      component: RecipeSearcher,
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
