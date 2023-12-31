import Vue from 'vue';
import Vuex from 'vuex';

// eslint-disable-next-line import/no-cycle
import auth from './auth';
import error from './error';
import todo from './todo';
import searcher from './searcher';
import loading from './loading';

Vue.use(Vuex);

export default new Vuex.Store({
  modules: {
    auth,
    error,
    todo,
    searcher,
    loading,
  },
  state: {
    responseData: null, // or some initial value
    fromSearchPage: false
  },
  mutations: {
    setResponseData(state, data) {
      state.responseData = data;
    },
    setFromSearchPage(state, value) {
      state.fromSearchPage = value;
    }
  }
});