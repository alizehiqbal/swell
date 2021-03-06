import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';
import { requestStats, requestWeekStats } from './actions/stats_actions'

document.addEventListener("DOMContentLoaded", () => {
  const root = document.getElementById('root');
  let store;
  if (window.currentUser) {
    const preloadedState = {session: {currentUser: window.currentUser}};
    store = configureStore(preloadedState);
    delete window.currentUser;
  } else {
    store = configureStore();
  }
  window.requestStats = requestStats()
  window.requestWeekStats = requestWeekStats()
  window.getState = store.getState;
  window.dispatch = store.dispatch
  ReactDOM.render(<Root store={ store } />, root);
})
