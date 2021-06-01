<template>
    <div id="campaign_page">
        <div class="row">
            <div class="col-lg-12">
                <div class="project-progree-breadcrumb">

                    <div class="breadcrumb-main user-member justify-content-sm-between createModal">
                        <div class=" d-flex flex-wrap justify-content-center breadcrumb-main__wrapper">
                            <div class="d-flex align-items-center user-member__title justify-content-center mr-sm-25">
                                <h4 class="text-capitalize fw-500 breadcrumb-title">Your Links</h4>
                                <span class="sub-title ml-sm-25 pl-sm-25">12 active links</span>
                            </div>

                        </div>
                        <div class="action-btn">
                            <router-link :to="{name:'url-create'}" class="btn px-15 btn-primary"
                                         data-toggle="modal" data-target="#new-member">
                                <i class="las la-plus fs-16"></i>create Link
                            </router-link>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="project-top-wrapper project-top-progress d-flex justify-content-between flex-wrap">
                    <div class="project-top-left d-flex flex-wrap justify-content-lg-between justify-content-center">
                        <div class="project-tap global-shadow order-lg-1 order-2 ml-xl-0 mr-xl-20 ml-md-20">
                            <ul class="nav px-1" id="ap-tab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="ap-overview-tab" data-toggle="pill"
                                       href="#ap-overview" role="tab" aria-controls="ap-overview" aria-selected="true">all
                                        links</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="timeline-tab" data-toggle="pill" href="#timeline" role="tab"
                                       aria-controls="timeline" aria-selected="false">Live</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="activity-tab" data-toggle="pill" href="#activity" role="tab"
                                       aria-controls="activity" aria-selected="false">in review</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="late-tab" data-toggle="pill" href="#late" role="tab"
                                       aria-controls="late" aria-selected="false">draft</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="early-tab" data-toggle="pill" href="#early" role="tab"
                                       aria-controls="early" aria-selected="false">closed</a>
                                </li>
                            </ul>
                        </div>
                        <div
                            class="project-search project-search--height global-shadow mb-lg-0 mb-20 order-lg-2 order-1">
                            <form action="/" class="d-flex align-items-center user-member__form">
                                <span data-feather="search"></span>
                                <input class="form-control mr-sm-2 border-0 box-shadow-none" type="search"
                                       placeholder="Search" aria-label="Search">
                            </form>
                        </div>
                    </div>
                    <div class="project-top-right d-flex flex-wrap">
                        <div class="project-category">
                            <div class="d-flex align-items-center">
                                <p class="mb-0 mr-10 fs-14 color-light">sort by:</p>
                                <div class="project-category__select">
                                    <select class="js-example-basic-single js-states form-control" id="event-category">
                                        <option value="all" selected>links category</option>
                                        <option value="JAN">Category 1</option>
                                        <option value="FBR">Category 2</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="project-icon-selected">
                            <div class="listing-social-link pb-lg-0 pb-xs-2">
                                <div class="icon-list-social d-flex">
                                    <a class="icon-list-social__link rounded-circle icon-list-social__style justify-content-center ml-xl-20 mr-20  active"
                                       href="#">
                                        <span data-feather="grid"></span></a>
                                    <a class="icon-list-social__link rounded-circle icon-list-social__style justify-content-center "
                                       href="#">
                                        <span data-feather="list"></span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!-- End: .col-lg-12 -->
        </div>
        <!-- Tab Menu End -->
        <div class="projects-tab-content projects-tab-content--progress">
            <div class="tab-content mt-25" id="ap-tabContent">
                <div class="tab-pane fade show active" id="ap-overview" role="tabpanel"
                     aria-labelledby="ap-overview-tab">
                    <div class="row">
                        <div class="col-xl-4 mb-25 col-md-6">

                            <div class="user-group radius-xl bg-white media-ui media-ui--early pt-30 pb-25">
                                <div class="border-bottom px-30">
                                    <div class="media user-group-media d-flex justify-content-between">
                                        <div
                                            class="media-body d-flex align-items-center flex-wrap text-capitalize my-sm-0 my-n2">
                                            <router-link
                                                :to="{name:'campaign-details',params:{slug:'demo-campaign-1'}}">
                                                <h6 class="mt-0  fw-500 user-group media-ui__title">Demo Link 1</h6>
                                            </router-link>
                                            <span
                                                class="my-sm-0 my-2 media-badge text-uppercase color-white bg-pink">live</span>
                                        </div>
                                        <div class="mt-n15">
                                            <div class="dropdown dropleft">
                                                <button class="btn-link border-0 bg-transparent p-0"
                                                        data-toggle="dropdown" aria-haspopup="true"
                                                        aria-expanded="false">
                                                    <span data-feather="more-horizontal"></span>
                                                </button>
                                                <div class="dropdown-menu">
                                                    <a class="dropdown-item" href="#">preview</a>
                                                    <router-link
                                                        class="dropdown-item"
                                                        :to="{name:'campaign-details',params:{slug:'demo-campaign-1'}}">
                                                        Details
                                                    </router-link>
                                                    <a class="dropdown-item" href="#">edit</a>
                                                    <a class="dropdown-item" href="#">copy</a>
                                                    <a class="dropdown-item" href="#">delete</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="user-group-people mt-15 text-capitalize">
                                        <p>Lorem ipsum dolor amet, consetetur sadipscing elitr sed diam nonumy eirmod
                                            dolor ame.</p>
                                        <div class="user-group-project">
                                            <div class="d-flex align-items-center user-group-progress-top">
                                                <div class="media-ui__start">
                                                    <span class="color-light fs-12">Start Date</span>
                                                    <p class="fs-14 fw-500 color-dark mb-0">26 Dec 2019</p>
                                                </div>
                                                <div class="media-ui__end">
                                                    <span class="color-light fs-12">end date</span>
                                                    <p class="fs-16 fw-500 color-success mb-0">18 Mar 2020</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="user-group-progress-bar">

                                        <div class="progress-wrap d-flex align-items-center mb-0">
                                            <div class="progress">
                                                <div class="progress-bar bg-pink" role="progressbar"
                                                     style="width: 83%;" aria-valuenow="83" aria-valuemin="0"
                                                     aria-valuemax="100"></div>
                                            </div>


                                            <span class="progress-percentage">83%</span>


                                        </div>

                                        <p class="color-light fs-12 mb-20">Respondents: 874 - Limit: 1000</p>
                                    </div>
                                </div>
                                <div class="mt-20 px-30">
                                    <p class="fs-13 color-light mb-10">Campaign owner: Thomas</p>
                                </div>
                            </div>

                        </div>
                        <div class="col-xl-4 mb-25 col-md-6">

                            <div class="user-group radius-xl bg-white media-ui media-ui--early pt-30 pb-25">
                                <div class="border-bottom px-30">
                                    <div class="media user-group-media d-flex justify-content-between">
                                        <div
                                            class="media-body d-flex align-items-center flex-wrap text-capitalize my-sm-0 my-n2">
                                            <router-link
                                                :to="{name:'campaign-details',params:{slug:'demo-campaign-1'}}">
                                                <h6 class="mt-0  fw-500 user-group media-ui__title">Demo Link 1</h6>
                                            </router-link>
                                            <span
                                                class="my-sm-0 my-2 media-badge text-uppercase color-white bg-pink">live</span>
                                        </div>
                                        <div class="mt-n15">
                                            <div class="dropdown dropleft">
                                                <button class="btn-link border-0 bg-transparent p-0"
                                                        data-toggle="dropdown" aria-haspopup="true"
                                                        aria-expanded="false">
                                                    <span data-feather="more-horizontal"></span>
                                                </button>
                                                <div class="dropdown-menu">
                                                    <a class="dropdown-item" href="#">preview</a>
                                                    <router-link
                                                        class="dropdown-item"
                                                        :to="{name:'campaign-details',params:{slug:'demo-campaign-1'}}">
                                                        Details
                                                    </router-link>
                                                    <a class="dropdown-item" href="#">edit</a>
                                                    <a class="dropdown-item" href="#">copy</a>
                                                    <a class="dropdown-item" href="#">delete</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="user-group-people mt-15 text-capitalize">
                                        <p>Lorem ipsum dolor amet, consetetur sadipscing elitr sed diam nonumy eirmod
                                            dolor ame.</p>
                                        <div class="user-group-project">
                                            <div class="d-flex align-items-center user-group-progress-top">
                                                <div class="media-ui__start">
                                                    <span class="color-light fs-12">Start Date</span>
                                                    <p class="fs-14 fw-500 color-dark mb-0">26 Dec 2019</p>
                                                </div>
                                                <div class="media-ui__end">
                                                    <span class="color-light fs-12">end date</span>
                                                    <p class="fs-16 fw-500 color-success mb-0">18 Mar 2020</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="user-group-progress-bar">

                                        <div class="progress-wrap d-flex align-items-center mb-0">
                                            <div class="progress">
                                                <div class="progress-bar bg-pink" role="progressbar"
                                                     style="width: 83%;" aria-valuenow="83" aria-valuemin="0"
                                                     aria-valuemax="100"></div>
                                            </div>


                                            <span class="progress-percentage">83%</span>


                                        </div>

                                        <p class="color-light fs-12 mb-20">Respondents: 874 - Limit: 1000</p>
                                    </div>
                                </div>
                                <div class="mt-20 px-30">
                                    <p class="fs-13 color-light mb-10">Campaign owner: Thomas</p>
                                </div>
                            </div>

                        </div>
                        <div class="col-xl-4 mb-25 col-md-6">

                            <div class="user-group radius-xl bg-white media-ui media-ui--early pt-30 pb-25">
                                <div class="border-bottom px-30">
                                    <div class="media user-group-media d-flex justify-content-between">
                                        <div
                                            class="media-body d-flex align-items-center flex-wrap text-capitalize my-sm-0 my-n2">
                                            <router-link
                                                :to="{name:'campaign-details',params:{slug:'demo-campaign-1'}}">
                                                <h6 class="mt-0  fw-500 user-group media-ui__title">Demo Link 3</h6>
                                            </router-link>
                                            <span
                                                class="my-sm-0 my-2 media-badge text-uppercase color-white bg-warning-light">in review</span>
                                        </div>
                                        <div class="mt-n15">
                                            <div class="dropdown dropleft">
                                                <button class="btn-link border-0 bg-transparent p-0"
                                                        data-toggle="dropdown" aria-haspopup="true"
                                                        aria-expanded="false">
                                                    <span data-feather="more-horizontal"></span>
                                                </button>
                                                <div class="dropdown-menu">
                                                    <a class="dropdown-item" href="#">preview</a>
                                                    <router-link
                                                        class="dropdown-item"
                                                        :to="{name:'campaign-details',params:{slug:'demo-campaign-1'}}">
                                                        Details
                                                    </router-link>
                                                    <a class="dropdown-item" href="#">edit</a>
                                                    <a class="dropdown-item" href="#">copy</a>
                                                    <a class="dropdown-item" href="#">delete</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="user-group-people mt-15 text-capitalize">
                                        <p>Lorem ipsum dolor amet, consetetur sadipscing elitr sed diam nonumy eirmod
                                            dolor ame.</p>
                                        <div class="user-group-project">
                                            <div class="d-flex align-items-center user-group-progress-top">
                                                <div class="media-ui__start">
                                                    <span class="color-light fs-12">Start Date</span>
                                                    <p class="fs-14 fw-500 color-dark mb-0">26 Dec 2019</p>
                                                </div>
                                                <div class="media-ui__end">
                                                    <span class="color-light fs-12">end date</span>
                                                    <p class="fs-16 fw-500 color-success mb-0">18 Mar 2020</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="user-group-progress-bar">

                                        <div class="progress-wrap d-flex align-items-center mb-0">
                                            <div class="progress">
                                                <div class="progress-bar bg-pink" role="progressbar"
                                                     style="width: 83%;" aria-valuenow="83" aria-valuemin="0"
                                                     aria-valuemax="100"></div>
                                            </div>


                                            <span class="progress-percentage">83%</span>


                                        </div>

                                        <p class="color-light fs-12 mb-20">Respondents: 874 - Limit: 1000</p>
                                    </div>
                                </div>
                                <div class="mt-20 px-30">
                                    <p class="fs-13 color-light mb-10">Assigned for Team Name</p>
                                    <ul class="d-flex flex-wrap user-group-people__parent">
                                        <li>
                                            <a href="#"><img class="rounded-circle wh-34 bg-opacity-secondary"
                                                             src="img/tm1.png" alt="author"></a>
                                        </li>
                                        <li>
                                            <a href="#"><img class="rounded-circle wh-34 bg-opacity-secondary"
                                                             src="img/tm2.png" alt="author"></a>
                                        </li>
                                        <li>
                                            <a href="#"><img class="rounded-circle wh-34 bg-opacity-secondary"
                                                             src="img/tm3.png" alt="author"></a>
                                        </li>
                                        <li>
                                            <a href="#"><img class="rounded-circle wh-34 bg-opacity-secondary"
                                                             src="img/tm4.png" alt="author"></a>
                                        </li>
                                        <li>
                                            <a href="#"><img class="rounded-circle wh-34 bg-opacity-secondary"
                                                             src="img/tm5.png" alt="author"></a>
                                        </li>
                                        <li>
                                            <a href="#"><img class="rounded-circle wh-34 bg-opacity-secondary"
                                                             src="img/tm6.png" alt="author"></a>
                                        </li>
                                        <li>
                                            <a href="#"><img class="rounded-circle wh-34 bg-opacity-secondary"
                                                             src="img/tm1.png" alt="author"></a>
                                        </li>
                                        <li>
                                            <a href="#"><img class="rounded-circle wh-34 bg-opacity-secondary"
                                                             src="img/tm2.png" alt="author"></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                        </div>
                        <div class="col-xl-4 mb-25 col-md-6">

                            <div class="user-group radius-xl bg-white media-ui media-ui--early pt-30 pb-25">
                                <div class="border-bottom px-30">
                                    <div class="media user-group-media d-flex justify-content-between">
                                        <div
                                            class="media-body d-flex align-items-center flex-wrap text-capitalize my-sm-0 my-n2">
                                            <router-link
                                                :to="{name:'campaign-details',params:{slug:'demo-campaign-1'}}">
                                                <h6 class="mt-0  fw-500 user-group media-ui__title">Demo Link 4</h6>
                                            </router-link>
                                            <span
                                                class="my-sm-0 my-2 media-badge text-uppercase color-white bg-warning-light">in review</span>
                                        </div>
                                        <div class="mt-n15">
                                            <div class="dropdown dropleft">
                                                <button class="btn-link border-0 bg-transparent p-0"
                                                        data-toggle="dropdown" aria-haspopup="true"
                                                        aria-expanded="false">
                                                    <span data-feather="more-horizontal"></span>
                                                </button>
                                                <div class="dropdown-menu">
                                                    <a class="dropdown-item" href="#">preview</a>
                                                    <router-link
                                                        class="dropdown-item"
                                                        :to="{name:'campaign-details',params:{slug:'demo-campaign-1'}}">
                                                        Details
                                                    </router-link>
                                                    <router-link
                                                        class="dropdown-item"
                                                        :to="{name:'campaign-details',params:{slug:'demo-campaign-1'}}">
                                                        Details
                                                    </router-link>
                                                    <a class="dropdown-item" href="#">edit</a>
                                                    <a class="dropdown-item" href="#">copy</a>
                                                    <a class="dropdown-item" href="#">delete</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="user-group-people mt-15 text-capitalize">
                                        <p>Lorem ipsum dolor amet, consetetur sadipscing elitr sed diam nonumy eirmod
                                            dolor ame.</p>
                                        <div class="user-group-project">
                                            <div class="d-flex align-items-center user-group-progress-top">
                                                <div class="media-ui__start">
                                                    <span class="color-light fs-12">Start Date</span>
                                                    <p class="fs-14 fw-500 color-dark mb-0">26 Dec 2019</p>
                                                </div>
                                                <div class="media-ui__end">
                                                    <span class="color-light fs-12">end date</span>
                                                    <p class="fs-16 fw-500 color-success mb-0">18 Mar 2020</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="user-group-progress-bar">

                                        <div class="progress-wrap d-flex align-items-center mb-0">
                                            <div class="progress">
                                                <div class="progress-bar bg-pink" role="progressbar"
                                                     style="width: 83%;" aria-valuenow="83" aria-valuemin="0"
                                                     aria-valuemax="100"></div>
                                            </div>


                                            <span class="progress-percentage">83%</span>


                                        </div>

                                        <p class="color-light fs-12 mb-20">Respondents: 874 - Limit: 1000</p>
                                    </div>
                                </div>
                                <div class="mt-20 px-30">
                                    <p class="fs-13 color-light mb-10">Assigned for Team Name</p>
                                    <ul class="d-flex flex-wrap user-group-people__parent">
                                        <li>
                                            <a href="#"><img class="rounded-circle wh-34 bg-opacity-secondary"
                                                             src="img/tm1.png" alt="author"></a>
                                        </li>
                                        <li>
                                            <a href="#"><img class="rounded-circle wh-34 bg-opacity-secondary"
                                                             src="img/tm2.png" alt="author"></a>
                                        </li>
                                        <li>
                                            <a href="#"><img class="rounded-circle wh-34 bg-opacity-secondary"
                                                             src="img/tm3.png" alt="author"></a>
                                        </li>
                                        <li>
                                            <a href="#"><img class="rounded-circle wh-34 bg-opacity-secondary"
                                                             src="img/tm4.png" alt="author"></a>
                                        </li>
                                        <li>
                                            <a href="#"><img class="rounded-circle wh-34 bg-opacity-secondary"
                                                             src="img/tm5.png" alt="author"></a>
                                        </li>
                                        <li>
                                            <a href="#"><img class="rounded-circle wh-34 bg-opacity-secondary"
                                                             src="img/tm6.png" alt="author"></a>
                                        </li>
                                        <li>
                                            <a href="#"><img class="rounded-circle wh-34 bg-opacity-secondary"
                                                             src="img/tm1.png" alt="author"></a>
                                        </li>
                                        <li>
                                            <a href="#"><img class="rounded-circle wh-34 bg-opacity-secondary"
                                                             src="img/tm2.png" alt="author"></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                        </div>
                        <div class="col-xl-4 mb-25 col-md-6">

                            <div class="user-group radius-xl bg-white media-ui media-ui--early pt-30 pb-25">
                                <div class="border-bottom px-30">
                                    <div class="media user-group-media d-flex justify-content-between">
                                        <div
                                            class="media-body d-flex align-items-center flex-wrap text-capitalize my-sm-0 my-n2">
                                            <router-link
                                                :to="{name:'campaign-details',params:{slug:'demo-campaign-1'}}">
                                                <h6 class="mt-0  fw-500 user-group media-ui__title">Demo Link 4</h6>
                                            </router-link>
                                            <span
                                                class="my-sm-0 my-2 media-badge text-uppercase color-white bg-pink">live</span>
                                        </div>
                                        <div class="mt-n15">
                                            <div class="dropdown dropleft">
                                                <button class="btn-link border-0 bg-transparent p-0"
                                                        data-toggle="dropdown" aria-haspopup="true"
                                                        aria-expanded="false">
                                                    <span data-feather="more-horizontal"></span>
                                                </button>
                                                <div class="dropdown-menu">
                                                    <a class="dropdown-item" href="#">preview</a>
                                                    <router-link
                                                        class="dropdown-item"
                                                        :to="{name:'campaign-details',params:{slug:'demo-campaign-1'}}">
                                                        Details
                                                    </router-link>
                                                    <a class="dropdown-item" href="#">edit</a>
                                                    <a class="dropdown-item" href="#">copy</a>
                                                    <a class="dropdown-item" href="#">delete</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="user-group-people mt-15 text-capitalize">
                                        <p>Lorem ipsum dolor amet, consetetur sadipscing elitr sed diam nonumy eirmod
                                            dolor ame.</p>
                                        <div class="user-group-project">
                                            <div class="d-flex align-items-center user-group-progress-top">
                                                <div class="media-ui__start">
                                                    <span class="color-light fs-12">Start Date</span>
                                                    <p class="fs-14 fw-500 color-dark mb-0">26 Dec 2019</p>
                                                </div>
                                                <div class="media-ui__end">
                                                    <span class="color-light fs-12">end date</span>
                                                    <p class="fs-16 fw-500 color-success mb-0">18 Mar 2020</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="user-group-progress-bar">

                                        <div class="progress-wrap d-flex align-items-center mb-0">
                                            <div class="progress">
                                                <div class="progress-bar bg-pink" role="progressbar"
                                                     style="width: 83%;" aria-valuenow="83" aria-valuemin="0"
                                                     aria-valuemax="100"></div>
                                            </div>


                                            <span class="progress-percentage">83%</span>


                                        </div>

                                        <p class="color-light fs-12 mb-20">Respondents: 874 - Limit: 1000</p>
                                    </div>
                                </div>
                                <div class="mt-20 px-30">
                                    <p class="fs-13 color-light mb-10">Campaign owner: Thomas</p>
                                </div>
                            </div>

                        </div>

                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="d-flex justify-content-end mt-1 mb-30">

                                <nav class="atbd-page ">
                                    <ul class="atbd-pagination d-flex">
                                        <li class="atbd-pagination__item">
                                            <a href="#" class="atbd-pagination__link pagination-control"><span
                                                class="la la-angle-left"></span></a>
                                            <a href="#" class="atbd-pagination__link"><span class="page-number">1</span></a>
                                            <a href="#" class="atbd-pagination__link active"><span
                                                class="page-number">2</span></a>
                                            <a href="#" class="atbd-pagination__link"><span class="page-number">3</span></a>
                                            <a href="#" class="atbd-pagination__link pagination-control"><span
                                                class="page-number">...</span></a>
                                            <a href="#" class="atbd-pagination__link"><span
                                                class="page-number">12</span></a>
                                            <a href="#" class="atbd-pagination__link pagination-control"><span
                                                class="la la-angle-right"></span></a>
                                            <a href="#" class="atbd-pagination__option">
                                            </a>
                                        </li>
                                        <li class="atbd-pagination__item">
                                            <div class="paging-option">
                                                <select name="page-number" class="page-selection">
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
                </div>
            </div>
        </div><!-- End: .projects-tab-content -->
    </div>
</template>

<script>
export default {
    name: "CampaignIndex",
    mounted() {
        setTimeout(function (evt) {
            this.jqueryFunction();
        }.bind(this), 10);
    },
    methods: {
        jqueryFunction: function () {
            loadSvgIcons();
            // init select 2
            $(".js-example-basic-single").select2({
                minimumResultsForSearch: Infinity,
                placeholder: "Select Coupon",
                dropdownCssClass: "cupon",
                allowClear: true,
            });
        },
    },
}
</script>

<style scoped>

</style>
