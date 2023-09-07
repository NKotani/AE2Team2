import Vue from 'vue';
import Router from 'vue-router';
// eslint-disable-next-line import/no-unresolved,import/extensions
import Hello from './views/Hello';
// eslint-disable-next-line import/no-unresolved,import/extensions
import NotFound from './views/404';

import Searcher from './views/Searcher';

import RecipeSearcher from './views/RecipeSearcher';

Vue.use(Router);

export default new Router({
  mode: 'history',
  routes: [
    {
      path: '/',
      component: RecipeSearcher,
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
