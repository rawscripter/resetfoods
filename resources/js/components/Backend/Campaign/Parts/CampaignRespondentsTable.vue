<template>

    <div class="card">
        <div class="card-header d-flex justify-content-lg-between  align-items-center">
            <h4 class="text-capitalize fw-500 breadcrumb-title">Clicks of {{ url.name }}</h4>

            <div
                class="project-search project-search--height global-shadow mb-lg-0 mb-20  ml-5 rounded">
                <form action="/" class="d-flex align-items-center user-member__form">
                    <span data-feather="search"></span>
                    <input class="form-control mr-sm-2 border-0 box-shadow-none" type="search"
                           placeholder="Search" aria-label="Search">
                </form>
            </div>

            <div
                class=" d-flex flex-wrap justify-content-lg-between justify-content-center align-items-center">
                <div class="mr-3">
                    Status:
                </div>
                <div class="project-tap global-shadow order-lg-1 order-2 ml-xl-0 mr-xl-20 ml-md-20 border ">

                    <ul class="nav px-1" id="ap-tab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="ap-overview-tab" data-toggle="pill"
                               href="#ap-overview" role="tab" aria-controls="ap-overview"
                               aria-selected="true">all
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="timeline-tab" data-toggle="pill" href="#timeline"
                               role="tab"
                               aria-controls="timeline" aria-selected="false">Approved</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="activity-tab" data-toggle="pill" href="#activity"
                               role="tab"
                               aria-controls="activity" aria-selected="false">In Review</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="late-tab" data-toggle="pill" href="#late" role="tab"
                               aria-controls="late" aria-selected="false">Rejected</a>
                        </li>
                    </ul>
                </div>
            </div>


        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table mb-0 table-borderless">
                    <thead>
                    <tr class="userDatatable-header">
                        <th>
                            <div class="d-flex align-items-center">
                                <div class="custom-checkbox  check-all">
                                    <input class="checkbox" type="checkbox" id="check-3">
                                    <label for="check-3">
                                        <span class="checkbox-text userDatatable-title">Name</span>
                                    </label>
                                </div>
                            </div>
                        </th>
                        <th>
                            <span class="userDatatable-title">Device</span>
                        </th>
                        <th>
                            <span class="userDatatable-title">Source</span>
                        </th>
                        <th>
                            <span class="userDatatable-title">Partner</span>
                        </th>
                        <th>
                            <span class="userDatatable-title">Date</span>
                        </th>
                        <th>
                            <span class="userDatatable-title">status</span>
                        </th>
                        <th>

                        </th>

                    </tr>
                    </thead>
                    <tbody>
                    <tr v-for="x in 5" :key="x">
                        <td>
                            <div class="d-flex">
                                <div class="userDatatable__imgWrapper d-flex align-items-center">
                                    <div class="checkbox-group-wrapper">
                                        <div class="checkbox-group d-flex">
                                            <div
                                                class="checkbox-theme-default custom-checkbox checkbox-group__single d-flex">
                                                <input class="checkbox" type="checkbox" id="check-grp-12">
                                                <label for="check-grp-12"></label>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="#" class="profile-image rounded-circle d-block m-0 wh-38"
                                       style="background-image:url('img/tm6.png'); background-size: cover;"></a>
                                </div>
                                <div class="userDatatable-inline-title">
                                    <a href="#" class="text-dark fw-500">
                                        <h6>Kellie Marquot {{ x }}</h6>
                                    </a>
                                    <p class="d-block mb-0">
                                        San Francisco, CA
                                    </p>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="userDatatable-content">
                                Mobile
                                <small class="d-block text-muted ">Iphone, Chrome</small>
                            </div>
                        </td>
                        <td>
                            <div class="userDatatable-content">
                                Facebook
                            </div>
                        </td>
                        <td>
                            <div class="userDatatable-content">
                                CleanBeauty
                            </div>
                        </td>
                        <td>
                            <div class="userDatatable-content">
                                January 20, 2020
                            </div>
                        </td>
                        <td>
                            <div class="userDatatable-content d-inline-block">
                                        <span
                                            class="bg-opacity-success  color-success rounded-pill userDatatable-content-status active">active</span>
                            </div>
                        </td>
                        <td>
                            <ul class="orderDatatable_actions mb-0 d-flex flex-wrap">
                                <li>
                                    <a href="#" class="view">
                                        <span data-feather="eye"></span></a>
                                </li>
                                <li>
                                    <a href="#" class="edit">
                                        <span data-feather="edit"></span></a>
                                </li>
                                <li>
                                    <a href="#" class="remove">
                                        <span data-feather="trash-2"></span></a>
                                </li>
                            </ul>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="d-flex justify-content-end pt-30">

                <nav class="atbd-page ">
                    <ul class="atbd-pagination d-flex">
                        <li class="atbd-pagination__item">
                            <a href="#" class="atbd-pagination__link pagination-control"><span
                                class="la la-angle-left"></span></a>
                            <a href="#" class="atbd-pagination__link"><span class="page-number">1</span></a>
                            <a href="#" class="atbd-pagination__link active"><span class="page-number">2</span></a>
                            <a href="#" class="atbd-pagination__link"><span class="page-number">3</span></a>
                            <a href="#" class="atbd-pagination__link pagination-control"><span
                                class="page-number">...</span></a>
                            <a href="#" class="atbd-pagination__link"><span class="page-number">12</span></a>
                            <a href="#" class="atbd-pagination__link pagination-control"><span
                                class="la la-angle-right"></span></a>
                            <a href="#" class="atbd-pagination__option">
                            </a>
                        </li>
                        <li class="atbd-pagination__item">
                            <div class="paging-option">
                                <select name="page-number" class="page-selection">
                                    <option value="10">10/page</option>
                                    <option value="20">20/page</option>
                                    <option value="40">40/page</option>
                                    <option value="60">60/page</option>
                                </select>
                            </div>
                        </li>
                    </ul>
                </nav>


            </div>
        </div>
    </div>
</template>

<script>
export default {
    name: "CampaignRespondentsTable",
    props:['url']
}
</script>

<style scoped>
.projects-tab-content .nav-item .nav-link {
    padding: 0 15px;
}

.user-member__form, .user-member__form input {
    background-color: #f3f4f6 !important;
}
</style>
