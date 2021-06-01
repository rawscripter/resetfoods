import Vue from 'vue';
import VueRouter from 'vue-router';
import DashboardIndex from "../components/Backend/Dashboard/DashboardIndex";

import AccountSettings from "../components/Backend/Account/AccountSettings";

Vue.use(VueRouter);


const routes = [
    {path: '/', component: DashboardIndex},
    {path: '/home', component: DashboardIndex},
    {path: '/admin', component: DashboardIndex},
    {path: '/account/settings', component: AccountSettings}

];
const router = new VueRouter({
    routes,
    mode: 'history',
    hashbang: true
});

export default router;
