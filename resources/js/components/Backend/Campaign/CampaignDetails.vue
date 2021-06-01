<template>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">

                <div class="breadcrumb-main application-ui mb-30">
                    <div class="breadcrumb-action d-flex">
                        <div class="d-flex align-items-center user-member__title mr-sm-25 mr-0">
                            <h4 class="text-capitalize fw-500 breadcrumb-title">Campaign name</h4>
                        </div>
                        <div class="action-btn mr-10 my-sm-0">
                            <a href="#" class="btn radius-md btn-primary bg-primary fs-12 fw-500"><span
                                data-feather="plus"></span>
                                Preview</a>
                        </div>
                        <div class="btn-group-toggle">
                            <router-link :to="{name:'campaign-stats',params:{slug:'demo-campaign-1'}}" tag="div"
                                         class="btn btn-light ">
                                <span data-feather="check"></span>
                                Analytics
                            </router-link>
                        </div>

                    </div>
                    <div class="d-flex text-capitalize">
                        <div class="dropdown action-btn mr-2">
                            <button class="btn btn-sm btn-default btn-white dropdown-toggle" type="button"
                                    id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">
                                <i class="la la-download"></i> Export
                            </button>
                            <div class="dropdown-menu" aria-labelledby="dropdownMenu2">
                                <a href="#" class="dropdown-item">
                                    <i class="la la-print"></i> Respondents</a>
                                <a href="#" class="dropdown-item">
                                    <i class="la la-file-pdf"></i> Sales Report</a>
                                <a href="#" class="dropdown-item">
                                    <i class="la la-file-text"></i> Campaign Report</a>
                                <a href="#" class="dropdown-item">
                                    <i class="la la-file-excel"></i> Traffic Report</a>
                            </div>
                        </div>
                        <div class="dropdown action-btn mr-2">
                            <button class="btn btn-sm btn-default btn-white dropdown-toggle" type="button"
                                    id="dropdownMenu3" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">
                                <i class="la la-share"></i> Share
                            </button>
                            <div class="dropdown-menu" aria-labelledby="dropdownMenu3">
                                <span class="dropdown-item">View all orders</span>
                                <div class="dropdown-divider"></div>
                                <a href="" class="dropdown-item">
                                    <i class="la la-facebook"></i> Facebook</a>
                                <a href="" class="dropdown-item">
                                    <i class="la la-twitter"></i> Twitter</a>
                                <a href="" class="dropdown-item">
                                    <i class="la la-google"></i> Google</a>
                                <a href="" class="dropdown-item">
                                    <i class="la la-feed"></i> Feed</a>
                                <a href="" class="dropdown-item">
                                    <i class="la la-instagram"></i> Instagram</a>
                            </div>
                        </div>
                        <button type="button"
                                class="breadcrumb-edit border-0 color-primary content-center bg-white fs-12 fw-500 radius-md">
                            <span data-feather="edit-3"></span>edit
                        </button>
                        <button type="button"
                                class="breadcrumb-remove border-0 color-danger content-center bg-white fs-12 fw-500 ml-10 radius-md">
                            <span data-feather="trash-2"></span>remove
                        </button>
                    </div>
                </div>

            </div>
        </div>
        <!-- Tab Menu End -->
        <div class="projects-tab-content mb-30">
            <div class="row">
                <div class="col-xl-3 col-lg-3 mb-25">
                    <div class="progress-box px-25 pt-25 pb-10 bg-success radius-xl">

                        <div class="d-flex justify-content-between mb-3">
                            <h6 class="text-white fw-500 fs-16 text-capitalize">Campaign Goal</h6>

                            <span class="progress-percentage text-white fw-500 fs-16 text-capitalize">64%</span>

                        </div>
                        <div class="progress-wrap d-flex align-items-center mb-15">
                            <div class="progress progress-height">
                                <div class="progress-bar bg-white" role="progressbar" style="width: 64%;"
                                     aria-valuenow="64" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>

                        </div>

                    </div>
                    <div class="card mt-25">
                        <div class="card-body">
                            <div class="application-task d-flex align-items-center mb-25">

                                <div class="application-task-icon wh-60 bg-opacity-primary content-center">
                                    <img class="svg wh-25 text-primary" src="/img/svg/at.svg" alt="img">
                                </div>
                                <div class="application-task-content">
                                    <h4>47</h4>
                                    <span class="text-light fs-14 mt-1 text-capitalize">total Question</span>
                                </div>

                            </div>
                            <div class="application-task d-flex align-items-center mb-25">

                                <div class="application-task-icon wh-60 bg-opacity-secondary content-center">
                                    <img class="svg wh-25 text-secondary" src="/img/svg/at2.svg" alt="img">
                                </div>
                                <div class="application-task-content">
                                    <h4>34</h4>
                                    <span class="text-light fs-14 mt-1 text-capitalize">Online Visitors</span>
                                </div>

                            </div>
                            <div class="application-task d-flex align-items-center mb-25">

                                <div class="application-task-icon wh-60 bg-opacity-success content-center">
                                    <img class="svg wh-25 text-success" src="/img/svg/at4.svg" alt="img">
                                </div>
                                <div class="application-task-content">
                                    <h4>100</h4>
                                    <span class="text-light fs-14 mt-1 text-capitalize">Offers</span>
                                </div>

                            </div>
                            <div class="application-task d-flex align-items-center">

                                <div class="application-task-icon wh-60 bg-opacity-warning content-center">
                                    <img class="svg wh-25 text-warning" src="/img/svg/at3.svg" alt="img">
                                </div>
                                <div class="application-task-content">
                                    <h4>250</h4>
                                    <span class="text-light fs-14 mt-1 text-capitalize">hours Live</span>
                                </div>

                            </div>
                        </div>
                    </div>
                    <!-- ends: .card -->
                </div>
                <!-- ends: col-->
                <div class="col-xl-6 col-lg-6 mb-25">

                    <div class="card broder-0">
                        <div class="card-header mt-2">
                            <div>
                                <h6>Respondent Performance</h6>
                                <div class="btn-group mt-2 mb-2">
                                    <button class="btn btn-primary btn-sm text-sm"><span>Respondents</span></button>
                                    <button class="btn btn-light btn-sm text-sm"><span>Sales</span></button>
                                    <button class="btn btn-light btn-sm text-sm"><span>Traffic</span></button>
                                    <button class="btn btn-light btn-sm text-sm"><span>Year</span></button>
                                </div>
                            </div>
                            <div class="card-extra">
                                <ul class="perfomence-tab-links card-tab-links mr-3 nav-tabs nav">
                                    <li>
                                        <a href="#w_perfomence-week" data-toggle="tab" id="w_perfomence-week-tab"
                                           role="tab" area-controls="w_perfomence" aria-selected="false">Week</a>
                                    </li>
                                    <li>
                                        <a href="#w_perfomence-month" data-toggle="tab" id="w_perfomence-month-tab"
                                           role="tab" area-controls="w_perfomence" aria-selected="false">Month</a>
                                    </li>
                                    <li>
                                        <a class="active" href="#w_perfomence-year" data-toggle="tab"
                                           id="w_perfomence-year-tab" role="tab" area-controls="w_perfomence"
                                           aria-selected="true">Year</a>
                                    </li>
                                </ul>
                                <div class="dropdown dropleft">
                                    <a href="#" role="button" id="performance" data-toggle="dropdown"
                                       aria-haspopup="true" aria-expanded="false">
                                        <span data-feather="more-horizontal"></span>
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="performance">
                                        <a class="dropdown-item" href="#">Action</a>
                                        <a class="dropdown-item" href="#">Another action</a>
                                        <a class="dropdown-item" href="#">Something else here</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- ends: .card-header -->
                        <div class="card-body pt-0">
                            <div class="tab-content perfomence-tab-wrap">
                                <div class="tab-pane fade" id="w_perfomence-week" role="tabpanel"
                                     aria-labelledby="w_perfomence-week">
                                    <div class="performance-stats nav-tabs nav">
                                        <a href="#w_ps_user" data-toggle="tab" id="w_ps_user-tab" role="tab"
                                           area-controls="w_ps_user" aria-selected="false">
                                            <div class="performance-stats__up">
                                                <span>Respondents</span>
                                                <strong>76.2k <sub>
                                                    <i class="la la-arrow-up"></i> 25%</sub>
                                                </strong>
                                            </div>
                                        </a>

                                        <a href="#w_ps_session" data-toggle="tab" id="w_ps_session-tab" role="tab"
                                           area-controls="w_ps_session" aria-selected="false">
                                            <div class="performance-stats__up">
                                                <span>Sessions / Visitors</span>
                                                <strong>87.6k <sub>
                                                    <i class="la la-arrow-up"></i> 46%</sub>
                                                </strong>
                                            </div>
                                        </a>

                                        <a href="#w_ps_bRate" class="active" data-toggle="tab" id="w_ps_bRate-tab"
                                           role="tab" area-controls="w_ps_bRate" aria-selected="true">
                                            <div class="performance-stats__down">
                                                <span>Bounce Rate</span>
                                                <strong>45% <sub>
                                                    <i class="la la-arrow-down"></i> 12%</sub>
                                                </strong>
                                            </div>
                                        </a>

                                        <a href="#w_ps_sDuration" data-toggle="tab" id="w_ps_sDuration-tab"
                                           role="tab" area-controls="w_ps_sDuration" aria-selected="false">
                                            <div class="performance-stats__up">
                                                <span>Respondent Value</span>
                                                <strong>1585 <sub>
                                                    <i class="la la-arrow-up"></i> 33%</sub>
                                                </strong>
                                            </div>
                                        </a>
                                    </div>
                                    <!-- ends: .performance-stats -->

                                    <div class="wp-chart perfomence-chart">
                                        <div class="tab-content">
                                            <div class="tab-pane fade" id="w_ps_user" role="tabpanel"
                                                 aria-labelledby="w_ps_user-tab">
                                                <div class="parentContainer">


                                                    <div>
                                                        <canvas id="wpChart_U_W"></canvas>
                                                    </div>


                                                </div>
                                                <ul class="legend-static">
                                                    <li class="custom-label">
                                                            <span
                                                                style="background-color: rgb(95, 99, 242);"></span>Current
                                                        Period
                                                    </li>
                                                    <li class="custom-label">
                                                        <span style="background-color: #C6D0DC"></span>Previous
                                                        Period
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="tab-pane fade" id="w_ps_session" role="tabpanel"
                                                 aria-labelledby="w_ps_session-tab">
                                                <div class="parentContainer">


                                                    <div>
                                                        <canvas id="wpChart_S_W"></canvas>
                                                    </div>


                                                </div>
                                                <ul class="legend-static">
                                                    <li class="custom-label">
                                                            <span
                                                                style="background-color: rgb(95, 99, 242);"></span>Current
                                                        Period
                                                    </li>
                                                    <li class="custom-label">
                                                        <span style="background-color: #C6D0DC"></span>Previous
                                                        Period
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="tab-pane fade active show" id="w_ps_bRate" role="tabpanel"
                                                 aria-labelledby="w_ps_bRate-tab">
                                                <div class="parentContainer">


                                                    <div>
                                                        <canvas id="wpChart_R_W"></canvas>
                                                    </div>


                                                </div>
                                                <ul class="legend-static">
                                                    <li class="custom-label">
                                                            <span
                                                                style="background-color: rgb(95, 99, 242);"></span>Current
                                                        Period
                                                    </li>
                                                    <li class="custom-label">
                                                        <span style="background-color: #C6D0DC"></span>Previous
                                                        Period
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="tab-pane fade" id="w_ps_sDuration" role="tabpanel"
                                                 aria-labelledby="w_ps_user-tab">
                                                <div class="parentContainer">


                                                    <div>
                                                        <canvas id="wpChart_Sd_W"></canvas>
                                                    </div>


                                                </div>
                                                <ul class="legend-static">
                                                    <li class="custom-label">
                                                            <span
                                                                style="background-color: rgb(95, 99, 242);"></span>Current
                                                        Period
                                                    </li>
                                                    <li class="custom-label">
                                                        <span style="background-color: #C6D0DC"></span>Previous
                                                        Period
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="tab-pane fade" id="w_perfomence-month" role="tabpanel"
                                     aria-labelledby="w_perfomence-month">
                                    <div class="performance-stats nav-tabs nav">
                                        <a href="#m_ps_user" data-toggle="tab" id="m_ps_user-tab" role="tab"
                                           area-controls="m_ps_user" aria-selected="false">
                                            <div class="performance-stats__up">
                                                <span>Users</span>
                                                <strong>76.2k <sub>
                                                    <i class="la la-arrow-up"></i> 25%</sub>
                                                </strong>
                                            </div>
                                        </a>

                                        <a href="#m_ps_session" data-toggle="tab" id="m_ps_session-tab" role="tab"
                                           area-controls="m_ps_session" aria-selected="false">
                                            <div class="performance-stats__up">
                                                <span>Sessions</span>
                                                <strong>87.6k <sub>
                                                    <i class="la la-arrow-up"></i> 46%</sub>
                                                </strong>
                                            </div>
                                        </a>

                                        <a href="#m_ps_bRate" class="active" data-toggle="tab" id="m_ps_bRate-tab"
                                           role="tab" area-controls="m_ps_bRate" aria-selected="true">
                                            <div class="performance-stats__down">
                                                <span>Bounce Rate</span>
                                                <strong>45% <sub>
                                                    <i class="la la-arrow-down"></i> 12%</sub>
                                                </strong>
                                            </div>
                                        </a>

                                        <a href="#m_ps_sDuration" data-toggle="tab" id="m_ps_sDuration-tab"
                                           role="tab" area-controls="m_ps_sDuration" aria-selected="false">
                                            <div class="performance-stats__up">
                                                <span>Respondent Value</span>
                                                <strong>1585<sub>
                                                    <i class="la la-arrow-up"></i> 33%</sub>
                                                </strong>
                                            </div>
                                        </a>
                                    </div>
                                    <!-- ends: .performance-stats -->

                                    <div class="wp-chart perfomence-chart">
                                        <div class="tab-content">
                                            <div class="tab-pane fade" id="m_ps_user" role="tabpanel"
                                                 aria-labelledby="m_ps_user-tab">
                                                <div class="parentContainer">


                                                    <div>
                                                        <canvas id="wpChart_U_M"></canvas>
                                                    </div>


                                                </div>
                                                <ul class="legend-static">
                                                    <li class="custom-label">
                                                            <span
                                                                style="background-color: rgb(95, 99, 242);"></span>Current
                                                        Period
                                                    </li>
                                                    <li class="custom-label">
                                                        <span style="background-color: #C6D0DC"></span>Previous
                                                        Period
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="tab-pane fade" id="m_ps_session" role="tabpanel"
                                                 aria-labelledby="m_ps_session-tab">
                                                <div class="parentContainer">


                                                    <div>
                                                        <canvas id="wpChart_S_M"></canvas>
                                                    </div>


                                                </div>
                                                <ul class="legend-static">
                                                    <li class="custom-label">
                                                            <span
                                                                style="background-color: rgb(95, 99, 242);"></span>Current
                                                        Period
                                                    </li>
                                                    <li class="custom-label">
                                                        <span style="background-color: #C6D0DC"></span>Previous
                                                        Period
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="tab-pane fade active show" id="m_ps_bRate" role="tabpanel"
                                                 aria-labelledby="m_ps_bRate-tab">
                                                <div class="parentContainer">


                                                    <div>
                                                        <canvas id="wpChart_R_M"></canvas>
                                                    </div>


                                                </div>
                                                <ul class="legend-static">
                                                    <li class="custom-label">
                                                            <span
                                                                style="background-color: rgb(95, 99, 242);"></span>Current
                                                        Period
                                                    </li>
                                                    <li class="custom-label">
                                                        <span style="background-color: #C6D0DC"></span>Previous
                                                        Period
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="tab-pane fade" id="m_ps_sDuration" role="tabpanel"
                                                 aria-labelledby="m_ps_user-tab">
                                                <div class="parentContainer">


                                                    <div>
                                                        <canvas id="wpChart_Sd_M"></canvas>
                                                    </div>


                                                </div>
                                                <ul class="legend-static">
                                                    <li class="custom-label">
                                                            <span
                                                                style="background-color: rgb(95, 99, 242);"></span>Current
                                                        Period
                                                    </li>
                                                    <li class="custom-label">
                                                        <span style="background-color: #C6D0DC"></span>Previous
                                                        Period
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="tab-pane fade active show" id="w_perfomence-year" role="tabpanel"
                                     aria-labelledby="w_perfomence-year">
                                    <div class="performance-stats nav-tabs nav">
                                        <a href="#y_ps_user" data-toggle="tab" id="y_ps_user-tab" role="tab"
                                           area-controls="y_ps_user" aria-selected="false">
                                            <div class="performance-stats__up">
                                                <span>Users</span>
                                                <strong>76.2k <sub>
                                                    <i class="la la-arrow-up"></i> 25%</sub>
                                                </strong>
                                            </div>
                                        </a>

                                        <a href="#y_ps_session" data-toggle="tab" id="y_ps_session-tab" role="tab"
                                           area-controls="y_ps_session" aria-selected="false">
                                            <div class="performance-stats__up">
                                                <span>Sessions</span>
                                                <strong>87.6k <sub>
                                                    <i class="la la-arrow-up"></i> 46%</sub>
                                                </strong>
                                            </div>
                                        </a>

                                        <a href="#y_ps_bRate" class="active" data-toggle="tab" id="y_ps_bRate-tab"
                                           role="tab" area-controls="y_ps_bRate" aria-selected="true">
                                            <div class="performance-stats__down">
                                                <span>Bounce Rate</span>
                                                <strong>45% <sub>
                                                    <i class="la la-arrow-down"></i> 12%</sub>
                                                </strong>
                                            </div>
                                        </a>

                                        <a href="#y_ps_sDuration" data-toggle="tab" id="y_ps_sDuration-tab"
                                           role="tab" area-controls="y_ps_sDuration" aria-selected="false">
                                            <div class="performance-stats__up">
                                                <span>Respondent Value</span>
                                                <strong>1585<sub>
                                                    <i class="la la-arrow-up"></i> 33%</sub>
                                                </strong>
                                            </div>
                                        </a>
                                    </div>
                                    <!-- ends: .performance-stats -->

                                    <div class="wp-chart perfomence-chart">
                                        <div class="tab-content">
                                            <div class="tab-pane fade" id="y_ps_user" role="tabpanel"
                                                 aria-labelledby="y_ps_user-tab">
                                                <div class="parentContainer">


                                                    <div>
                                                        <canvas id="wpChart_U_Y"></canvas>
                                                    </div>


                                                </div>
                                                <ul class="legend-static">
                                                    <li class="custom-label">
                                                            <span
                                                                style="background-color: rgb(95, 99, 242);"></span>Current
                                                        Period
                                                    </li>
                                                    <li class="custom-label">
                                                        <span style="background-color: #C6D0DC"></span>Previous
                                                        Period
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="tab-pane fade" id="y_ps_session" role="tabpanel"
                                                 aria-labelledby="y_ps_session-tab">
                                                <div class="parentContainer">


                                                    <div>
                                                        <canvas id="wpChart_S_Y"></canvas>
                                                    </div>


                                                </div>
                                                <ul class="legend-static">
                                                    <li class="custom-label">
                                                            <span
                                                                style="background-color: rgb(95, 99, 242);"></span>Current
                                                        Period
                                                    </li>
                                                    <li class="custom-label">
                                                        <span style="background-color: #C6D0DC"></span>Previous
                                                        Period
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="tab-pane fade active show" id="y_ps_bRate" role="tabpanel"
                                                 aria-labelledby="y_ps_bRate-tab">
                                                <div class="parentContainer">


                                                    <div>
                                                        <canvas id="wpChart_R_Y"></canvas>
                                                    </div>


                                                </div>
                                                <ul class="legend-static">
                                                    <li class="custom-label">
                                                            <span
                                                                style="background-color: rgb(95, 99, 242);"></span>Current
                                                        Period
                                                    </li>
                                                    <li class="custom-label">
                                                        <span style="background-color: #C6D0DC"></span>Previous
                                                        Period
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="tab-pane fade" id="y_ps_sDuration" role="tabpanel"
                                                 aria-labelledby="y_ps_user-tab">
                                                <div class="parentContainer">


                                                    <div>
                                                        <canvas id="wpChart_Sd_Y"></canvas>
                                                    </div>


                                                </div>
                                                <ul class="legend-static">
                                                    <li class="custom-label">
                                                            <span
                                                                style="background-color: rgb(95, 99, 242);"></span>Current
                                                        Period
                                                    </li>
                                                    <li class="custom-label">
                                                        <span style="background-color: #C6D0DC"></span>Previous
                                                        Period
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- ends: .card-body -->
                    </div>
                    <!-- ends: col -->
                </div>
                <!-- ends: .card -->
                <div class="col-xl-3 col-lg-3 col-12 mb-25">
                    <div class="card h-100">
                        <div class="card-header d-flex justify-content-between align-items-center py-10  px-sm-25 px-3">
                            <h6 class="fw-500 ">users</h6>
                            <button type="button"
                                    class="border rounded-lg color-primary fw-500 fs-12 bg-transparent acButton">
                                <span data-feather="user-plus"></span> Invite
                            </button>
                        </div>
                        <div class="card-body">
                            <div class="d-flex align-items-center mb-25">

                                <img src="/img/tm1.png" class="wh-46 mr-15" alt="img">
                                <div>
                                    <p class="fs-14 fw-600 color-dark mb-0">Meyri Carles</p>
                                    <span class=" mt-1 fs-14  color-light ">UI Designer</span>
                                </div>

                            </div>
                            <div class="d-flex align-items-center mb-25">

                                <img src="/img/tm2.png" class="wh-46 mr-15" alt="img">
                                <div>
                                    <p class="fs-14 fw-600 color-dark mb-0">Shreyu Neu</p>
                                    <span class=" mt-1 fs-14  color-light ">Web Developer</span>
                                </div>

                            </div>
                            <div class="d-flex align-items-center mb-25">

                                <img src="/img/tm3.png" class="wh-46 mr-15" alt="img">
                                <div>
                                    <p class="fs-14 fw-600 color-dark mb-0">Tuhin Molla</p>
                                    <span class=" mt-1 fs-14  color-light ">Project Manager</span>
                                </div>

                            </div>
                            <div class="d-flex align-items-center mb-25">

                                <img src="/img/tm4.png" class="wh-46 mr-15" alt="img">
                                <div>
                                    <p class="fs-14 fw-600 color-dark mb-0">Billal Hossain</p>
                                    <span class=" mt-1 fs-14  color-light ">App Developer</span>
                                </div>

                            </div>
                            <div class="d-flex align-items-center">

                                <img src="/img/tm5.png" class="wh-46 mr-15" alt="img">
                                <div>
                                    <p class="fs-14 fw-600 color-dark mb-0">Khalid Hasan</p>
                                    <span class=" mt-1 fs-14  color-light ">App Developer</span>
                                </div>

                            </div>
                        </div>
                    </div>
                    <!-- ends: .card -->
                </div>
                <!-- ends: col -->
                <div class="col-xl-8 col-lg-7 col-12 mb-25">

                    <CampaignRespondentsTable></CampaignRespondentsTable>
                    <!-- ends: .card -->
                </div>
                <!-- ends: col -->
                <div class="col-xl-4 col-lg-5">
                    <div class="card h-100">
                        <div class="card-header py-20  px-sm-25 px-3 ">
                            <h6>files</h6>
                        </div>
                        <div class="card-body">
                            <div class="mb-20">

                                <div class="files-area d-flex justify-content-between align-items-center">
                                    <div class="files-area__left d-flex align-items-center">
                                        <div class="files-area__img">
                                            <img src="/img/zip@2x.png" alt="img" class="wh-42">
                                        </div>
                                        <div class="files-area__title">
                                            <p class="mb-0 fs-14 fw-500 color-dark text-capitalize">
                                                Main-admin-design.zip</p>
                                            <span class="color-light fs-12 d-flex ">7.05 MB</span>
                                            <div class="d-flex text-capitalize">
                                                <a href="#" class="fs-12 fw-500 color-primary ">download</a>
                                                <a href="#" class="fs-12 fw-500 color-primary ml-10"></a>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="files-area__right">
                                        <div class="dropdown dropleft">
                                            <button class="btn-link border-0 bg-transparent p-0" data-toggle="dropdown"
                                                    aria-haspopup="true" aria-expanded="false">
                                                <span data-feather="more-horizontal"></span>
                                            </button>
                                            <div class="dropdown-menu">
                                                <a class="dropdown-item" href="#">view</a>
                                                <a class="dropdown-item" href="#">edit</a>
                                                <a class="dropdown-item" href="#">leave</a>
                                                <a class="dropdown-item" href="#">delete</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="mb-20">

                                <div class="files-area d-flex justify-content-between align-items-center">
                                    <div class="files-area__left d-flex align-items-center">
                                        <div class="files-area__img">
                                            <img src="/img/pdf@2x.png" alt="img" class="wh-42">
                                        </div>
                                        <div class="files-area__title">
                                            <p class="mb-0 fs-14 fw-500 color-dark text-capitalize">
                                                Product-guidelines.pdf</p>
                                            <span class="color-light fs-12 d-flex ">5.07 KB</span>
                                            <div class="d-flex text-capitalize">
                                                <a href="#" class="fs-12 fw-500 color-primary ">view</a>
                                                <a href="#" class="fs-12 fw-500 color-primary ml-10">download</a>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="files-area__right">
                                        <div class="dropdown dropleft">
                                            <button class="btn-link border-0 bg-transparent p-0" data-toggle="dropdown"
                                                    aria-haspopup="true" aria-expanded="false">
                                                <span data-feather="more-horizontal"></span>
                                            </button>
                                            <div class="dropdown-menu">
                                                <a class="dropdown-item" href="#">view</a>
                                                <a class="dropdown-item" href="#">edit</a>
                                                <a class="dropdown-item" href="#">leave</a>
                                                <a class="dropdown-item" href="#">delete</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="mb-20">

                                <div class="files-area d-flex justify-content-between align-items-center">
                                    <div class="files-area__left d-flex align-items-center">
                                        <div class="files-area__img">
                                            <img src="/img/psd@2x.png" alt="img" class="wh-42">
                                        </div>
                                        <div class="files-area__title">
                                            <p class="mb-0 fs-14 fw-500 color-dark text-capitalize">
                                                admin-wireframe.psd</p>
                                            <span class="color-light fs-12 d-flex ">2.05 MB</span>
                                            <div class="d-flex text-capitalize">
                                                <a href="#" class="fs-12 fw-500 color-primary ">download</a>
                                                <a href="#" class="fs-12 fw-500 color-primary ml-10"></a>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="files-area__right">
                                        <div class="dropdown dropleft">
                                            <button class="btn-link border-0 bg-transparent p-0" data-toggle="dropdown"
                                                    aria-haspopup="true" aria-expanded="false">
                                                <span data-feather="more-horizontal"></span>
                                            </button>
                                            <div class="dropdown-menu">
                                                <a class="dropdown-item" href="#">view</a>
                                                <a class="dropdown-item" href="#">edit</a>
                                                <a class="dropdown-item" href="#">leave</a>
                                                <a class="dropdown-item" href="#">delete</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="mb-20">

                                <div class="files-area d-flex justify-content-between align-items-center">
                                    <div class="files-area__left d-flex align-items-center">
                                        <div class="files-area__img">
                                            <img src="/img/jpg@2x.png" alt="img" class="wh-42">
                                        </div>
                                        <div class="files-area__title">
                                            <p class="mb-0 fs-14 fw-500 color-dark text-capitalize">
                                                Wirefram-escreenshots.jpg</p>
                                            <span class="color-light fs-12 d-flex ">522 KB</span>
                                            <div class="d-flex text-capitalize">
                                                <a href="#" class="fs-12 fw-500 color-primary ">view</a>
                                                <a href="#" class="fs-12 fw-500 color-primary ml-10">download</a>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="files-area__right">
                                        <div class="dropdown dropleft">
                                            <button class="btn-link border-0 bg-transparent p-0" data-toggle="dropdown"
                                                    aria-haspopup="true" aria-expanded="false">
                                                <span data-feather="more-horizontal"></span>
                                            </button>
                                            <div class="dropdown-menu">
                                                <a class="dropdown-item" href="#">view</a>
                                                <a class="dropdown-item" href="#">edit</a>
                                                <a class="dropdown-item" href="#">leave</a>
                                                <a class="dropdown-item" href="#">delete</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div>

                                <div class="files-area d-flex justify-content-between align-items-center">
                                    <div class="files-area__left d-flex align-items-center">
                                        <div class="files-area__img">
                                            <img src="/img/png@2x.png" alt="img" class="wh-42">
                                        </div>
                                        <div class="files-area__title">
                                            <p class="mb-0 fs-14 fw-500 color-dark text-capitalize">Logo.png</p>
                                            <span class="color-light fs-12 d-flex ">522 KB</span>
                                            <div class="d-flex text-capitalize">
                                                <a href="#" class="fs-12 fw-500 color-primary ">view</a>
                                                <a href="#" class="fs-12 fw-500 color-primary ml-10">download</a>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="files-area__right">
                                        <div class="dropdown dropleft">
                                            <button class="btn-link border-0 bg-transparent p-0" data-toggle="dropdown"
                                                    aria-haspopup="true" aria-expanded="false">
                                                <span data-feather="more-horizontal"></span>
                                            </button>
                                            <div class="dropdown-menu">
                                                <a class="dropdown-item" href="#">view</a>
                                                <a class="dropdown-item" href="#">edit</a>
                                                <a class="dropdown-item" href="#">leave</a>
                                                <a class="dropdown-item" href="#">delete</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <!-- ends: .card -->
                </div>
                <!-- ends: col -->
            </div>
        </div>
        <!-- ends: project tab -->
    </div>

</template>

<script>
import CampaignRespondentsTable from "./Parts/CampaignRespondentsTable";

export default {
    name: "CampaignDetails",
    components: {CampaignRespondentsTable},
    data() {
        return {
            showTrafficChart: false
        }
    },
    mounted() {
        setTimeout(function (evt) {
            this.jqueryFunction();
        }.bind(this), 10);

    },
    methods: {
        jqueryFunction: function () {
            initjQueryCharts();
            loadSvgIcons();
        },
    },
}
</script>

<style scoped>
.text-sm, .btn span, .btn i {
    font-size: 13px !important;;
}
</style>
