import { createRouter, createWebHistory } from "vue-router";
import UserAuth from "./components/UserAuth.vue";
import TriviaPage from "./components/TriviaPage.vue";
import ResultsPage from "./components/ResultsPage.vue";

const routes = [
  { path: "/", component: UserAuth },
  { path: "/trivia", component: TriviaPage },
  { path: "/results", component: ResultsPage },
];

const router = createRouter({
  history: createWebHistory(),
  routes,
});

export default router;
